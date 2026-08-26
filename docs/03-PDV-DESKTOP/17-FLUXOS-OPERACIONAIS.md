---
title: PDV Desktop - Fluxos Operacionais
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](16-ATALHOS-E-PRODUTIVIDADE.md) | Proximo
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 17 FLUXOS OPERACIONAIS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 17 - Fluxos Operacionais

---

# Objetivo

Este documento apresenta os principais fluxos operacionais suportados pelo **PDV Desktop**, demonstrando como os módulos trabalham de forma integrada desde o atendimento ao cliente até a sincronização com o ERP.

Diferentemente de soluções que possuem processos independentes para cada tipo de operação, o PDV Desktop utiliza um **único motor transacional**, adaptando o fluxo conforme o tipo de atendimento realizado.

---

# Visão Geral

Todos os processos do PDV Desktop compartilham a mesma arquitetura.

A venda pode assumir diferentes estados durante seu ciclo de vida, preservando todas as informações registradas.

Essa abordagem reduz retrabalho, evita duplicidade de informações e simplifica o treinamento dos operadores.

---

# Arquitetura Geral

```text
                    CLIENTE

                       │

                       ▼

                Atendimento

                       │

                       ▼

               Motor de Vendas

                       │

      ┌────────────────┼────────────────┐

      ▼                ▼                ▼

   Venda           Pedido          Orçamento

      │                │                │

      └────────────────┼────────────────┘

                       ▼

             Recebimento / Pagamento

                       ▼

             Documento Fiscal

                       ▼

                Sincronização

                       ▼

                     ERP
```

---

# Fluxo de Venda Convencional

```text
Cliente

    │

    ▼

Nova Venda

    │

    ▼

Inclusão dos Produtos

    │

    ▼

Cliente (Opcional)

    │

    ▼

Pagamento

    │

    ▼

Documento Fiscal

    │

    ▼

ERP
```

---

# Fluxo de Pedido

```text
Nova Venda

      │

      ▼

Produtos

      │

      ▼

F4

Salvar Pedido

      │

      ▼

Pedido Aberto

      │

      ▼

Reabertura

      │

      ▼

Pagamento

      │

      ▼

Documento Fiscal

      │

      ▼

ERP
```

---

# Fluxo de Orçamento

```text
Orçamento

      │

      ▼

Cliente Analisa

      │

      ▼

Aprovado

      │

      ▼

Conversão em Venda

      │

      ▼

Pagamento

      │

      ▼

Documento Fiscal

      │

      ▼

ERP
```

---

# Fluxo de Mesas e Comandas

```text
Cliente

      │

      ▼

Mesa / Comanda

      │

      ▼

Inclusão de Produtos

      │

      ▼

Produção

      │

      ▼

Novos Consumos

      │

      ▼

Solicitação da Conta

      │

      ▼

Pagamento

      │

      ▼

Documento Fiscal

      │

      ▼

Mesa Livre
```

---

# Fluxo de Delivery

```text
Pedido

      │

      ▼

Produção

      │

      ▼

Separação

      │

      ▼

Despacho

      │

      ▼

Entrega

      │

      ▼

Documento Fiscal

      │

      ▼

ERP
```

---

# Fluxo de Encomenda

```text
Venda

      │

      ▼

Agendamento

      │

      ▼

Aguardando Data

      │

      ▼

Preparação

      │

      ▼

Entrega ou Retirada

      │

      ▼

Conclusão
```

---

# Fluxo de Produção

```text
Venda

      │

      ▼

Produto Configurável

      │

      ▼

Componentes

      │

      ▼

Observações

      │

      ▼

Separação por Setor

      │

      ▼

Impressão

      │

      ▼

Produção
```

---

# Fluxo de Pagamento

```text
Venda

      │

      ▼

Tela de Pagamentos

      │

      ▼

Dinheiro

PIX

Cartão

TEF

Crediário

Convênio

      │

      ▼

Quitação

      │

      ▼

Documento Fiscal
```

