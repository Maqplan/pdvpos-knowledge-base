<!-- NAVIGATION:START -->
---
[README principal](../../README.md) | [Introducao](MODULES-INDEX.md) | [Modules](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)
---
> **Breadcrumbs:** [Inicio](../../README.md) / [Introducao](MODULES-INDEX.md) / 
MODULES-INDEX
<!-- NAVIGATION:END -->

# PDVPOS ERP

> Official Product Documentation

# MODULES INDEX

Este documento apresenta uma visão resumida de todos os módulos disponíveis no PDVPOS ERP, facilitando a navegação pela documentação oficial da plataforma.

---

# Administração

| Documento | Descrição |
|------------|-----------|
| [03-GESTAO-DE-EMPRESAS](../01-FUNCTIONAL-MODULES/03-GESTAO-DE-EMPRESAS.md) | Administração das empresas, filiais, segmentos e configurações gerais da plataforma. |
| [04-GESTAO-DE-USUARIOS-E-PERMISSOES](../01-FUNCTIONAL-MODULES/04-GESTAO-DE-USUARIOS-E-PERMISSOES.md) | Controle de usuários, perfis de acesso, permissões granulares e segurança operacional. |

---

# Cadastros

| Documento | Descrição |
|------------|-----------|
| [05-GESTAO-DE-CLIENTES](../01-FUNCTIONAL-MODULES/05-GESTAO-DE-CLIENTES.md) | Cadastro de clientes, relacionamento comercial e histórico financeiro. |
| [06-GESTAO-DE-PRODUTOS-E-SERVICOS](../01-FUNCTIONAL-MODULES/06-GESTAO-DE-PRODUTOS-E-SERVICOS.md) | Gestão completa de produtos, serviços, preços, tributação, grades, estoque e integração comercial. |

---

# Operação

| Documento | Descrição |
|------------|-----------|
| [07-GESTAO-DE-ESTOQUE](../01-FUNCTIONAL-MODULES/07-GESTAO-DE-ESTOQUE.md) | Controle de estoque, depósitos, inventários, lotes, etiquetas e armazenagem. |
| [08-GESTAO-DE-COMPRAS](../01-FUNCTIONAL-MODULES/08-GESTAO-DE-COMPRAS.md) | Pedido de compra, entrada de NF-e, importação XML, custos e abastecimento. |
| [09-GESTAO-COMERCIAL-E-VENDAS](../01-FUNCTIONAL-MODULES/09-GESTAO-COMERCIAL-E-VENDAS.md) | Orçamentos, pedidos, vendas, faturamento, promoções, vendedores e PDVs. |

---

# Financeiro

| Documento | Descrição |
|------------|-----------|
| [10-GESTAO-FINANCEIRA](../01-FUNCTIONAL-MODULES/10-GESTAO-FINANCEIRA.md) | Receitas, despesas, fluxo de caixa, contas bancárias, centros de custo e DRE. |
| [11-GESTAO-DE-COBRANCAS](../01-FUNCTIONAL-MODULES/11-GESTAO-DE-COBRANCAS.md) | Boletos, PIX, cartões, links de pagamento, gateways e integração bancária. |

---

# Fiscal

| Documento | Descrição |
|------------|-----------|
| [12-GESTAO-FISCAL-E-DOCUMENTOS-ELETRONICOS](../01-FUNCTIONAL-MODULES/12-GESTAO-FISCAL-E-DOCUMENTOS-ELETRONICOS.md) | NF-e, NFC-e, NFS-e, Manifestação do Destinatário e documentos fiscais eletrônicos. |
| [13-GESTAO-DA-REFORMA-TRIBUTARIA](../01-FUNCTIONAL-MODULES/13-GESTAO-DA-REFORMA-TRIBUTARIA.md) | Configuração hierárquica da Reforma Tributária, Perfis Tributários e assistente de implantação. |
| [14-GESTAO-CONTABIL](../01-FUNCTIONAL-MODULES/14-GESTAO-CONTABIL.md) | Portal da Contabilidade, compartilhamento automático de arquivos fiscais e integração com escritórios contábeis. |

