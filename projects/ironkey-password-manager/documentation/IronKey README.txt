=== IronKey D500S – Portable KeePassXC Vault ===

This IronKey contains a fully portable, cross‑platform KeePassXC
password‑management workflow. No installation is required on any host
system. All data remains stored on the encrypted IronKey secure
partition.

------------------------------------------------------------
1. Password Mode Requirement
------------------------------------------------------------
This device must be configured in:

    Complex Password Mode

Linux cannot unlock the IronKey in Passphrase Mode due to a firmware
limitation. Windows supports both modes.

------------------------------------------------------------
2. Windows Instructions
------------------------------------------------------------
1. Unlock the IronKey using the built‑in unlocker.
2. Open the folder:
       KeePassXC-Windows
3. Run:
       KeePassXC.exe
4. Open your database from:
       IronKeyVault/IronKeyVault.kdbx

KeePassXC portable does not install, write registry keys, or leave
residue on the Windows host.

------------------------------------------------------------
3. Linux Instructions
------------------------------------------------------------
Linux cannot execute programs directly from the IronKey due to FAT32
and the "showexec" mount flag. This prevents execution but does not
require installation.

The AppImage remains portable. It simply must be executed from a native
filesystem.

To run KeePassXC on Linux:

1. Unlock the IronKey.
2. Copy the runner script to a native filesystem:
       cp /run/media/$USER/KINGSTON/ironkey-keepass.sh ~/Desktop/
3. Make it executable:
       chmod +x ~/Desktop/ironkey-keepass.sh
4. Run it:
       ~/Desktop/ironkey-keepass.sh

The script will:
- Copy the AppImage to /tmp
- Mark it executable
- Launch KeePassXC directly from /tmp
- Delete the temporary AppImage
- Delete itself

No residue is left on the Linux host.

------------------------------------------------------------
4. Database Location
------------------------------------------------------------
Your KeePassXC vault is stored here:

    IronKeyVault/IronKeyVault.kdbx

Do not move this file off the IronKey unless creating a backup.

------------------------------------------------------------
5. Provenance & Integrity Verification
------------------------------------------------------------
Each KeePassXC binary includes:

- SOURCE.txt  (official download URL, version, retrieval date)
- DIGEST      (SHA‑256 hash for integrity verification)

Verify binaries before use:

    sha256sum KeePassXC-*.AppImage
    sha256sum KeePassXC.exe

Compare the output to the DIGEST files stored in the same folder.

------------------------------------------------------------
6. Documentation
------------------------------------------------------------
This device includes:

- Linux-Instructions.txt
- Windows-Instructions.txt
- Consolidated Documentation Block.txt
- Residual-Audit.txt
- Architecture Overview.txt
- Failure Analysis.txt
- Workflow Diagram (ASCII).txt
- Academic Summary.txt

------------------------------------------------------------
End of IronKey README
------------------------------------------------------------
