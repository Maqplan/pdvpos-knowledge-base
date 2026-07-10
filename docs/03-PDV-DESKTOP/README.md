<!-- NAVIGATION:START -->
---
[README principal](../../README.md) | [PDV Desktop](00-APRESENTACAO.md) | [Modules Index](../00-INTRODUCTION/MODULES-INDEX.md)
---
> **Breadcrumbs:** [Início](../../README.md) / [PDV Desktop](README.md)
<!-- NAVIGATION:END -->

# PDV Desktop

> Sistema de Frente de Caixa para o ecossistema PDVPOS

O **PDV Desktop** é um sistema de frente de caixa desenvolvido para operações de varejo de diferentes segmentos, oferecendo alta performance, funcionamento **Offline First**, emissão de documentos fiscais, integração com meios de pagamento e sincronização automática com o ERP.

Sua arquitetura baseada em banco de dados local permite que a operação continue normalmente mesmo durante indisponibilidades de internet, sincronizando automaticamente as informações quando a comunicação é restabelecida.

---

# Visão Geral

O PDV Desktop foi projetado para atender empresas de diferentes portes utilizando uma única base tecnológica.

Através de parametrizações é possível adaptar seu funcionamento para diversos segmentos, como:

- Comércio em Geral
- Loja de Vestuário
- Supermercados
- Padarias
- Conveniências
- Restaurantes
- Pizzarias
- Lanchonetes
- Cafeterias
- Material de Construção
- Prestadores de Serviços
- Redes de Lojas

---

# Principais Características

- Operação Offline First
- Banco de Dados Local
- Sincronização Inteligente com ERP
- Emissão de NFC-e, NF-e e NFS-e
- Integração com ConnectTEF
- Pagamento Misto
- PIX Integrado
- Pedido de Venda
- Orçamentos
- Delivery
- Encomendas
- Mesas e Comandas
- Impressão para Produção
- Consulta de Estoque entre Filiais
- Conferência de Caixa
- Trocas Integradas
- Arquitetura Multiempresa

---

# Arquitetura Geral

```text
                          ERP

                           │

                    Sincronização

                           │

             ┌─────────────┼─────────────┐

             ▼             ▼             ▼

         PDV 01        PDV 02        PDV 03

             │             │             │

             └─────────────┼─────────────┘

                    Banco Local

                           │

                           ▼

                     Operação Offline
```

---

# Fluxo Operacional

```text
				 Cliente

					│

					▼

				  Venda

					│

 ┌──────────────────┬──────────────┐

 ▼                  ▼              ▼

Pedido          Delivery         Mesa

 │                  │              │

 └──────────────────┴──────────────┘
	
					▼

				Pagamento

					▼

			Documento Fiscal

					▼

			Sincronização

					▼

					ERP
```

---

# Estrutura da Documentação

| Documento | Descrição |
|------------|-----------|
| [00-APRESENTACAO.md](00-APRESENTACAO.md) | Apresentação do PDV Desktop |
| [01-ARQUITETURA.md](01-ARQUITETURA.md) | Arquitetura da solução |
| [02-OPERACAO-DE-CAIXA.md](02-OPERACAO-DE-CAIXA.md) | Abertura, fechamento e conferência de caixa |
| [03-VENDAS.md](03-VENDAS.md) | Processo completo de vendas |
| [04-PEDIDOS-E-ORCAMENTOS.md](04-PEDIDOS-E-ORCAMENTOS.md) | Pedidos, pré-vendas e orçamentos |
| [05-MESAS-E-COMANDAS.md](05-MESAS-E-COMANDAS.md) | Atendimento para restaurantes |
| [06-DELIVERY-E-ENCOMENDAS.md](06-DELIVERY-E-ENCOMENDAS.md) | Controle de entregas e encomendas |
| [07-PRODUCAO.md](07-PRODUCAO.md) | Impressão para cozinha e produção |
| [08-SINCRONIZACAO.md](08-SINCRONIZACAO.md) | Arquitetura Offline First |
| [09-DOCUMENTOS-FISCAIS.md](09-DOCUMENTOS-FISCAIS.md) | NFC-e, NF-e e NFS-e |
| [10-TEF-E-PAGAMENTOS.md](10-TEF-E-PAGAMENTOS.md) | Recebimentos e integração com ConnectTEF |
| [11-OPERACOES-DE-CAIXA.md](11-OPERACOES-DE-CAIXA.md) | Operações administrativas do caixa |
| [12-RELATORIOS.md](12-RELATORIOS.md) | Relatórios operacionais e gerenciais |
| [13-TROCAS-E-DEVOLUCOES.md](13-TROCAS-E-DEVOLUCOES.md) | Trocas, devoluções e crédito ao cliente |
| [14-DIFERENCIAIS.md](14-DIFERENCIAIS.md) | Principais diferenciais da plataforma |
| [15-CONFIGURACAO-INICIAL.md](15-CONFIGURACAO-INICIAL.md) | Assistente de configuração do PDV |
| [16-ATALHOS-E-PRODUTIVIDADE.md](16-ATALHOS-E-PRODUTIVIDADE.md) | Atalhos e comandos rápidos |
| [17-FLUXOS-OPERACIONAIS.md](17-FLUXOS-OPERACIONAIS.md) | Fluxos operacionais completos |

---

# Conceitos Fundamentais

O PDV Desktop foi desenvolvido sobre quatro pilares principais:

## Operação Offline First

A loja continua funcionando mesmo sem internet.

---

## Motor Transacional Único

Pedidos, vendas, mesas, delivery e encomendas utilizam a mesma arquitetura operacional.

---

## Integração Total

Todas as operações permanecem sincronizadas com:

- ERP
- ConnectTEF
- Estoque
- Financeiro
- Fiscal

---

## Configuração por Perfil

O mesmo executável atende diferentes segmentos apenas através de parametrização.

---

# Público-Alvo

O PDV Desktop é indicado para:

- Pequeno Varejo
- Médio Varejo
- Redes de Lojas
- Franquias
- Restaurantes
- Prestadores de Serviços

---

# Diferenciais

- Arquitetura Offline First
- Banco de Dados Local
- Alta Performance
- Sincronização Inteligente
- Integração Completa com ERP
- Integração Nativa com ConnectTEF
- Emissão Fiscal Integrada
- Impressão Distribuída para Produção
- Multiempresa
- Consulta de Estoque entre Filiais
- Produtos Configuráveis
- Conferência às Cegas
- Pagamento Misto
- PIX Integrado

---

# Documentação Relacionada

Além desta documentação, o ecossistema possui documentação específica para:

- ERP Web
- ConnectTEF
- One PDV
- APIs de Integração
- Reforma Tributária
- White Label

---

# Licenciamento

Este documento faz parte da documentação oficial do ecossistema **PDVPOS**.

Consulte também o **README principal** para acessar os demais componentes da plataforma.
---
### Veja também

- [README](../../README.md)
- [Modules Index](../00-INTRODUCTION/MODULES-INDEX.md)

---
**Navegação:** [Início](../../README.md) | [PDV Desktop](README.md) | **Próximo:** [00 - Apresentação](00-APRESENTACAO.md)
<!-- NAVIGATION_FOOTER:END -->