---

# Serviços

| Documento | Descrição |
|------------|-----------|
| [15-GESTAO-DE-SERVICOS-E-ORDENS-DE-SERVICO](../01-FUNCTIONAL-MODULES/15-GESTAO-DE-SERVICOS-E-ORDENS-DE-SERVICO.md) | Instalações, montagens, assistência técnica e Ordens de Serviço integradas às vendas. |

---

# Ecossistema

| Documento | Descrição |
|------------|-----------|
| [16-INTEGRACOES](../01-FUNCTIONAL-MODULES/16-INTEGRACOES.md) | APIs, Webhooks, SmartPOS, PDVs, ConnectTEF, e-commerce, marketplaces e parceiros. |

---

# Inteligência

| Documento | Descrição |
|------------|-----------|
| [17-RELATORIOS-E-INDICADORES](../01-FUNCTIONAL-MODULES/17-RELATORIOS-E-INDICADORES.md) | Dashboard, indicadores, consultas operacionais e relatórios gerenciais. |

---

# Fluxo Operacional da Plataforma

```text
Gestão de Empresas
        │
        ▼
Gestão de Usuários
        │
        ▼
Gestão de Clientes
        │
        ▼
Gestão de Produtos e Serviços
        │
        ▼
Gestão de Compras
        │
        ▼
Gestão de Estoque
        │
        ▼
Gestão Comercial e Vendas
        │
        ▼
Gestão Financeira
        │
        ▼
Gestão de Cobranças
        │
        ▼
Gestão Fiscal
        │
        ▼
Gestão Contábil
        │
        ▼
Relatórios e Indicadores
```

---

# Relação entre os Módulos

```text
Administração
│
├── Gestão de Empresas
└── Gestão de Usuários

Cadastros
│
├── Gestão de Clientes
└── Gestão de Produtos e Serviços

Operação
│
├── Gestão de Compras
├── Gestão de Estoque
└── Gestão Comercial e Vendas

Financeiro
│
├── Gestão Financeira
└── Gestão de Cobranças

Fiscal
│
├── Gestão Fiscal e Documentos Eletrônicos
├── Gestão da Reforma Tributária
└── Gestão Contábil

Serviços
│
└── Gestão de Serviços e Ordens de Serviço

Integrações
│
└── Ecossistema e APIs

Inteligência
│
└── Relatórios e Indicadores
```

---

# Ordem Recomendada de Leitura

Para compreender o funcionamento completo do PDVPOS ERP, recomenda-se a seguinte sequência de leitura:

1. Módulos da Plataforma
2. Gestão de Empresas
3. Gestão de Usuários e Permissões
4. Gestão de Clientes
5. Gestão de Produtos e Serviços
6. Gestão de Estoque
7. Gestão de Compras
8. Gestão Comercial e Vendas
9. Gestão Financeira
10. Gestão de Cobranças
11. Gestão Fiscal e Documentos Eletrônicos
12. Gestão da Reforma Tributária
13. Gestão Contábil
14. Gestão de Serviços e Ordens de Serviço
15. Integrações
16. Relatórios e Indicadores

---

# Objetivo da Documentação

A Official Product Documentation do PDVPOS ERP foi desenvolvida para servir como fonte oficial de conhecimento da plataforma.

Seu conteúdo pode ser utilizado para:

- Apresentações comerciais.
- Onboarding de clientes.
- Treinamento de colaboradores.
- Capacitação de parceiros.
- Implantação do sistema.
- Suporte técnico.
- Base de conhecimento para Inteligência Artificial.
- Produção de materiais institucionais.
- Desenvolvimento de integrações.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README](../../README.md)
- [Modules Index](MODULES-INDEX.md)
- [Apresentacao dos Modulos](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)
---
**Navegacao:** [Inicio](../../README.md) | [Introducao](MODULES-INDEX.md)
<!-- NAVIGATION_FOOTER:END -->
