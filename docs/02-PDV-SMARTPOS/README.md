---
title: PDV SmartPOS
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
[README principal](../../README.md) | [Índice da documentação](README.md) | Anterior | [Próximo](00-APRESENTACAO.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / README
<!-- NAVIGATION:END -->

# PDV SmartPOS

> Official Product Documentation

O **PDV SmartPOS** é a solução de frente de caixa para dispositivos Android SmartPOS do ecossistema **PDVPOS ERP**.

Projetado para oferecer mobilidade, produtividade e operação contínua, o PDV SmartPOS permite realizar vendas, recebimentos, emissão de documentos fiscais, gerenciamento de pedidos, controle de caixa e sincronização automática com o ERP, mesmo em cenários de operação offline.

A documentação deste módulo apresenta toda a arquitetura, funcionalidades, fluxos operacionais e diferenciais do produto.

---

# Índice da Documentação

## Conhecendo o Produto

| Documento | Descrição |
|-----------|-----------|
| [00-APRESENTACAO.md](00-APRESENTACAO.md) | Visão geral do PDV SmartPOS, segmentos atendidos e principais funcionalidades. |
| [01-ARQUITETURA.md](01-ARQUITETURA.md) | Arquitetura da aplicação, banco local, sincronização, integração com ERP e operação offline. |
| [02-CONFIGURACAO.md](02-CONFIGURACAO.md) | Configuração inicial, parametrização e recursos disponíveis no aplicativo. |

---

## Operação Comercial

| Documento | Descrição |
|-----------|-----------|
| [03-VENDAS.md](03-VENDAS.md) | Processo completo de vendas, carrinho, pagamentos e emissão fiscal. |
| [04-CARRINHO.md](04-CARRINHO.md) | Gerenciamento do carrinho de compras, descontos, observações e edição de itens. |
| [05-PEDIDOS-DE-VENDA.md](05-PEDIDOS-DE-VENDA.md) | Pedidos, orçamentos, pré-vendas e integração entre ERP, PDV Desktop e PDV SmartPOS. |
| [06-MESAS-E-COMANDAS.md](06-MESAS-E-COMANDAS.md) | Gestão de mesas, comandas e atendimento para restaurantes e estabelecimentos similares. |

---

## Operação Financeira

| Documento | Descrição |
|-----------|-----------|
| [07-CAIXA.md](07-CAIXA.md) | Operações de caixa, abertura, fechamento, sangrias, suprimentos e conferência. |
| [08-HISTORICO-DE-VENDAS.md](08-HISTORICO-DE-VENDAS.md) | Consulta de vendas, auditoria, cancelamentos e reimpressão de documentos. |
| [09-HISTORICO-DE-CAIXAS.md](09-HISTORICO-DE-CAIXAS.md) | Histórico dos caixas, consultas e acesso aos detalhes das movimentações. |

---

## Cadastros

| Documento | Descrição |
|-----------|-----------|
| [10-CLIENTES.md](10-CLIENTES.md) | Cadastro e manutenção de clientes diretamente no PDV SmartPOS. |
| [11-ESTOQUE.md](11-ESTOQUE.md) | Estrutura do estoque e organização do catálogo. |
| [12-PRODUTOS.md](12-PRODUTOS.md) | Cadastro de produtos e serviços, preços, estoque e informações fiscais. |
| [13-GRUPOS-E-CATEGORIAS.md](13-GRUPOS-E-CATEGORIAS.md) | Organização hierárquica do catálogo em até cinco níveis. |

---

## Fiscal e Pagamentos

| Documento | Descrição |
|-----------|-----------|
| [14-DOCUMENTOS-FISCAIS.md](14-DOCUMENTOS-FISCAIS.md) | Emissão de NFC-e, NF-e, NFS-e, contingência e cancelamentos. |
| [15-PAGAMENTOS-E-TEF.md](15-PAGAMENTOS-E-TEF.md) | Múltiplas formas de pagamento, PIX, TEF, cartões, troco e integração financeira. |

---

## Infraestrutura

| Documento | Descrição |
|-----------|-----------|
| [16-SINCRONIZACAO.md](16-SINCRONIZACAO.md) | Sincronização automática entre o PDV SmartPOS e o ERP. |
| [17-OPERACAO-OFFLINE.md](17-OPERACAO-OFFLINE.md) | Funcionamento offline, contingência e continuidade operacional. |
| [18-CONFIGURACOES.md](18-CONFIGURACOES.md) | Configurações avançadas, recursos habilitados e parametrizações da aplicação. |

---

## Administração

| Documento | Descrição |
|-----------|-----------|
| [19-RELATORIOS-E-IMPRESSAO.md](19-RELATORIOS-E-IMPRESSAO.md) | Relatórios operacionais, comprovantes, cupons e reimpressões. |
| [20-DIFERENCIAIS.md](20-DIFERENCIAIS.md) | Principais diferenciais competitivos do PDV SmartPOS. |
| [21-FLUXOS-OPERACIONAIS.md](21-FLUXOS-OPERACIONAIS.md) | Fluxos completos das principais operações realizadas pelo aplicativo. |

---

# Principais Capacidades

O **PDV SmartPOS** reúne em um único aplicativo funcionalidades normalmente distribuídas entre diversos sistemas.

Entre seus principais recursos destacam-se:

- Operação totalmente touch.
- Funcionamento offline.
- Banco de dados local.
- Sincronização automática com o ERP.
- Cadastro de clientes.
- Cadastro de produtos.
- Cadastro de grupos e categorias.
- Gestão de pedidos de venda.
- Gestão de mesas e comandas.
- Controle completo de caixa.
- Histórico de vendas.
- Histórico de caixas.
- Emissão de NFC-e.
- Emissão de NF-e.
- Emissão de NFS-e.
- Integração nativa com ConnectTEF.
- Múltiplas formas de pagamento.
- Impressão de comprovantes.
- Impressão de documentos fiscais.
- Integração com impressoras de produção.
- Operação "Papa Fila".
- Continuidade da venda em qualquer terminal.
- Integração total com o ERP e o PDV Desktop.

---

# Diferenciais

O **PDV SmartPOS** foi concebido para atuar como uma extensão operacional do ERP, permitindo que vendedores, operadores e gestores executem grande parte das atividades da loja diretamente em um dispositivo SmartPOS.

Entre seus principais diferenciais estão:

- Emissão de **NFC-e**, **NF-e** e **NFS-e** no próprio equipamento.
- Compartilhamento de pedidos entre ERP, PDV Desktop e PDV SmartPOS.
- Operação offline com sincronização automática.
- Arquitetura baseada em banco de dados local.
- Interface otimizada para dispositivos Android SmartPOS.
- Operação completa utilizando apenas a tela sensível ao toque.
- Integração nativa com o ecossistema **PDVPOS ERP**.

---

# Ordem Recomendada de Leitura

Para conhecer toda a plataforma, recomenda-se a seguinte sequência:

1. Apresentação
2. Arquitetura
3. Configuração
4. Vendas
5. Pedidos de Venda
6. Caixa
7. Clientes
8. Produtos
9. Documentos Fiscais
10. Pagamentos
11. Sincronização
12. Operação Offline
13. Diferenciais
14. Fluxos Operacionais

---

> Esta documentação foi elaborada para servir simultaneamente como:

- Manual Oficial do Produto.
- Guia de Implantação.
- Base de Conhecimento.
- Material para Treinamentos.
- Referência Técnica.
- Fonte de conhecimento para Inteligência Artificial (LLMs / RAG).

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README principal](../../README.md)
- [Índice da documentação](README.md)
- [Próximo](00-APRESENTACAO.md)
---
**Navegação:** Anterior | [Início](../../README.md) | [Próximo](00-APRESENTACAO.md)
<!-- NAVIGATION_FOOTER:END -->

