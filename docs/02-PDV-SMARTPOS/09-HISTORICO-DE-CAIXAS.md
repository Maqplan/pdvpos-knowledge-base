---
title: PDV SmartPOS - Histórico de Caixas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](08-HISTORICO-DE-VENDAS.md) | [Proximo](10-CLIENTES.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 09 HISTORICO DE CAIXAS
<!-- NAVIGATION:END -->

# 09 - Histórico de Caixas

O módulo **Histórico de Caixas** permite consultar todos os caixas registrados pelo **PDV SmartPOS**, sejam eles abertos ou encerrados.

Além da consulta, o operador pode acessar rapidamente os detalhes completos de qualquer caixa, visualizar sua movimentação financeira, identificar o responsável pela operação e acompanhar o histórico operacional da loja.

Este módulo funciona como uma ferramenta de auditoria financeira, permitindo rastrear toda a movimentação dos caixas realizados no equipamento.

---

## Objetivo

Apresentar o funcionamento do histórico de caixas, demonstrando como consultar caixas anteriores, localizar um caixa específico e acessar seu detalhamento completo.

---

# Visão Geral

Sempre que o módulo é aberto, o **PDV SmartPOS** apresenta uma relação de todos os caixas existentes no período consultado.

Cada caixa é apresentado em formato de cartão contendo um resumo operacional.

Entre as principais informações exibidas estão:

- Situação do caixa;
- Operador responsável;
- Data de abertura;
- Data de fechamento (quando encerrado);
- Valor movimentado;
- Situação da sincronização.

Ao selecionar um caixa, o sistema abre automaticamente a tela **Detalhes do Caixa**, permitindo consultar todas as informações da operação.

---

# Consulta por Período

O histórico permite pesquisar caixas utilizando períodos personalizados.

O operador pode informar:

- Data Inicial;
- Data Final.

Também estão disponíveis atalhos para consultas rápidas.

Exemplos:

- Hoje;
- Últimos 7 dias;
- Últimos 15 dias;
- Últimos 30 dias.

---

# Situação do Caixa

Cada caixa possui um indicador visual de sua situação.

## Caixa Aberto

Indica que o caixa continua em operação.

Nesse caso é possível acessar seus detalhes em tempo real.

---

## Caixa Fechado

Indica que o caixa já foi encerrado.

Todas as informações permanecem disponíveis para consulta e auditoria.

---

# Consulta dos Detalhes

Ao selecionar um registro da lista, o **PDV SmartPOS** apresenta a tela **Detalhes do Caixa**.

Essa tela reúne todas as informações financeiras da operação.

Entre elas:

- Operador responsável;
- Data de abertura;
- Data de fechamento;
- Valor vendido;
- Quantidade de vendas;
- Cancelamentos;
- Sangrias;
- Suprimentos;
- Entradas;
- Saídas;
- Total movimentado.

Caso o caixa ainda esteja aberto, também poderão ser executadas operações administrativas conforme as permissões do operador.

---

# Relação com o Módulo Caixa

O **Histórico de Caixas** funciona como uma extensão do módulo **Caixa**.

Enquanto o módulo Caixa é utilizado para administrar o caixa atualmente aberto, o Histórico permite consultar toda a movimentação realizada anteriormente.

Fluxo de utilização:

```text
Caixa Atual

↓

Movimentações

↓

Fechamento

↓

Histórico de Caixas

↓

Detalhes do Caixa

↓

Auditoria
```

---

# Auditoria Financeira

O histórico preserva todas as informações necessárias para auditoria operacional.

São registradas informações como:

- operador responsável;
- horários de abertura e fechamento;
- movimentações financeiras;
- formas de pagamento;
- sangrias;
- suprimentos;
- cancelamentos;
- sincronização.

Essa rastreabilidade permite reconstruir completamente qualquer operação realizada no caixa.

---

# Integração com o ERP

Todos os caixas registrados pelo **PDV SmartPOS** são sincronizados automaticamente com o ERP.

Após a sincronização, gestores podem consultar essas informações diretamente na retaguarda, mantendo total consistência entre os sistemas.

Essa integração contempla:

- abertura;
- fechamento;
- movimentações;
- vendas;
- ajustes financeiros;
- cancelamentos.

---

# Operação Offline

Mesmo durante períodos sem conexão com a internet, o histórico permanece disponível para consulta.

Os caixas continuam sendo registrados normalmente no banco de dados local.

Quando a comunicação é restabelecida, todas as informações são sincronizadas automaticamente com o ERP.

Essa arquitetura garante continuidade operacional sem comprometer a integridade dos dados.

---

# Segurança

Todas as operações relacionadas aos caixas permanecem registradas para fins de auditoria.

Cada movimentação armazena informações como:

- operador;
- data e hora;
- tipo da operação;
- valores;
- situação da sincronização.

Esses registros fortalecem os processos de controle interno e conferência financeira.

---

# Fluxo Operacional

```text
Abertura do Caixa

        │

        ▼

Movimentação Financeira

        │

        ▼

Fechamento

        │

        ▼

Histórico de Caixas

        │

        ▼

Detalhes do Caixa

        │

        ▼

Auditoria Financeira
```

---

# Benefícios

O módulo Histórico de Caixas proporciona importantes recursos para conferência e auditoria.

- Consulta rápida de caixas anteriores.
- Pesquisa por período.
- Acesso aos detalhes completos de cada caixa.
- Identificação dos operadores responsáveis.
- Histórico permanente das movimentações.
- Integração automática com o ERP.
- Funcionamento totalmente offline.
- Rastreabilidade completa das operações.
- Suporte às atividades de auditoria e conferência financeira.

---

## Conclusão

O módulo **Histórico de Caixas** complementa o controle financeiro do **PDV SmartPOS**, permitindo consultar qualquer caixa registrado e acessar imediatamente seu detalhamento completo.

Integrado ao ERP e ao módulo Caixa, ele fornece uma visão consolidada das operações financeiras da empresa, garantindo rastreabilidade, segurança e facilidade de auditoria sem comprometer a simplicidade de uso do sistema.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](10-CLIENTES.md)
---
**Navegacao:** [Anterior](08-HISTORICO-DE-VENDAS.md) | [Inicio](../../README.md) | [Proximo](10-CLIENTES.md)
<!-- NAVIGATION_FOOTER:END -->

