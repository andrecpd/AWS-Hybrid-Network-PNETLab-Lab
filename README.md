# 🚀 Hybrid Enterprise Network Lab — AWS + PNETLab

![Network](https://img.shields.io/badge/Network-Engineering-blue)
![Cloud](https://img.shields.io/badge/AWS-Cloud-orange)
![Security](https://img.shields.io/badge/Security-Cisco%20ISE-red)
![SDWAN](https://img.shields.io/badge/SD--WAN-FortiGate-green)
![Automation](https://img.shields.io/badge/Automation-NetDevOps-yellow)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![GitHub](https://img.shields.io/badge/GitHub-Versionamento-black)

---

## 📌 Sobre o Projeto

Este repositório apresenta um laboratório completo de **Redes Corporativas, Segurança, Cloud Networking e NetDevOps**, desenvolvido para simular uma infraestrutura híbrida Enterprise real.

O projeto integra um ambiente local desenvolvido no **PNETLab** com recursos provisionados na **Amazon Web Services — AWS**.

O laboratório será utilizado para estudar, implementar e documentar tecnologias como:

- AWS Networking
- Cisco ISE
- Microsoft Active Directory
- RADIUS
- 802.1X
- MAB
- Routing
- Switching
- VLAN
- VPN IPsec
- Firewall
- SD-WAN
- Alta disponibilidade de links
- Network Security
- Troubleshooting
- NetDevOps
- Infrastructure as Code
- Terraform
- GitHub
- Automação

O ambiente local será desenvolvido utilizando **PNETLab**, permitindo simular equipamentos e redes corporativas em um ambiente controlado.

---

# 🎯 Objetivos

O principal objetivo deste projeto é desenvolver e documentar uma infraestrutura corporativa híbrida utilizando tecnologias de redes, segurança e cloud.

Principais objetivos:

- Criar uma infraestrutura de rede na AWS.
- Implantar Microsoft Active Directory.
- Implantar Cisco ISE na AWS.
- Integrar Cisco ISE com Active Directory.
- Criar uma filial virtual utilizando PNETLab.
- Implementar firewall FortiGate ou Palo Alto.
- Implementar SD-WAN com dois links de Internet.
- Criar VPN IPsec Site-to-Site entre PNETLab e AWS.
- Configurar VLANs na filial.
- Implementar autenticação RADIUS.
- Implementar 802.1X.
- Implementar MAB.
- Criar políticas de acesso utilizando Cisco ISE.
- Testar failover entre ISP1 e ISP2.
- Realizar troubleshooting.
- Monitorar logs e autenticações.
- Documentar todo o ambiente.
- Aplicar Scrum e Kanban no gerenciamento do projeto.

---

# 🏗️ Arquitetura

A arquitetura será dividida em dois ambientes principais:

```text
                        AWS CLOUD
                    10.10.0.0/16
                           |
            +-----------------------------+
            |                             |
     Active Directory                Cisco ISE
      10.10.10.10                   10.10.10.20
            |                             |
            +-------------+---------------+
                          |
                     VPN IPsec
                          |
                       Internet
                    /             \
                  ISP1            ISP2
                    \              /
                     \            /
                    +--------------+
                    |  FortiGate   |
                    |   SD-WAN     |
                    +------+-------+
                           |
                         Router
                           |
                         Switch
                           |
                    Windows / Linux
                         Clients
```

---

# 📁 Estrutura do Repositório

```text
AWS-Hybrid-Network-PNETLab-Lab/
├── README.md
├── docs/
│   ├── agile/
│   ├── architecture/
│   ├── diagrams/
│   └── troubleshooting/
├── aws/
│   ├── vpc/
│   ├── security-groups/
│   ├── active-directory/
│   └── cisco-ise/
├── terraform/
│   ├── environments/
│   ├── modules/
│   └── scripts/
├── pnetlab/
│   ├── firewall/
│   ├── routers/
│   ├── switches/
│   └── clients/
├── configs/
│   ├── fortigate/
│   ├── cisco/
│   └── ise/
├── automation/
│   ├── python/
│   └── ansible/
├── tests/
└── evidence/
    ├── screenshots/
    ├── logs/
    └── wireshark/
```
