#pragma once

#include <algorithm>
#include <cstdint>
#include <fstream>
#include <map>
#include <optional>
#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <utility>
#include <vector>

namespace ultrs::nso {

constexpr uint64_t DT_NULL       = 0;
constexpr uint64_t DT_NEEDED     = 1;
constexpr uint64_t DT_PLTRELSZ   = 2;
constexpr uint64_t DT_HASH       = 4;
constexpr uint64_t DT_STRTAB     = 5;
constexpr uint64_t DT_SYMTAB     = 6;
constexpr uint64_t DT_RELA       = 7;
constexpr uint64_t DT_RELASZ     = 8;
constexpr uint64_t DT_STRSZ      = 10;
constexpr uint64_t DT_JMPREL     = 23;
constexpr uint64_t DT_RELRSZ     = 35;
constexpr uint64_t DT_RELR       = 36;
constexpr uint64_t DT_GNU_HASH   = 0x6FFFFEF5ULL;
constexpr uint64_t R_AARCH64_ABS64     = 257;
constexpr uint64_t R_AARCH64_GLOB_DAT  = 1025;
constexpr uint64_t R_AARCH64_JUMP_SLOT = 1026;
constexpr uint64_t R_AARCH64_RELATIVE  = 1027;

constexpr uint64_t SCRATCH_MEM = 0x7300000000ULL;

uint32_t bits(uint32_t w, unsigned lo, unsigned n);
int64_t sext(uint64_t v, unsigned n);
uint64_t ones(unsigned n);
uint64_t ror_val(uint64_t v, unsigned r, unsigned size);
uint64_t replicate_val(uint64_t v, unsigned esize, unsigned size);
bool decode_bit_masks(unsigned N, unsigned imms, unsigned immr, unsigned size, bool immediate,
                       uint64_t& wmask, uint64_t& tmask);

struct ElfSym {
    std::string name;
    uint8_t info = 0;
    uint16_t shndx = 0;
    uint64_t value = 0;
    uint64_t size = 0;
};

struct ElfReloc {
    uint64_t offset = 0;
    uint32_t type = 0;
    uint32_t sym = 0;
    int64_t addend = 0;
};

class NsoFile {
public:
    std::string build_id;
    std::pair<uint32_t, uint32_t> text{0, 0};
    std::pair<uint32_t, uint32_t> rodata{0, 0};
    std::pair<uint32_t, uint32_t> data{0, 0};
    uint32_t bss_size = 0;
    uint64_t size = 0;
    std::vector<uint8_t> image;

    uint32_t dynamic_off = 0, bss_start = 0, bss_end = 0;
    uint32_t eh_start = 0, eh_end = 0, module_obj = 0;
    std::unordered_map<uint64_t, uint64_t> dyn;
    std::vector<std::string> needed;
    std::vector<ElfSym> syms;
    std::vector<ElfReloc> relocs;

    explicit NsoFile(const std::string& path);

    uint32_t u32(size_t off) const;
    int32_t  s32(size_t off) const;
    uint64_t u64(size_t off) const;
    int64_t  s64(size_t off) const;
    std::string cstr(size_t off) const;

private:
    static uint32_t read_u32(const uint8_t* p, size_t off);
    static uint64_t read_u64(const uint8_t* p, size_t off);
    static size_t lz4_decompress(const uint8_t* src, size_t srclen, uint8_t* dst, size_t dstlen);

    uint64_t gnu_hash_count(uint64_t off) const;
    void parse_mod0();
};

std::pair<int64_t, size_t> read_eh_encoded(const NsoFile& n, size_t off, uint8_t enc, int64_t pc_base);
std::vector<uint64_t> eh_frame_functions(const NsoFile& n);

class JumpTableResolver {
public:
    JumpTableResolver(const NsoFile& nso, uint64_t base, const std::vector<uint32_t>& words);

    uint32_t word(uint64_t a) const;
    static bool is_control_flow(uint32_t w);

    std::optional<std::vector<uint64_t>> resolve(uint64_t br_pc, uint64_t entry, uint64_t end,
                                                 std::map<std::string, uint64_t>& stats) const;
    bool computed_target(uint64_t br_pc, uint64_t entry) const;

private:
    const NsoFile& nso_;
    uint64_t base_;
    uint64_t lo_;
    uint64_t hi_;
    const std::vector<uint32_t>& words_;

    std::vector<unsigned> index_regs(uint64_t start, uint64_t at, unsigned idx) const;

    struct MiniCpu {
        uint64_t x[32]{};
        uint64_t sp = SCRATCH_MEM + 0x80000ULL;
        uint64_t nzcv = 0;
    };

    uint64_t mem_read(uint64_t addr, unsigned nbytes) const;
    static bool eval_cond(uint64_t nzcv, unsigned cond);
    bool step_insn(MiniCpu& cpu, uint64_t& pc) const;
    std::vector<uint64_t> find_cfg_path(uint64_t entry, uint64_t end, uint64_t target) const;

    std::optional<std::vector<uint64_t>> emulate_table(
        uint64_t br_pc, uint64_t entry, uint64_t end, uint64_t start,
        const std::vector<unsigned>& idx_regs, unsigned count, uint64_t set_at) const;
    std::optional<std::vector<uint64_t>> jump_table_taken(uint64_t br_pc, uint64_t entry, uint64_t end) const;
    std::optional<std::vector<uint64_t>> jump_table_fallthrough(uint64_t br_pc, uint64_t entry, uint64_t end) const;
    std::optional<std::vector<uint64_t>> jump_table_scan(
        uint64_t br_pc, uint64_t entry, uint64_t end, std::map<std::string, uint64_t>& stats) const;
};

} // namespace ultrs::nso
