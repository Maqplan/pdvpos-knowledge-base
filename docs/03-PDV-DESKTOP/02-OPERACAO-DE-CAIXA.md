---
title: PDV Desktop - Operação de Caixa
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](01-ARQUITETURA.md) | [Proximo](03-VENDAS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 02 OPERACAO DE CAIXA
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 02 - Operação de Caixa

---

# Objetivo

O módulo **Operação de Caixa** controla todo o ciclo operacional de uma sessão de caixa, desde sua abertura até o fechamento, registrando todas as movimentações financeiras realizadas durante o expediente.

Cada sessão permanece vinculada ao operador responsável, permitindo rastreabilidade completa das operações e integração automática com o ERP.

---

# Visão Geral

O caixa representa uma sessão operacional.

Durante essa sessão são registradas todas as movimentações financeiras realizadas no terminal.

Entre elas:

- abertura;
- vendas;
- recebimentos;
- sangrias;
- suprimentos;
- devoluções;
- cancelamentos;
- fechamento.

Todas essas informações permanecem registradas para auditoria e sincronização com o ERP.

---

# Fluxo Operacional

```text
Início do Expediente

        │

        ▼

Abertura do Caixa

        │

        ▼

Fundo de Caixa

        │

        ▼

Operação de Vendas

        │

 ┌──────┴───────────────┐
 │                      │
 ▼                      ▼

Sangrias           Suprimentos

        │

        ▼

Conferência

        │

        ▼

Fechamento

        │

        ▼

Relatório

        │

        ▼

Sincronização ERP
```

---

# Abertura de Caixa

Antes do início das vendas o operador realiza a abertura da sessão.

Nesta etapa o sistema registra:

- operador responsável;
- terminal;
- data;
- hora;
- valor inicial para troco (quando utilizado).

Cada abertura gera uma nova sessão independente.

---

# Fundo de Caixa

Durante a abertura pode ser informado o valor disponível para troco.

Esse valor passa a compor automaticamente a movimentação financeira da sessão.

---

# Sessão de Caixa

Após aberto, o caixa permanece disponível para todas as operações do terminal.

Durante esse período são registradas automaticamente:

- vendas;
- formas de pagamento;
- cancelamentos;
- devoluções;
- sangrias;
- suprimentos;
- demais movimentações financeiras.

---

# Sangrias

A sangria permite retirar valores do caixa durante o expediente.

É normalmente utilizada para:

- reduzir numerário;
- depósitos bancários;
- envio ao cofre;
- segurança operacional.

Cada operação registra:

- operador;
- data;
- horário;
- valor;
- forma de pagamento;
- observação.

---

# Suprimentos

O suprimento adiciona valores ao caixa durante a operação.

Pode ser utilizado para:

- reforço de troco;
- entrada autorizada de valores;
- ajustes operacionais.

Assim como a sangria, todas as informações permanecem registradas para auditoria.

---

# Conferência de Caixa

Ao final do expediente o operador realiza a conferência da sessão.

O sistema suporta dois modelos distintos.

## Conferência Assistida

O sistema apresenta os valores registrados durante a operação.

O operador apenas realiza a conferência física e confirma os totais.

---

## Conferência às Cegas

Quando habilitada, os valores esperados não são exibidos.

O operador deve informar manualmente quanto encontrou para cada forma de pagamento.

Após concluir a digitação, o sistema compara automaticamente os valores informados com aqueles registrados durante a operação.

Caso existam diferenças, é gerado um relatório de divergências.

Esse procedimento reduz riscos de fraude e aumenta a confiabilidade da auditoria.

---

# Fechamento

Após concluir a conferência, o operador realiza o fechamento do caixa.

O sistema registra:

- data;
- horário;
- operador;
- saldo final;
- diferenças encontradas;
- encerramento da sessão.

Após fechado, o caixa permanece disponível apenas para consultas e emissão de relatórios.

---

# Consulta de Caixas

O PDV mantém histórico completo das sessões realizadas.

A consulta apresenta informações como:

- código;
- operador;
- terminal;
- abertura;
- fechamento;
- situação.

Também é possível visualizar o resumo financeiro da sessão.

---

# Resumo Financeiro

Cada caixa apresenta automaticamente um consolidado contendo:

- vendas;
- fundo de caixa;
- suprimentos;
- sangrias;
- devoluções;
- entradas;
- saldo final.

Essas informações são utilizadas durante a conferência e auditoria.

---

# Relatórios

Após o fechamento é possível emitir relatórios da sessão.

São suportados dois formatos.

## Impressora Térmica

Relatório resumido para conferência rápida.

Ideal para:

- fechamento diário;
- assinatura do operador;
- controle interno.

---

## Impressora A4

Relatório analítico contendo toda a movimentação financeira da sessão.

Inclui:

- operações fiscais;
- operações não fiscais;
- devoluções;
- formas de pagamento;
- totais financeiros;
- saldo final.

---

# Integração com o ERP

Todas as movimentações da sessão são sincronizadas automaticamente com o ERP.

Entre elas:

- abertura;
- fechamento;
- vendas;
- sangrias;
- suprimentos;
- devoluções;
- cancelamentos.

Essa integração garante consistência entre a operação da loja e a gestão financeira da empresa.

---

# Benefícios

- Controle individual por sessão.
- Auditoria completa.
- Conferência às cegas.
- Histórico permanente.
- Rastreabilidade das operações.
- Relatórios operacionais.
- Integração automática com o ERP.
- Redução de divergências financeiras.

---

# Diferenciais

O módulo de Operação de Caixa foi desenvolvido para oferecer segurança e rastreabilidade durante toda a rotina financeira da loja.

Cada movimentação permanece vinculada à sessão de caixa, permitindo auditoria detalhada, conferência assistida ou às cegas, emissão de relatórios operacionais e sincronização automática com o ERP, garantindo consistência entre a frente de caixa e a retaguarda administrativa.

---

# Próximo Capítulo

**03 - Vendas**

Conheça o fluxo completo de vendas do PDV Desktop, incluindo lançamento de produtos, identificação de clientes, descontos, observações, pagamentos e emissão de documentos fiscais.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](03-VENDAS.md)
---
**Navegacao:** [Anterior](01-ARQUITETURA.md) | [Inicio](../../README.md) | [Proximo](03-VENDAS.md)
<!-- NAVIGATION_FOOTER:END -->

