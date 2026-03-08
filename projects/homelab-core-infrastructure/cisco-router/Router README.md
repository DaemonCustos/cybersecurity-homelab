# Router Phase — Cisco C1111‑8P  
Core Infrastructure Documentation

This directory contains the complete documentation and configuration workflow
for the router phase of the core infrastructure build. The router provides
Layer‑3 segmentation, zero‑trust boundary enforcement, NAT control, DHCP
relay, and SIEM logging for all internal VLANs.

---

## Device Overview

**Model:** Cisco C1111‑8P  
**Role:** Layer‑3 Core Router  
**WAN Boundary:** Upstream ASUS gateway  
**Internal Gateway:** 10 VLANs (10–100)  
**Management:** SSH‑only, AAA‑enabled  
**Logging:** Forwarded to LOG‑50 (10.0.50.10)

The router is the authoritative gateway for all internal networks and enforces
strict trust boundaries between VLANs.

---

## VLAN Architecture

| VLAN | Name       | Purpose                |
|------|------------|------------------------|
| 10   | CORE‑10    | Infrastructure         |
| 20   | APP‑20     | Middleware             |
| 30   | MEDIA‑30   | Media                  |
| 40   | GAME‑40    | Gaming                 |
| 50   | LOG‑50     | SIEM Logging           |
| 60   | ADM‑60     | Admin Workstations     |
| 70   | LAN‑70     | General LAN            |
| 80   | IOT‑80     | Internal IoT           |
| 90   | STR‑90     | Streaming Devices      |
| 100  | LAB‑100    | Research / Sandbox     |

Each VLAN is implemented as a dot1Q subinterface with DHCP relay and an
inbound ACL enforcing zero‑trust boundaries.

---

## NAT Architecture

Only specific VLANs are authorized for outbound internet access:

- APP‑20  
- MEDIA‑30  
- GAME‑40  
- ADM‑60  
- LAN‑70  
- IOT‑80  
- STR‑90  

Non‑internet VLANs:

- CORE‑10  
- LOG‑50  
- LAB‑100  

NAT is implemented using a standard NAT‑INSIDE ACL and WAN overload.

---

## ACL Matrix

Each VLAN has a dedicated inbound ACL enforcing:

- DNS/NTP → INFRA‑10  
- Outbound internet (if eligible)  
- No inter‑VLAN access  
- Default deny/log for SIEM visibility  

This creates a hardened, compartmentalized network aligned with zero‑trust
principles.

---

## Documentation Set

1. **Architecture Overview**  
2. **Failure Analysis**  
3. **Workflow Diagram**  
4. **Academic Summary**  
5. **Consolidated Configuration Block**  
6. **Command Log**  
7. **Documentation Index**

Each document is designed for reproducibility, auditability, and long‑term
maintenance.

---

## Phase Completion Status

All router‑phase tasks are complete:

- WAN configuration  
- VLAN subinterfaces  
- DHCP relay  
- NAT posture  
- ACL matrix  
- SIEM logging  
- SSH/AAA hardening  
- Service minimization  
- Configuration freeze  

The router is now fully hardened and ready for **Phase 8 — Router ↔ Switch
Pairing**.

---

## License

This documentation is provided for operational, academic, and professional use.
Sensitive information has been removed for security and OPSEC compliance.
