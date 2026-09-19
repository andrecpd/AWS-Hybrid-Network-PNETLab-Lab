# AWS VPC Addressing Plan

## AWS
- **VPC:** `10.10.0.0/16`
- **Private subnet:** `10.10.10.0/24`
- **Active Directory / DNS:** `10.10.10.10`
- **Cisco ISE 3.4:** `10.10.10.20`

## PNETLab / Branch
- **Aggregate network:** `10.20.0.0/16`
- **Transit FW ↔ Router:** `10.20.0.0/30`
  - Firewall: `10.20.0.1`
  - Router: `10.20.0.2`

## Branch VLANs
| VLAN | CIDR | Purpose |
|---|---|---|
| VLAN 10 | `10.20.10.0/24` | LAN Base |
| VLAN 20 | `10.20.20.0/24` | Users |
| VLAN 30 | `10.20.30.0/24` | Guests |
| VLAN 99 | `10.20.99.0/24` | Management |

## Design rule
AWS (`10.10.0.0/16`) and PNETLab (`10.20.0.0/16`) must not overlap so the Site-to-Site IPsec VPN can route both environments cleanly.

## Related work item
- Issue #4 — [US-03] AWS Network Foundation
- TASK-09 — Define VPC CIDR
