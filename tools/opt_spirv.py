#!/usr/bin/env python3
"""Forwarding stub to tools/opt_spirv/opt_spirv.py"""
import os
import sys
from pathlib import Path

OPT_SCRIPT = Path(__file__).resolve().parent / "opt_spirv" / "opt_spirv.py"
os.execv(sys.executable, [sys.executable, str(OPT_SCRIPT)] + sys.argv[1:])
