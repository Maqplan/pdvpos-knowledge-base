---
title: PDV SmartPOS - Histórico de Vendas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](07-CAIXA.md) | [Proximo](09-HISTORICO-DE-CAIXAS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 08 HISTORICO DE VENDAS
<!-- NAVIGATION:END -->

# 08 - Histórico de Vendas

O módulo **Histórico de Vendas** permite consultar todas as vendas realizadas pelo **PDV SmartPOS**, independentemente do período em que foram efetuadas.

Além da consulta, o operador pode visualizar os detalhes completos da venda, reimprimir comprovantes, cancelar operações quando autorizado e acompanhar a situação fiscal e de sincronização de cada transação.

Este módulo funciona como uma central de auditoria operacional, permitindo rastrear todas as vendas realizadas pelo equipamento.

---

## Objetivo

Apresentar o funcionamento do histórico de vendas, demonstrando como consultar operações, visualizar detalhes, reimprimir documentos e acompanhar o estado operacional de cada venda.

---

# Visão Geral

O histórico reúne todas as vendas registradas pelo **PDV SmartPOS**.

Cada registro apresenta informações resumidas como:

- Número da venda;
- Cliente;
- Data e hora;
- Valor total;
- Situação da venda;
- Documento fiscal;
- Situação da sincronização.

Ao selecionar uma venda, o sistema apresenta todos os seus detalhes.

---

# Consulta por Período

As vendas podem ser localizadas utilizando períodos personalizados.

O operador informa:

- Data Inicial;
- Data Final.

Também existem atalhos para períodos frequentes.

Exemplos:

- Hoje;
- Últimos 7 dias;
- Mês Atual;
- Mês Anterior.

---

# Filtros

O histórico permite localizar rapidamente vendas específicas.

## Situação

- Todas;
- Finalizadas;
- Canceladas;
- Pendentes de sincronização.

---

## Cliente

Consulta vendas realizadas para um cliente específico.

---

## Documento Fiscal

Permite localizar operações conforme o tipo de documento emitido.

Exemplos:

- NFC-e;
- NF-e;
- NFS-e;
- Venda Não Fiscal.

---

# Resumo Financeiro

Antes da listagem das vendas, o sistema apresenta um resumo do período consultado.

Entre as informações disponíveis:

- Quantidade de vendas;
- Valor vendido;
- Quantidade de cancelamentos;
- Valor cancelado.

Esse resumo auxilia gestores e operadores na conferência rápida da movimentação.

---

# Consulta dos Detalhes

Ao selecionar uma venda, o **PDV SmartPOS** apresenta todas as informações da operação.

Entre elas:

- Cliente;
- Operador;
- Produtos vendidos;
- Quantidades;
- Valores;
- Descontos;
- Acréscimos;
- Formas de pagamento;
- Documento fiscal;
- Data e hora;
- Observações.

Mesmo vendas canceladas permanecem disponíveis para consulta.

---

# Situação da Venda

Cada venda possui indicadores independentes para facilitar a auditoria.

São apresentados estados específicos para:

## Venda

- Finalizada;
- Cancelada.

---

## Documento Fiscal

- Emitido;
- Não emitido;
- Cancelado;
- Pendente.

---

## Pagamentos

- Confirmados;
- Pendentes.

---

## Sincronização

- Sincronizada;
- Pendente;
- Erro de comunicação.

Essa arquitetura baseada em estados independentes permite identificar exatamente qual etapa da venda necessita de atenção.

---

# Reimpressão de Documentos

O módulo permite reimprimir documentos relacionados à venda.

Dependendo da configuração da empresa poderão ser reimpressos:

- comprovante da venda;
- comprovante não fiscal;
- NFC-e;
- DANFE da NF-e;
- comprovantes TEF;
- comprovantes adicionais.

Essa funcionalidade elimina a necessidade de localizar novamente a venda no caixa.

---

# Cancelamento de Venda

Quando permitido pelas configurações do sistema e pelas permissões do operador, uma venda poderá ser cancelada diretamente pelo histórico.

Durante o cancelamento o sistema executa automaticamente todas as validações necessárias.

Dependendo da operação poderão ocorrer:

- cancelamento do documento fiscal;
- estorno financeiro;
- atualização do estoque;
- sincronização com o ERP.

Todas as etapas permanecem registradas para auditoria.

---

# Nova Tentativa de Processamento

Caso alguma etapa da venda não tenha sido concluída com sucesso, o **PDV SmartPOS** permite realizar uma nova tentativa.

Essa funcionalidade pode ser utilizada para:

- retransmitir documentos fiscais;
- reenviar informações ao ERP;
- concluir sincronizações pendentes.

O sistema processa apenas as etapas que ainda não foram concluídas, preservando todas as demais informações da venda.

---

# Operação Offline

Mesmo sem acesso à internet, todas as vendas permanecem disponíveis para consulta.

Caso existam operações pendentes de sincronização, elas serão identificadas visualmente.

Quando a comunicação for restabelecida, o sistema sincroniza automaticamente:

- vendas;
- cancelamentos;
- documentos fiscais;
- pagamentos.

---

# Auditoria

O histórico preserva todas as informações necessárias para auditoria.

Entre elas:

- operador responsável;
- data e hora;
- cliente;
- produtos;
- pagamentos;
- documento fiscal;
- cancelamentos;
- sincronização.

Essa rastreabilidade permite acompanhar todo o ciclo de vida da venda.

---

# Fluxo Operacional

```text
Venda Finalizada

        │

        ▼

Histórico de Vendas

        │

        ▼

Consulta

        │

        ▼

Detalhes

        │

        ├───────────────┐
        ▼               ▼

Reimpressão      Cancelamento

        │               │
        └───────┬───────┘
                ▼

Sincronização com ERP
```

---

# Benefícios

O módulo Histórico de Vendas oferece importantes recursos de consulta e auditoria.

- Consulta rápida de vendas.
- Pesquisa por período.
- Filtros por situação.
- Visualização completa da operação.
- Reimpressão de documentos.
- Cancelamento de vendas.
- Acompanhamento da emissão fiscal.
- Controle da sincronização.
- Auditoria completa.
- Funcionamento offline.

---

## Conclusão

O módulo **Histórico de Vendas** complementa o processo operacional do **PDV SmartPOS**, oferecendo uma visão completa de todas as vendas realizadas.

Além da consulta, ele permite acompanhar o estado operacional de cada transação, reimprimir documentos, cancelar vendas e verificar a situação da sincronização com o ERP, tornando-se uma importante ferramenta para operadores, supervisores e gestores.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](09-HISTORICO-DE-CAIXAS.md)
---
**Navegacao:** [Anterior](07-CAIXA.md) | [Inicio](../../README.md) | [Proximo](09-HISTORICO-DE-CAIXAS.md)
<!-- NAVIGATION_FOOTER:END -->

