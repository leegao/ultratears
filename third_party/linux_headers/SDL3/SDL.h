#pragma once
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef SDLCALL
#define SDLCALL
#endif

typedef uint8_t Uint8;
typedef int8_t Sint8;
typedef uint16_t Uint16;
typedef int16_t Sint16;
typedef uint32_t Uint32;
typedef int32_t Sint32;
typedef uint64_t Uint64;
typedef int64_t Sint64;
typedef Uint64 SDL_WindowFlags;
typedef Uint32 SDL_JoystickID;
typedef Uint32 SDL_AudioDeviceID;
typedef void (*SDL_FunctionPointer)(void);

typedef struct SDL_Window SDL_Window;
typedef struct SDL_Gamepad SDL_Gamepad;
typedef struct SDL_Mutex SDL_Mutex;
typedef struct SDL_AudioStream SDL_AudioStream;

#define SDL_INIT_AUDIO   0x00000010u
#define SDL_INIT_VIDEO   0x00000020u
#define SDL_INIT_GAMEPAD 0x00002000u

#define SDL_WINDOW_FULLSCREEN         0x0000000000000001ULL
#define SDL_WINDOW_VULKAN             0x0000000010000000ULL
#define SDL_WINDOW_RESIZABLE          0x0000000000000020ULL
#define SDL_WINDOW_HIGH_PIXEL_DENSITY 0x0000000000002000ULL

#define SDL_MESSAGEBOX_ERROR 0x00000010u
#define SDL_STANDARD_GRAVITY 9.80665f

#define SDL_HINT_AUDIO_DEVICE_SAMPLE_FRAMES "SDL_AUDIO_DEVICE_SAMPLE_FRAMES"
#define SDL_HINT_WINDOWS_INTRESOURCE_ICON "SDL_WINDOWS_INTRESOURCE_ICON"
#define SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL "SDL_WINDOWS_INTRESOURCE_ICON_SMALL"

#define SDL_AUDIO_F32 0x8120u
#define SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK 0xFFFFFFFFu

typedef struct SDL_AudioSpec {
    int format;
    int channels;
    int freq;
} SDL_AudioSpec;

typedef void (SDLCALL *SDL_AudioStreamCallback)(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount);

typedef enum SDL_Scancode {
    SDL_SCANCODE_UNKNOWN = 0,
    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,
    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,
    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226,
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230,
} SDL_Scancode;

#define SDL_KMOD_ALT 0x0300u

typedef enum SDL_GamepadButton {
    SDL_GAMEPAD_BUTTON_SOUTH = 0,
    SDL_GAMEPAD_BUTTON_EAST = 1,
    SDL_GAMEPAD_BUTTON_WEST = 2,
    SDL_GAMEPAD_BUTTON_NORTH = 3,
    SDL_GAMEPAD_BUTTON_BACK = 4,
    SDL_GAMEPAD_BUTTON_GUIDE = 5,
    SDL_GAMEPAD_BUTTON_START = 6,
    SDL_GAMEPAD_BUTTON_LEFT_STICK = 7,
    SDL_GAMEPAD_BUTTON_RIGHT_STICK = 8,
    SDL_GAMEPAD_BUTTON_LEFT_SHOULDER = 9,
    SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER = 10,
    SDL_GAMEPAD_BUTTON_DPAD_UP = 11,
    SDL_GAMEPAD_BUTTON_DPAD_DOWN = 12,
    SDL_GAMEPAD_BUTTON_DPAD_LEFT = 13,
    SDL_GAMEPAD_BUTTON_DPAD_RIGHT = 14,
} SDL_GamepadButton;

typedef enum SDL_GamepadAxis {
    SDL_GAMEPAD_AXIS_LEFTX = 0,
    SDL_GAMEPAD_AXIS_LEFTY = 1,
    SDL_GAMEPAD_AXIS_RIGHTX = 2,
    SDL_GAMEPAD_AXIS_RIGHTY = 3,
    SDL_GAMEPAD_AXIS_LEFT_TRIGGER = 4,
    SDL_GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
} SDL_GamepadAxis;

