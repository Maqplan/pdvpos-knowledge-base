---
title: PDV Desktop - Apresentação
classification: PUBLIC
owner: PDVPOS LTDA
version: "1.0"
last_updated: 2026-08-26
---

> **PROPRIEDADE INTELECTUAL**
>
> Conteúdo pertencente a PDVPOS LTDA.
> Esta documentação é disponibilizada para fins de consulta,
> utilização e suporte aos produtos e serviços PDVPOS.
> É proibida sua reprodução, redistribuição, comercialização
> ou utilização fora dessa finalidade sem autorização expressa.
>
> © 2026 PDVPOS LTDA. Todos os direitos reservados.

<!-- NAVIGATION:START -->
---
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](README.md) | [Proximo](01-ARQUITETURA.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 00 APRESENTACAO
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 00 - Apresentação

---

# Objetivo

O **PDV Desktop** é a aplicação de frente de caixa da plataforma PDVPOS ERP, desenvolvida para atender operações de varejo, alimentação, serviços e redes de lojas.

Sua arquitetura foi projetada para oferecer alta performance, operação contínua mesmo sem internet e integração completa com o ERP, permitindo que toda a operação comercial seja executada de forma simples, rápida e segura.

---

# Visão Geral

O PDV Desktop é responsável por toda a operação da loja.

Entre as principais atividades executadas estão:

- Venda de produtos e serviços.
- Controle operacional do caixa.
- Emissão de documentos fiscais.
- Recebimentos.
- Pedidos e orçamentos.
- Delivery.
- Mesas e comandas.
- Encomendas.
- Trocas de mercadorias.
- Consultas de produtos.
- Relatórios operacionais.

Todas essas operações permanecem integradas automaticamente ao ERP.

---

# Arquitetura

O PDV Desktop foi desenvolvido seguindo o conceito **Offline First**.

Cada terminal possui sua própria base de dados local, garantindo alto desempenho e continuidade da operação mesmo durante indisponibilidade da conexão com a internet.

A comunicação com o ERP ocorre através de um serviço de sincronização inteligente que mantém todas as informações atualizadas automaticamente.

```
                   ERP

                    │

      Serviço de Sincronização

                    │

      ┌─────────────┼─────────────┐

      ▼             ▼             ▼

   PDV 01        PDV 02        PDV 03
```

---

# Características da Plataforma

Entre as principais características do PDV Desktop destacam-se:

- Arquitetura Offline First.
- Banco de dados local.
- Sincronização automática com o ERP.
- Operação de alta performance.
- Configuração modular.
- Integração com documentos fiscais.
- Integração com meios de pagamento.
- Integração com produção.
- Suporte a múltiplos segmentos de negócio.

---

# Segmentos Atendidos

O mesmo PDV pode ser configurado para diferentes modelos de operação.

Entre eles:

- Comércio em geral.
- Supermercados.
- Padarias.
- Conveniências.
- Lojas de roupas.
- Calçados.
- Restaurantes.
- Lanchonetes.
- Pizzarias.
- Cafeterias.
- Prestadores de serviço.

O comportamento da aplicação é definido durante sua configuração inicial, sem necessidade de versões diferentes do sistema.

---

# Arquitetura Baseada em Perfis

O PDV Desktop utiliza uma única aplicação para diferentes tipos de operação.

Durante a configuração do terminal é possível definir seu perfil operacional.

Entre eles:

- Terminal de Caixa.
- Terminal Administrativo.
- Terminal de Atendimento.

Cada perfil disponibiliza apenas os recursos necessários para aquele tipo de operação.

---

# Integração com o Ecossistema

O PDV Desktop faz parte do ecossistema da plataforma e comunica-se automaticamente com outros componentes.

Entre eles:

- ERP Web.
- ConnectTEF.
- Serviços de sincronização.
- Equipamentos fiscais.
- Impressoras.
- Balanças.
- Impressoras de produção.
- APIs e integrações.

---

# Filosofia de Operação

O PDV Desktop foi concebido para minimizar a quantidade de etapas durante o atendimento.

A operação privilegia:

- atalhos de teclado;
- automação dos processos;
- sincronização transparente;
- poucos cliques;
- rapidez na venda;
- redução de erros operacionais.

Essa abordagem reduz o tempo de treinamento e aumenta a produtividade dos operadores.

---

# Organização da Documentação

Esta documentação está organizada por módulos funcionais.

Os próximos capítulos apresentam detalhadamente cada recurso da aplicação.

| Capítulo | Conteúdo |
|----------|----------|
| 01 | Arquitetura |
| 02 | Configuração Inicial |
| 03 | Operação de Caixa |
| 04 | Venda |
| 05 | Pedidos e Orçamentos |
| 06 | Mesas e Comandas |
| 07 | Delivery e Encomendas |
| 08 | Pagamentos |
| 09 | Documentos Fiscais |
| 10 | Cadastros |
| 11 | Relatórios |
| 12 | Sincronização |
| 13 | Integração com ERP |
| 14 | Trocas de Mercadorias |
| 15 | Diferenciais Competitivos |

---

# Diferenciais

O PDV Desktop foi desenvolvido para operar como uma extensão operacional do ERP, mantendo alta disponibilidade mesmo em ambientes com conexão instável.

Sua arquitetura combina:

- operação offline;
- sincronização automática;
- integração fiscal;
- integração financeira;
- controle operacional;
- alta produtividade.

Essa abordagem permite que empresas de diferentes segmentos utilizem a mesma plataforma sem necessidade de aplicações distintas.

---

# Benefícios

- Operação contínua mesmo sem internet.
- Alta velocidade de atendimento.
- Integração transparente com o ERP.
- Sincronização automática.
- Configuração para diferentes segmentos.
- Redução de retrabalho.
- Menor dependência de suporte.
- Escalabilidade para múltiplas lojas.

---

# Próximo Capítulo

**01 - Arquitetura**

Conheça a arquitetura do PDV Desktop, o conceito Offline First, o serviço de sincronização e como o sistema integra-se ao restante da plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](01-ARQUITETURA.md)
---
**Navegacao:** [Anterior](README.md) | [Inicio](../../README.md) | [Proximo](01-ARQUITETURA.md)
<!-- NAVIGATION_FOOTER:END -->

