po2lmo Download Version Guide
=============================

This guide helps you choose the correct po2lmo executable for your operating
system and CPU architecture. Each section clearly tells you which file to
download.

---

## 1. Linux (Desktop / Server – glibc)

If you use Ubuntu, Debian, CentOS, Fedora, Arch, SUSE, or any common Linux distribution:  
→ **po2lmo-linux-x86_64**

If you use a 32‑bit Linux system:  
→ **po2lmo-linux-i386**

If you use ARMv7 Linux:  
→ **po2lmo-linux-armv7**

If you use ARMhf Linux:  
→ **po2lmo-linux-armhf**

If you use ARM64 / AArch64 Linux:  
→ **po2lmo-linux-aarch64**

If you use RISC‑V Linux:  
→ **po2lmo-linux-riscv64**

If you use PowerPC or PowerPC64 Linux:  
→ **po2lmo-linux-powerpc**  
→ **po2lmo-linux-powerpc64**

If you use IBM Z / s390x Linux:  
→ **po2lmo-linux-s390x**

---

## 2. Linux (musl-based systems, such as Alpine Linux)

Alpine Linux x86_64:  
→ **po2lmo-linux-x86_64-musl**

Alpine Linux ARM64:  
→ **po2lmo-linux-aarch64-musl**

Alpine Linux ARMhf:  
→ **po2lmo-linux-armhf-musl**

---

## 3. ARM / SBC / Embedded Linux

Raspberry Pi OS 64‑bit:  
→ **po2lmo-linux-aarch64**

Raspberry Pi OS 32‑bit (armv7l):  
→ **po2lmo-linux-armv7**

ARMhf devices:  
→ **po2lmo-linux-armhf**

ARM64 SBCs (Rock Pi, Orange Pi, Radxa, etc.):  
→ **po2lmo-linux-aarch64**

---

## 4. Windows

Windows 10/11 64‑bit:  
→ **po2lmo-windows-x86_64.exe**

Windows 32‑bit:  
→ **po2lmo-windows-i386.exe**

---

## 5. macOS

Intel Mac + Apple Silicon (Universal Binary):  
→ **po2lmo-macos-universal**

---

## 6. Other Architectures (Advanced / Special Use)

RISC‑V Linux:  
→ **po2lmo-linux-riscv64**

IBM Z / s390x:  
→ **po2lmo-linux-s390x**

---

## How to Check Your Architecture

Run:

uname -m

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

ldd --version


If it shows **glibc** → download the normal version  
If it shows **musl**  → download the *-musl version  

---

## How to Use

### Linux / macOS

chmod +x po2lmo-xxxx
./po2lmo-xxxx input.po output.lmo


### Windows

po2lmo-windows-x86_64.exe input.po output.lmo

---

## Done!

This is the simplest and clearest version selection guide for all users.

































