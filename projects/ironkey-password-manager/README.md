# IronKey Password Manager  

A Sovereign, Cross‑Platform, Zero‑Residue KeePassXC Deployment



This repository documents the complete build, verification, and

operational workflow for a fully portable, hardware‑encrypted password

manager built on the IronKey D500S platform. The project emphasizes

sovereignty, operational hygiene, reproducibility, and cross‑platform

compatibility without requiring installation or persistent writes on

any host system.



This work was completed as part of a cybersecurity academic portfolio

and demonstrates professional‑grade documentation, system design,

verification, and secure workflow engineering.



---



## Project Objectives



- Deploy a portable KeePassXC vault stored entirely on the IronKey

&nbsp; secure partition

- Maintain full compatibility with Windows and Linux hosts

- Avoid all host‑side installation, registry writes, or configuration

- Enforce hardware encryption and strong passphrase requirements

- Provide provenance and integrity verification (SOURCE + DIGEST files)

- Achieve a fully zero‑residue workflow on both platforms

- Produce audit‑ready documentation suitable for academic evaluation

&nbsp; and professional review



---



## Repository Structure



ironkey-password-manager/

│

├── configs/          # Configuration files (if applicable)

├── diagrams/         # Architecture diagrams and ASCII workflow

├── documentation/    # Full build guide, instructions, audits

├── logs/             # Build logs or verification logs

└── scripts/          # Runner script (Linux) and related utilities


---



## IronKey Directory Layout (On-Device)



The IronKey secure partition contains:



KINGSTON (IronKey Secure Partition)

│

├── KeePassXC-Linux/

│     ├── KeePassXC-<version>.AppImage

│ ├── KeePassXC-<version>.AppImage.DIGEST

│     └── SOURCE.txt

│

├── KeePassXC-Windows/

│     ├── KeePassXC.exe

│     ├── KeePassXC.exe.DIGEST

│     └── SOURCE.txt

│

├── IronKeyVault/

│     └── IronKeyVault.kdbx

│

├── ironkey-keepass.sh

│     (Linux runner script; must be copied to a native filesystem)

│

├── Linux-Instructions.txt

├── Windows-Instructions.txt

├── Residual-Audit.txt

├── Consolidated Documentation Block.txt

└── README.txt  (device-level overview)



DIGEST files remain on the IronKey and are not included in this repository.



---



## Provenance \& Integrity Verification



Each KeePassXC binary includes:



- \*\*SOURCE.txt\*\* — official download URL, version, retrieval date  

- \*\*DIGEST\*\* — SHA‑256 hash for integrity verification  



Users must verify:



sha256sum KeePassXC-\*.AppImage

sha256sum KeePassXC.exe



and compare the output to the DIGEST files stored on the IronKey.



This ensures supply‑chain integrity and prevents tampering.



---



## Cross‑Platform Execution Model



### \*\*Windows\*\*

- KeePassXC.exe runs directly from the IronKey  

- No installation  

- No registry writes  

- No persistent files  

- Zero residue after closing  



### \*\*Linux\*\*

Due to FAT32 + `showexec` mount behavior:



- Linux cannot execute binaries or scripts directly from the IronKey  

- The runner script must be copied to a native filesystem  

- The script copies the AppImage to `/tmp`, executes it, and deletes itself  

- Zero residue is left on the host  



This behavior is validated and documented in the Residual-Audit.txt file.



---



## Password Mode Requirement



The IronKey D500S supports:



- Passphrase Mode  

- Complex Mode  



Linux supports \*\*Complex Mode only\*\*.  

Passphrase Mode will not unlock on Linux due to a firmware limitation.



For cross‑platform use, the device must be configured in \*\*Complex Mode\*\*.



---



## Documentation Included



This repository includes:



- \*\*Linux-Instructions.txt\*\*  

- \*\*Windows-Instructions.txt\*\*  

- \*\*Consolidated Documentation Block.txt\*\*  

- \*\*Residual-Audit.txt\*\*  

- \*\*Architecture Overview.txt\*\*  

- \*\*Failure Analysis.txt\*\*  

- \*\*Workflow Diagram (ASCII).txt\*\*  

- \*\*Academic Summary.txt\*\*  

- \*\*SECURITY.md\*\*  

- \*\*CONTRIBUTING.md\*\*  

- \*\*LICENSE.md (CC BY 4.0)\*\*  



All documentation is written to professional, academic, and operational

standards.



---



## Academic Relevance



This project demonstrates:



- Secure system design  

- Cross‑platform workflow engineering  

- Hardware‑encrypted storage management  

- Zero‑residue operational hygiene  

- Provenance and integrity verification  

- Technical documentation and audit preparation  

- Troubleshooting and failure analysis  

- Reproducible build processes  



It is suitable for cybersecurity coursework, portfolio demonstration,

and internship evaluation.



---



## License



This documentation is licensed under the Creative Commons Attribution

4.0 International License (CC BY 4.0).  

See LICENSE.md for details.