---

# Fluxo de Emissão Fiscal

```text
Venda

      │

      ▼

Pagamento

      │

      ▼

Geração XML

      │

      ▼

Assinatura

      │

      ▼

SEFAZ

      │

      ▼

Autorização

      │

      ▼

Impressão

      │

      ▼

ERP
```

---

# Fluxo em Contingência Offline

```text
Venda

      │

      ▼

NFC-e Offline

      │

      ▼

Cliente

      │

Internet Retorna

      ▼

SEFAZ

      │

      ▼

ERP
```

---

# Fluxo de Sincronização

```text
ERP

      │

      ▼

Serviço de Sincronização

      │

      ▼

PDV Desktop

      │

      ▼

Banco Local

      │

      ▼

Operação

      │

      ▼

Fila de Sincronização

      │

      ▼

ERP
```

---

# Fluxo de Troca de Mercadoria

```text
Venda Original

      │

      ▼

Localização

      │

      ▼

Produtos Devolvidos

      │

      ▼

Crédito

      │

      ▼

Nova Venda

      │

      ▼

NF de Entrada

      │

      ▼

Estoque

      │

      ▼

ERP
```

---

# Fluxo de Fechamento de Caixa

```text
Abertura

      │

      ▼

Vendas

      │

      ▼

Sangrias

      │

      ▼

Suprimentos

      │

      ▼

Conferência

      │

      ▼

Fechamento

      │

      ▼

Relatórios

      │

      ▼

ERP
```

---

# Fluxo Completo do Ecossistema

```text
Cliente

      │

      ▼

PDV Desktop

      │

      ▼

Pedido

Mesa

Delivery

Encomenda

Venda

      │

      ▼

Pagamento

      │

      ▼

TEF / PIX

      │

      ▼

Documento Fiscal

      │

      ▼

Sincronização

      │

      ▼

ERP

      │

      ▼

Financeiro

Estoque

Fiscal

Relatórios

Indicadores
```

---

# Filosofia Operacional

Todos os fluxos apresentados neste documento compartilham uma característica fundamental:

**Existe apenas um único motor transacional.**

Isso significa que:

- uma venda pode tornar-se um pedido;
- um pedido pode tornar-se delivery;
- uma venda pode gerar uma Ordem de Serviço;
- uma mesa pode transformar-se em uma venda;
- uma devolução gera automaticamente atualização fiscal e financeira.

O operador não precisa aprender processos diferentes para cada situação.

---

# Benefícios

- Fluxos padronizados.
- Baixo tempo de treinamento.
- Operação intuitiva.
- Redução de erros.
- Integração automática.
- Continuidade operacional.
- Sincronização transparente.
- Arquitetura escalável.

---

# Diferenciais

A principal característica do PDV Desktop é utilizar um **único fluxo operacional** para atender diferentes segmentos do varejo.

Essa arquitetura reduz significativamente a complexidade da aplicação, simplifica a implantação, diminui o custo de treinamento e garante que todos os módulos compartilhem a mesma lógica de funcionamento.

Pedidos, mesas, delivery, encomendas, pagamentos, documentos fiscais e sincronização deixam de ser módulos independentes e passam a representar apenas etapas diferentes do mesmo processo operacional.

---

# Conclusão

Os fluxos operacionais apresentados demonstram como o PDV Desktop integra atendimento, pagamento, emissão fiscal, estoque e ERP em uma única plataforma.

Essa arquitetura permite que empresas de diferentes segmentos utilizem exatamente o mesmo sistema, adaptando apenas suas configurações operacionais, preservando simplicidade para o operador e robustez para a gestão.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Anterior](16-ATALHOS-E-PRODUTIVIDADE.md)
---
**Navegacao:** [Anterior](16-ATALHOS-E-PRODUTIVIDADE.md) | [Inicio](../../README.md) | Proximo
<!-- NAVIGATION_FOOTER:END -->

