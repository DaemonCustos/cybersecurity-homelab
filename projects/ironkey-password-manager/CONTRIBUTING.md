CONTRIBUTING.md
markdown
# Contributing Guidelines

Thank you for your interest in contributing to this project.  
This repository documents a reproducible, security‑focused workflow for building a portable password‑management environment using an IronKey D500S and KeePassXC.  
Contributions must maintain the project’s standards of clarity, reproducibility, and operational hygiene.

---

## Contribution Scope

This project accepts contributions related to:

- Documentation improvements  
- Clarifications to workflow steps  
- Corrections to technical details  
- Additional diagrams or architecture explanations  
- Expanded troubleshooting sections  
- Cross‑platform compatibility notes  

This project does **not** accept:

- Executable code  
- Precompiled binaries  
- Scripts that modify host systems  
- Sensitive operational details  
- Personal data or vault examples  

---

## Documentation Standards

All contributions must follow these principles:

- Professional, technical tone  
- No assumptions about host trust  
- No sensitive data  
- Reproducible, step‑based instructions  
- Use Markdown tables where appropriate  
- Use fenced code blocks for commands  
- Use ASCII diagrams for architecture when needed  
- Maintain consistency with existing formatting (Option B style)  

---

## Commit Message Guidelines

Commit messages must:

- Be descriptive and concise  
- Reference the section(s) modified  
- Avoid personal or sensitive information  
- Use the following structure:

<scope>: <summary>

<optional extended description>

Code

Examples:

docs: clarify Windows portable KeePassXC verification steps
docs: add troubleshooting notes for Linux noexec mounts

Code

---

## Pull Request Requirements

All pull requests must:

- Describe the purpose of the change  
- Identify which section(s) of the build guide are affected  
- Include verification steps if modifying technical instructions  
- Preserve operational hygiene principles  
- Avoid introducing host‑trust assumptions  
- Avoid recommending installation of KeePassXC or other software on host systems  

Pull requests that weaken security assumptions or introduce ambiguity will not be accepted.

---

## Issue Reporting

Use GitHub Issues to report:

- Documentation errors  
- Missing steps  
- Ambiguous instructions  
- Outdated information  
- Cross‑platform inconsistencies  

Do **not** include:

- Passphrases  
- Vault contents  
- Device serial numbers  
- Logs containing sensitive information  
- Screenshots revealing personal data  

Issues containing sensitive information will be closed without review.

---

## Style Guide

- Use Option B formatting (clean, professional GitHub style)  
- No emojis  
- Use headings, tables, and diagrams where appropriate  
- Keep explanations concise and technical  
- Avoid conversational or informal tone in documentation files  

---

## Thank You

Your contributions help improve the clarity, reproducibility, and security of this workflow.  
Maintaining a high standard of documentation ensures that others can follow the process safely and confidently.