# Security Policy

This project documents a sovereign, portable password‑management workflow
built on the IronKey D500S platform using KeePassXC portable binaries.
No installation is required on any host system, and no executable code
is distributed by this repository. The security posture is based on
operational hygiene, reproducibility, and strict avoidance of host‑trust
assumptions.

---

## Supported Configurations

This workflow supports:

- IronKey D500S hardware‑encrypted USB device
- KeePassXC Portable (Windows)
- KeePassXC AppImage (Linux)
- Windows 10/11 hosts
- Linux hosts (AlmaLinux, Fedora, Ubuntu, Debian, Ubuntu‑based)

No other configurations are guaranteed to function as described.

---

## Security Architecture Overview

The validated workflow enforces the following security properties:

- **Hardware encryption** is provided by the IronKey D500S.
- **Complex password mode** is required for Linux compatibility.
- **FAT32 + showexec** prevents execution of Linux binaries directly from
  the device, enforcing a natural containment boundary.
- **Linux runner script** executes only from a native filesystem and
  self‑scrubs after use.
- **KeePassXC AppImage** is copied to `/tmp`, executed, and deleted.
- **Windows portable KeePassXC** runs directly from the IronKey without
  installation or residue.
- **No persistent writes** occur on either platform.
- **Provenance files (SOURCE.txt + DIGEST)** ensure binary integrity.

---

## Threat Model

This project assumes:

- Host systems are untrusted.
- No persistent writes to host systems are acceptable.
- No reliance on host registry, configuration, or installed software.
- IronKey hardware encryption is trusted.
- KeePassXC vault uses strong passphrases and modern KDBX4 settings.
- All binaries are verified using SHA‑256 digests before use.
- The user maintains physical control of the IronKey.

This project does **not** mitigate:

- Compromised host operating systems
- Hardware keyloggers or BIOS‑level compromise
- Memory‑scraping malware
- Screen capture utilities
- Supply‑chain attacks outside of digest verification
- Physical access attacks on an unlocked IronKey

---

## Operational Assumptions

Users of this workflow are expected to:

- Verify SHA‑256 digests using the provided DIGEST files
- Use Complex password mode for Linux compatibility
- Maintain physical control of the IronKey device
- Avoid cloud storage or synchronization
- Avoid installing KeePassXC on host systems
- Avoid enabling browser integration or global auto‑type
- Use strong, non‑reused passphrases
- Avoid deleting files from the IronKey using GUI file managers
  (to prevent creation of `.Trash-UID` directories)

---

## Known Limitations

- IronKey Linux unlocker supports **Complex mode only**
- FAT32 + `showexec` prevents execution of Linux binaries