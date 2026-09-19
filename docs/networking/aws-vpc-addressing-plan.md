# AWS VPC Addressing Plan

## VPC
- **CIDR:** `10.100.0.0/16`
- **Purpose:** base AWS network for the hybrid AWS + PNETLab lab.
- **Design goal:** keep AWS and on-premises address spaces non-overlapping for future Site-to-Site VPN connectivity.

## Planned subnets

| Subnet | CIDR | Type | Purpose |
|---|---|---|---|
| public-a | `10.100.10.0/24` | Public | Internet-facing/NAT/public services if needed |
| public-b | `10.100.20.0/24` | Public | Second-AZ redundancy |
| private-ad-a | `10.100.30.0/24` | Private | Active Directory / DNS |
| private-ad-b | `10.100.40.0/24` | Private | AD redundancy / internal services |
| private-ise-a | `10.100.50.0/24` | Private | Cisco ISE / security services |
| management | `10.100.60.0/24` | Private | Management / administration |

## Reserved space
- `10.100.70.0/24` through `10.100.99.0/24` reserved for future services.
- Remaining ranges within `10.100.0.0/16` remain available for growth.

## PNETLab / on-premises reservation
- Recommended aggregate: `10.200.0.0/16`
- Do not create overlapping networks with the AWS VPC.

## Related work item
- Issue #4 — [US-03] AWS Network Foundation
- TASK-09 — Define VPC CIDR
