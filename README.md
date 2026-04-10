po2lmo – Multi‑Platform Binary Release
=====================================
 
po2lmo is a lightweight command‑line tool used to convert .po translation files
into .lmo files for LuCI (OpenWrt’s web interface). This repository provides
precompiled binaries for 15 different platforms, including Linux, Windows,
macOS, OpenWrt, ARM SBCs, Alpine Linux (musl), RISC‑V, and more.k

All binaries are statically compiled where possible and require no external
dependencies.

------------------------------------------------------------
Features
------------------------------------------------------------
• Converts .po files into .lmo files for LuCI  
• Extremely small and fast  
• No dependencies required  
• Precompiled for 15 architectures  
• Works on routers, servers, desktops, SBCs, and embedded devices  

------------------------------------------------------------
Download
------------------------------------------------------------
Scroll down to the “Assets” section of the latest release and download the file
that matches your system.

If you are unsure which file to download, see the Version Selection Guide below.

------------------------------------------------------------
Version Selection Guide (Simple and Direct)
------------------------------------------------------------

Linux (Desktop / Server)
- Ubuntu, Debian, CentOS, Fedora, Arch, SUSE, etc.
  → Download: po2lmo-x86_64

- 32-bit Linux
  → Download: po2lmo-i386

Linux (musl-based systems, e.g., Alpine Linux)
- Alpine Linux x86_64
  → Download: po2lmo-x86_64-musl

- Alpine Linux ARM64
  → Download: po2lmo-aarch64-musl

- Alpine Linux ARM (armhf / armv7)
  → Download: po2lmo-arm-musl

ARM / SBC / Embedded Linux
- Raspberry Pi OS 64-bit
  → Download: po2lmo-aarch64

- Raspberry Pi OS 32-bit
  → Download: po2lmo-arm

- ARM64 SBC (Rock Pi, Orange Pi, Radxa, etc.)
  → Download: po2lmo-aarch64

- ARMv7 / ARMhf Linux
  → Download: po2lmo-arm

OpenWrt Routers
- aarch64
  → Download: po2lmo-aarch64

- arm
  → Download: po2lmo-arm

- mips
  → Download: po2lmo-mips

- mipsel
  → Download: po2lmo-mipsel

Windows
- Windows 10/11 64-bit
  → Download: po2lmo-windows-x86_64.exe

- Windows 32-bit
  → Download: po2lmo-windows-i386.exe

macOS
- Intel Mac
  → Download: po2lmo-macos-x86_64

- Apple Silicon (M1/M2/M3)
  → Download: po2lmo-macos-arm64

Other Architectures
- RISC-V Linux
  → Download: po2lmo-riscv64

- IBM Z / s390x
  → Download: po2lmo-s390x

------------------------------------------------------------
How to Check Your Architecture
------------------------------------------------------------
Run:
uname -m

Common outputs:
x86_64  → Download po2lmo-x86_64  
i686    → Download po2lmo-i386  
aarch64 → Download po2lmo-aarch64  
armv7l  → Download po2lmo-arm  
mips    → Download po2lmo-mips  
mipsel  → Download po2lmo-mipsel  

------------------------------------------------------------
How to Check glibc or musl (Linux)
------------------------------------------------------------
Run:
ldd --version

If it shows glibc → Download the normal version  
If it shows musl  → Download the *-musl version  

------------------------------------------------------------
Usage
------------------------------------------------------------

Linux / macOS:
chmod +x po2lmo-xxxx
./po2lmo-xxxx input.po output.lmo

Windows:
po2lmo-windows-x86_64.exe input.po output.lmo

------------------------------------------------------------
Build From Source (Optional)
------------------------------------------------------------
The source file is available from the official LuCI repository:
https://github.com/openwrt/luci

Compile manually:
gcc -O2 -o po2lmo po2lmo.c

------------------------------------------------------------
License
------------------------------------------------------------
This project follows the licensing terms of the original po2lmo source code
from the OpenWrt LuCI project.

------------------------------------------------------------
Support
------------------------------------------------------------
If you encounter issues or need additional architectures, please open an issue
on GitHub.
