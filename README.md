# po2lmo – Multi‑Platform Binary Release

po2lmo is a lightweight command‑line tool used to convert .po translation files
into .lmo files for LuCI (OpenWrt’s web interface). This repository provides
precompiled binaries for 23 different platforms, including Linux (glibc & musl),
Windows, macOS, ARM SBCs, RISC‑V, IBM Z, and more.

All binaries are statically compiled where possible and require no external
dependencies.

For background details, see: [Why This Project Exists](WHY.md)

---

## Features

• Converts .po files into .lmo files for LuCI  
• Extremely small and fast  
• No dependencies required  
• Precompiled for 23 architectures  
• Works on routers, servers, desktops, SBCs, and embedded devices  

---

See the changelog → [CHANGELOG.md](CHANGELOG.md)

---

## Quick Start

1. Download the correct po2lmo binary for your system.  
   Refer to the Version Selection Guide in this repository or on the Release page.

2. Make the binary executable (Linux / macOS):  

	chmod +x po2lmo-xxxx


3. Convert a .po file into a .lmo file:  

	./po2lmo-xxxx input.po output.lmo


4. On Windows:  

	po2lmo-windows-x86_64.exe input.po output.lmo


5. Use the generated .lmo file inside your LuCI application or OpenWrt package.
All binaries are self‑contained and require no additional installation.

---

## Version Selection Guide (Simple and Direct)

### Linux (glibc-based: Ubuntu, Debian, CentOS, Fedora, Arch, SUSE, etc.)

- 64‑bit Linux  
  → po2lmo-linux-x86_64

- 32‑bit Linux  
  → po2lmo-linux-i386

- ARMv7 / ARMhf Linux  
  → po2lmo-linux-armhf

- ARMv7 (hard‑float) / ARM SBCs  
  → po2lmo-linux-armv7

- ARM64 / AArch64 Linux  
  → po2lmo-linux-aarch64

- RISC‑V Linux  
  → po2lmo-linux-riscv64

- PowerPC / PowerPC64 Linux  
  → po2lmo-linux-powerpc  
  → po2lmo-linux-powerpc64

- IBM Z / s390x Linux  
  → po2lmo-linux-s390x

### Linux (musl-based systems, e.g., Alpine Linux)

- Alpine Linux x86_64  
  → po2lmo-linux-x86_64-musl

- Alpine Linux ARM64  
  → po2lmo-linux-aarch64-musl

- Alpine Linux ARMhf  
  → po2lmo-linux-armhf-musl

### Windows

- Windows 10/11 64‑bit  
  → po2lmo-windows-x86_64.exe

- Windows 32‑bit  
  → po2lmo-windows-i386.exe

### macOS

- Intel Mac + Apple Silicon (Universal Binary)  
  → po2lmo-macos-universal

Full Version Guide → [VERSION_GUIDE.md](VERSION_GUIDE.md)

---

## How to Check Your Architecture

Run:

\`\`\`
uname -m
\`\`\`

Common outputs:

x86_64   → po2lmo-linux-x86_64  
i686     → po2lmo-linux-i386  
aarch64  → po2lmo-linux-aarch64  
armv7l   → po2lmo-linux-armv7  
armhf    → po2lmo-linux-armhf  
riscv64  → po2lmo-linux-riscv64  
s390x    → po2lmo-linux-s390x  

---

## How to Check glibc or musl (Linux)

Run:

\`\`\`
ldd --version
\`\`\`

If it shows glibc → download the normal version  
If it shows musl  → download the *-musl version  

---

## Build From Source (Optional)

The source file is available from the official LuCI repository:  
https://github.com/openwrt/luci

Compile manually:

\`\`\`
gcc -O2 -o po2lmo po2lmo.c
\`\`\`

---

Security Policy → [SECURITY.md](SECURITY.md)

---

## License

This project follows the licensing terms of the original po2lmo source code
from the OpenWrt LuCI project.

---

Credits → [CREDITS.md](CREDITS.md)

---

## Support

If you encounter issues or need additional architectures, please open an issue
on GitHub.

---

Contributions welcome → [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 📦 Latest Nightly Build (23 Architectures)

| Platform | Download |
|----------|----------|
| Linux x86_64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-x86_64 |
| Linux i386 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-i386 |
| Linux armv7 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-armv7 |
| Linux armhf | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-armhf |
| Linux aarch64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-aarch64 |
| Linux riscv64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-riscv64 |
| Linux powerpc | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-powerpc |
| Linux powerpc64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-powerpc64 |
| Linux s390x | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-s390x |
| Linux x86_64-musl | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-x86_64-musl |
| Linux armhf-musl | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-armhf-musl |
| Linux aarch64-musl | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-aarch64-musl |
| Linux loongarch64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-loongarch64 |
| Linux armv6 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-armv6 |
| Linux armv5 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-armv5 |
| Linux mips | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-mips |
| Linux mipsel | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-linux-mipsel |
| macOS Universal | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-macos-universal |
| macOS Intel | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-macos-intel |
| macOS ARM64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-macos-arm64 |
| Windows x86_64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-windows-x86_64.exe |
| Windows i386 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-windows-i386.exe |
| Windows ARM64 | https://github.com/xzk-git/po2lmo/releases/download/nightly-build/po2lmo-windows-arm64.exe |
