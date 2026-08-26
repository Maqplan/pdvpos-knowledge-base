---
title: PDV SmartPOS - Caixa
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](06-MESAS-E-COMANDAS.md) | [Proximo](08-HISTORICO-DE-VENDAS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 07 CAIXA
<!-- NAVIGATION:END -->

# 07 - Caixa

O módulo **Caixa** do **PDV SmartPOS** concentra todas as operações financeiras realizadas durante o expediente, permitindo ao operador administrar o caixa diretamente no equipamento.

Além das vendas, o módulo disponibiliza operações administrativas como sangrias, suprimentos, impressão de relatórios, acompanhamento das movimentações e fechamento do caixa, mantendo sincronização automática com o ERP.

Toda a operação pode ser realizada mesmo durante indisponibilidade da internet.

---

## Objetivo

Apresentar o funcionamento do módulo de caixa, descrevendo suas operações administrativas, controles financeiros e integração com o ecossistema **PDVPOS ERP**.

---

# Visão Geral

O módulo Caixa permite acompanhar em tempo real toda a movimentação financeira do caixa atualmente aberto.

A partir dessa tela o operador pode:

- consultar o resumo financeiro;
- visualizar pendências de sincronização;
- realizar sangrias;
- realizar suprimentos;
- imprimir relatórios;
- fechar o caixa.

---

# Situação do Caixa

Ao acessar o módulo são apresentadas informações do caixa atual.

Entre elas:

- Situação do caixa;
- Operador responsável;
- Data e hora de abertura;
- Valor total movimentado.

Quando existir um caixa aberto, todas as operações administrativas permanecem disponíveis conforme as permissões do operador.

---

# Resumo Financeiro

O sistema apresenta um resumo consolidado das movimentações realizadas durante o expediente.

Entre elas:

- Valor vendido;
- Quantidade de vendas;
- Cancelamentos;
- Sangrias;
- Suprimentos;
- Entradas;
- Saídas;
- Recebimentos.

Essas informações são atualizadas automaticamente após cada operação.

---

# Pendências de Sincronização

O **PDV SmartPOS** acompanha continuamente as operações que ainda aguardam sincronização com o ERP.

Os indicadores são apresentados separadamente para facilitar o acompanhamento.

## Vendas

Quantidade de vendas ainda não transmitidas.

---

## Ajustes de Caixa

Quantidade de operações administrativas pendentes.

Exemplos:

- sangrias;
- suprimentos;
- ajustes financeiros.

---

## Devoluções

Quantidade de devoluções aguardando sincronização.

Após o envio, essas operações atualizam automaticamente:

- estoque;
- financeiro;
- documentos fiscais;
- histórico operacional.

---

# Sangria

A operação de sangria permite retirar valores do caixa durante o expediente.

É normalmente utilizada para:

- redução do numerário disponível;
- segurança operacional;
- envio de valores ao cofre.

Cada sangria permanece registrada para auditoria e sincronização com o ERP.

---

# Suprimento

O suprimento permite adicionar valores ao caixa.

Essa operação costuma ser utilizada para:

- fundo de troco;
- reforço de caixa;
- ajustes financeiros.

Assim como a sangria, todas as operações ficam registradas para fins de auditoria.

---

# Impressão do Relatório

O **PDV SmartPOS** permite imprimir um relatório resumido do caixa diretamente na impressora integrada ao equipamento.

O relatório pode conter:

- operador;
- data e hora de abertura;
- vendas realizadas;
- formas de pagamento;
- sangrias;
- suprimentos;
- cancelamentos;
- total movimentado.

Esse comprovante auxilia conferências rápidas durante o expediente.

---

# Fechamento do Caixa

Ao término da operação, o operador pode realizar o fechamento diretamente pelo **PDV SmartPOS**.

Durante esse processo o sistema poderá solicitar:

- conferência dos valores recebidos;
- conferência das formas de pagamento;
- confirmação do encerramento.

Após o fechamento, o caixa é encerrado oficialmente e um novo caixa deverá ser aberto para continuidade das vendas.

---

# Integração com o ERP

Todas as operações administrativas realizadas no caixa são sincronizadas automaticamente com o ERP.

Entre elas:

- abertura;
- fechamento;
- sangrias;
- suprimentos;
- vendas;
- cancelamentos;
- devoluções.

Essa integração garante consistência entre os controles financeiros da retaguarda e a operação do PDV.

---

# Operação Offline

Mesmo sem acesso à internet, todas as operações continuam disponíveis.

O **PDV SmartPOS** registra localmente:

- abertura de caixa;
- vendas;
- sangrias;
- suprimentos;
- fechamento.

Quando a comunicação é restabelecida, todas as informações são sincronizadas automaticamente com o ERP.

Nenhuma movimentação é perdida.

---

# Segurança Operacional

Todas as operações realizadas no caixa permanecem registradas para fins de auditoria.

São armazenadas informações como:

- operador responsável;
- data e hora;
- tipo da operação;
- valores movimentados;
- situação da sincronização.

Essa rastreabilidade fortalece os processos de conferência e controle financeiro.

---

# Fluxo Operacional

```text
Abertura do Caixa

        │

        ▼

Recebimento de Vendas

        │

        ▼

Sangrias / Suprimentos

        │

        ▼

Impressão de Relatórios

        │

        ▼

Conferência

        │

        ▼

Fechamento do Caixa

        │

        ▼

Sincronização com ERP
```

---

# Benefícios

O módulo Caixa oferece diversas vantagens operacionais.

- Controle financeiro completo.
- Operações administrativas diretamente no equipamento.
- Sangrias e suprimentos.
- Impressão de relatórios.
- Fechamento simplificado.
- Sincronização automática com o ERP.
- Funcionamento totalmente offline.
- Registro completo para auditoria.
- Alta disponibilidade operacional.

---

## Conclusão

O módulo **Caixa** transforma o **PDV SmartPOS** em uma estação completa de operação financeira.

Além de registrar vendas, o equipamento permite administrar toda a rotina do caixa, desde a abertura até o fechamento, mantendo integração total com o ERP, funcionamento offline e sincronização automática.

Essa arquitetura reduz a dependência de outros equipamentos e proporciona maior autonomia aos operadores, preservando a segurança e a rastreabilidade das operações.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](08-HISTORICO-DE-VENDAS.md)
---
**Navegacao:** [Anterior](06-MESAS-E-COMANDAS.md) | [Inicio](../../README.md) | [Proximo](08-HISTORICO-DE-VENDAS.md)
<!-- NAVIGATION_FOOTER:END -->