typedef enum SDL_SensorType {
    SDL_SENSOR_ACCEL = 1,
    SDL_SENSOR_GYRO = 2,
} SDL_SensorType;

typedef enum SDL_EventType {
    SDL_EVENT_QUIT = 0x100,
    SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED = 0x207,
    SDL_EVENT_WINDOW_FOCUS_LOST = 0x20F,
    SDL_EVENT_KEY_DOWN = 0x300,
    SDL_EVENT_KEY_UP = 0x301,
    SDL_EVENT_GAMEPAD_AXIS_MOTION = 0x650,
    SDL_EVENT_GAMEPAD_BUTTON_DOWN = 0x651,
    SDL_EVENT_GAMEPAD_BUTTON_UP = 0x652,
    SDL_EVENT_GAMEPAD_ADDED = 0x653,
    SDL_EVENT_GAMEPAD_REMOVED = 0x654,
    SDL_EVENT_GAMEPAD_SENSOR_UPDATE = 0x659,
} SDL_EventType;

typedef struct SDL_KeyboardEvent {
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
    Uint32 windowID;
    Uint32 which;
    SDL_Scancode scancode;
    Uint32 key;
    Uint16 mod;
    Uint16 raw;
    bool down;
    bool repeat;
} SDL_KeyboardEvent;

typedef struct SDL_GamepadDeviceEvent {
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
} SDL_GamepadDeviceEvent;

typedef struct SDL_GamepadSensorEvent {
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 sensor;
    float data[3];
    Uint64 sensor_timestamp;
} SDL_GamepadSensorEvent;

typedef union SDL_Event {
    Uint32 type;
    SDL_KeyboardEvent key;
    SDL_GamepadDeviceEvent gdevice;
    SDL_GamepadSensorEvent gsensor;
    Uint8 padding[128];
} SDL_Event;

void SDL_SetMainReady(void);
bool SDL_SetHint(const char *name, const char *value);
const char *SDL_GetError(void);
bool SDL_Init(Uint32 flags);
Uint32 SDL_WasInit(Uint32 flags);
void SDL_free(void *mem);
SDL_Mutex *SDL_CreateMutex(void);
void SDL_LockMutex(SDL_Mutex *mutex);
void SDL_UnlockMutex(SDL_Mutex *mutex);
SDL_Window *SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags);
SDL_WindowFlags SDL_GetWindowFlags(SDL_Window *window);
bool SDL_SetWindowFullscreen(SDL_Window *window, bool fullscreen);
bool SDL_SetWindowTitle(SDL_Window *window, const char *title);
bool SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h);
bool SDL_ShowSimpleMessageBox(Uint32 flags, const char *title, const char *message, SDL_Window *window);
bool SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS);
bool SDL_PollEvent(SDL_Event *event);
SDL_Gamepad *SDL_OpenGamepad(SDL_JoystickID instance_id);
void SDL_CloseGamepad(SDL_Gamepad *gamepad);
SDL_JoystickID SDL_GetGamepadID(SDL_Gamepad *gamepad);
SDL_JoystickID *SDL_GetGamepads(int *count);
const char *SDL_GetGamepadName(SDL_Gamepad *gamepad);
bool SDL_GetGamepadButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
Sint16 SDL_GetGamepadAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
bool SDL_RumbleGamepad(SDL_Gamepad *gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
bool SDL_GamepadHasSensor(SDL_Gamepad *gamepad, SDL_SensorType type);
bool SDL_SetGamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type, bool enabled);
float SDL_GetGamepadSensorDataRate(SDL_Gamepad *gamepad, SDL_SensorType type);
SDL_AudioStream *SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata);
bool SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len);
bool SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream);
SDL_AudioDeviceID SDL_GetAudioStreamDevice(SDL_AudioStream *stream);
const char *SDL_GetAudioDeviceName(SDL_AudioDeviceID devid);
void SDL_DestroyAudioStream(SDL_AudioStream *stream);

#ifdef __cplusplus
}
#endif
