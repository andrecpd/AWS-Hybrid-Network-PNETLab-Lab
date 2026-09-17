# Sprint 1 — AWS Foundation

## Sprint Goal
Estabelecer a fundação da infraestrutura AWS para o laboratório híbrido AWS + PNETLab, com controle de custos, identidade, rede base e Infrastructure as Code.

## Epic
### EPIC-01 — AWS Foundation
Criar uma base AWS segura, documentada e reproduzível para suportar as próximas etapas do laboratório: Active Directory, Cisco ISE, VPN Site-to-Site e integração com a filial PNETLab.

## User Stories

### US-01 — AWS Cost Governance
**Como** administrador do laboratório,
**quero** configurar controles de custos e alertas,
**para** evitar consumo inesperado dos créditos AWS.

#### Tasks
- TASK-01 — Revisar créditos e Billing Dashboard
- TASK-02 — Criar AWS Budget
- TASK-03 — Configurar alertas de custo
- TASK-04 — Documentar limites de custo do laboratório

#### Acceptance Criteria
- Budget criado.
- Alertas de custo ativos.
- Limite financeiro documentado.

---

### US-02 — IAM Foundation
**Como** administrador da cloud,
**quero** definir uma base segura de identidade e acesso,
**para** evitar o uso diário da conta root e aplicar menor privilégio.

#### Tasks
- TASK-05 — Proteger conta root com MFA
- TASK-06 — Criar usuário/role administrativo para laboratório
- TASK-07 — Revisar permissões IAM
- TASK-08 — Documentar padrão de acesso

#### Acceptance Criteria
- Root protegido com MFA.
- Acesso administrativo separado da conta root.
- Permissões documentadas.

---

### US-03 — AWS Network Foundation
**Como** engenheiro de redes,
**quero** criar a rede base na AWS,
**para** hospedar os serviços do laboratório e posteriormente conectá-los ao PNETLab.

#### Tasks
- TASK-09 — Definir CIDR da VPC
- TASK-10 — Criar VPC
- TASK-11 — Criar subnets públicas e privadas
- TASK-12 — Criar Internet Gateway
- TASK-13 — Criar Route Tables
- TASK-14 — Criar Security Groups base
- TASK-15 — Validar conectividade
- TASK-16 — Documentar plano de endereçamento

#### Acceptance Criteria
- VPC criada com CIDR documentado.
- Subnets públicas e privadas separadas.
- Tabelas de rotas associadas corretamente.
- Security Groups base definidos.
- Conectividade validada.

---

### US-04 — Terraform Foundation
**Como** engenheiro NetDevOps,
**quero** provisionar a infraestrutura AWS com Terraform,
**para** tornar o ambiente reproduzível, versionado e automatizado.

#### Tasks
- TASK-17 — Preparar estrutura Terraform
- TASK-18 — Configurar AWS Provider
- TASK-19 — Criar variáveis e outputs
- TASK-20 — Implementar VPC em Terraform
- TASK-21 — Implementar subnets e rotas em Terraform
- TASK-22 — Executar terraform fmt e terraform validate
- TASK-23 — Executar terraform plan
- TASK-24 — Executar terraform apply
- TASK-25 — Registrar evidências do deployment

#### Acceptance Criteria
- Código Terraform versionado no GitHub.
- `terraform fmt` sem pendências.
- `terraform validate` executado com sucesso.
- `terraform plan` revisado.
- Infraestrutura criada via Terraform.
- Evidências armazenadas no projeto.

## Definition of Done
Uma User Story será considerada concluída quando:

- Todos os critérios de aceite forem atendidos.
- As Tasks relacionadas estiverem concluídas.
- A configuração estiver documentada.
- Evidências técnicas estiverem registradas quando aplicável.
- Nenhuma credencial, token, chave privada ou segredo estiver commitado no GitHub.

## Kanban Workflow

```text
Backlog -> Ready -> In Progress -> Review / Test -> Done
```

## Sprint Deliverable
Ao final da Sprint 1, o laboratório deverá possuir uma fundação AWS segura, controlada financeiramente e provisionável via Terraform, pronta para receber os serviços da Sprint 2.
