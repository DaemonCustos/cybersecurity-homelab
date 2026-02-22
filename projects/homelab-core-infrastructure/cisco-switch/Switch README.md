\# Homelab Core Infrastructure — Switch Phase

Cisco WS‑C3750X‑48PF‑E (Layer‑2 Core Switch)



This directory contains the complete documentation and configuration workflow

for the switch‑phase of a hardened homelab core infrastructure. The switch

serves as the Layer‑2 foundation for all subsequent phases, providing

deterministic segmentation, strict access control, and zero‑trust boundary

enforcement.



---



\## Device Overview



\*\*Model:\*\* Cisco WS‑C3750X‑48PF‑E  

\*\*Software:\*\* C3750E-UNIVERSALK9-M, Version 15.2(4)E7  

\*\*Role:\*\* Layer‑2 Core Switch  

\*\*Management VLAN:\*\* 10 (CORE‑10)  

\*\*Management IP:\*\* 10.0.10.2/24  



The switch operates in Layer‑2 mode and provides VLAN segmentation, trunk

uplinks, hardened access ports, and management‑plane isolation.



---



\## VLAN Architecture



| VLAN | Name       | Purpose                |

|------|------------|------------------------|

| 10   | CORE‑10    | Management             |

| 20   | APP‑20     | Applications           |

| 30   | MEDIA‑30   | Media                  |

| 40   | GAME‑40    | Gaming                 |

| 50   | LOG‑50     | Logging                |

| 60   | ADM‑60     | Admin                  |

| 70   | LAN‑70     | General LAN            |

| 80   | IOT‑80     | IoT Devices            |

| 90   | STR‑90     | Streaming              |

| 100  | LAB‑100    | Lab / Testing          |



All VLANs are active and persist across reload.



---



\## Port Role Assignments



| Interface | Role            | Mode     | VLAN(s)             |

|-----------|-----------------|----------|----------------------|

| Gi1/0/1   | Router Uplink   | Trunk    | 10–100               |

| Gi1/0/2   | Server Uplink   | Trunk    | 10–50                |

| Gi1/0/3   | Desktop         | Access   | 70                   |

| Gi1/0/4   | Streaming       | Access   | 90                   |

| Gi1/0/5–48| Unused          | Shutdown | 1 (default)          |



Unused ports are administratively down to eliminate passive attack vectors.



---



\## Security Hardening Summary



The switch implements the following enterprise‑grade controls:



\### Layer‑2 Security

\- DHCP Snooping (VLAN 10)

\- STP PortFast (access ports)

\- STP BPDU Guard (global)

\- Shutdown of all unused ports

\- Explicit trunk allowed VLAN lists

\- Trunk negotiation disabled



\### Management Plane

\- SSH‑only access

\- VTY ACL restricting access to CORE‑10

\- Management SVI on VLAN 10

\- Login banner with correct delimiter usage



\### Service Hardening

\- LLDP enabled  

\- CDP disabled  

\- HTTP/HTTPS server disabled  

\- Legacy services disabled:

&nbsp; - finger  

&nbsp; - pad  

&nbsp; - tcp-small-servers  

&nbsp; - udp-small-servers  

\- Source routing disabled  

\- Timestamps normalized  



All hardening measures persisted successfully after reload.



---



\## Documentation Set



This directory includes:



1\. \*\*Architecture Overview\*\*  

2\. \*\*Failure Analysis\*\*  

3\. \*\*Workflow Diagram (ASCII)\*\*  

4\. \*\*Academic Summary\*\*  

5\. \*\*Consolidated Documentation Block\*\*  

6\. \*\*Documentation Index\*\*  

7\. \*\*Command Log (Clean, Deduplicated)\*\*  



Each document is designed for reproducibility, auditability, and long‑term

maintenance.



---



\## Phase‑1 Completion Status



All switch‑phase tasks are complete:



\- VLAN segmentation  

\- Port role assignment  

\- Trunk/access configuration  

\- Shutdown of unused ports  

\- DHCP Snooping baseline  

\- STP hardening  

\- LLDP enabled / CDP disabled  

\- Service hardening  

\- Management plane isolation  

\- Configuration persisted  

\- Post‑reload verification passed  



The switch is now fully hardened and ready for \*\*Phase 2 — Router Build\*\*.



---



\## License



This documentation is provided for operational, academic, and professional use.

You may reuse, modify, and distribute it under the terms of the repository’s

LICENSE file.



