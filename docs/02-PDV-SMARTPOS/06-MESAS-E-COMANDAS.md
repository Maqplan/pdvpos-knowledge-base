---
title: PDV SmartPOS - Mesas e Comandas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](05-PEDIDOS-DE-VENDA.md) | [Proximo](07-CAIXA.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 06 MESAS E COMANDAS
<!-- NAVIGATION:END -->

# 06 - Mesas e Comandas

O módulo **Mesas e Comandas** permite que o **PDV SmartPOS** seja utilizado em restaurantes, bares, cafeterias, pizzarias, lanchonetes e demais estabelecimentos que trabalham com atendimento em salão.

Embora a interface apresente a gestão de mesas, toda a estrutura operacional está integrada ao conceito de pedidos do ecossistema **PDVPOS ERP**, permitindo que o atendimento seja iniciado em um equipamento e concluído em qualquer outro terminal autorizado.

---

## Objetivo

Apresentar o funcionamento da gestão de mesas do **PDV SmartPOS**, sua integração com pedidos de venda, produção, documentos fiscais e sincronização com o ERP.

---

# Visão Geral

A gestão de mesas permite organizar o atendimento do salão de maneira simples e intuitiva.

Cada mesa representa uma venda em andamento, podendo permanecer aberta durante todo o atendimento até o momento do pagamento.

Durante esse período o operador pode:

- incluir produtos;
- alterar quantidades;
- remover itens;
- incluir observações;
- identificar clientes;
- salvar automaticamente todas as alterações.

---

# Mapa de Mesas

Ao acessar o módulo, o **PDV SmartPOS** apresenta o mapa das mesas cadastradas.

Cada mesa informa sua situação operacional.

Os principais estados são:

- Livre;
- Ocupada.

Essa visualização permite identificar rapidamente quais mesas estão disponíveis e quais possuem atendimento em andamento.

---

# Filtros

O operador pode filtrar rapidamente as mesas exibidas.

## Todas

Exibe todas as mesas cadastradas.

---

## Livres

Mostra apenas mesas disponíveis para novos atendimentos.

---

## Ocupadas

Apresenta somente mesas que possuem pedidos em andamento.

---

# Abertura de Mesa

Ao selecionar uma mesa livre, o sistema inicia automaticamente uma nova venda vinculada àquela mesa.

A partir desse momento o operador pode:

- adicionar produtos;
- informar observações;
- identificar o cliente;
- aplicar descontos;
- aplicar acréscimos;
- salvar continuamente o atendimento.

Não existe necessidade de finalizar imediatamente a venda.

---

# Continuação do Atendimento

Ao selecionar uma mesa ocupada, o **PDV SmartPOS** recupera automaticamente todo o pedido existente.

São apresentados:

- produtos;
- quantidades;
- observações;
- descontos;
- acréscimos;
- cliente;
- valor parcial da conta.

O atendimento continua exatamente do ponto onde foi interrompido.

---

# Observações dos Itens

Cada produto lançado na mesa pode possuir observações independentes.

Exemplos:

- Bem passado;
- Mal passado;
- Sem cebola;
- Sem tomate;
- Dobro de queijo;
- Metade Calabresa;
- Metade Portuguesa.

Essas informações acompanham cada item individualmente.

---

# Integração com Produção

Quando configurado, o lançamento dos produtos gera automaticamente pedidos para produção.

Os pedidos podem ser enviados para:

- cozinha;
- copa;
- bar;
- pizzaria;
- impressoras remotas.

As observações dos itens acompanham integralmente a impressão.

Exemplo:

```text
Pizza Grande

• Metade Calabresa

• Metade Portuguesa

• Massa fina

• Sem cebola
```

Essa integração reduz erros de produção e agiliza o atendimento.

---

# Compartilhamento entre Equipamentos

As mesas fazem parte do ecossistema **PDVPOS ERP**.

Isso significa que o atendimento não pertence ao equipamento onde foi iniciado.

Uma mesa aberta poderá ser consultada e continuada por:

- outro PDV SmartPOS;
- PDV Desktop;
- ERP (quando aplicável).

Essa arquitetura proporciona maior flexibilidade operacional.

---

# Integração com Pedidos de Venda

Internamente, uma mesa corresponde a um pedido de venda em andamento.

Isso permite que todas as funcionalidades dos pedidos também estejam disponíveis durante o atendimento.

Entre elas:

- sincronização;
- continuidade da venda;
- identificação do cliente;
- emissão fiscal;
- múltiplas formas de pagamento.

---

# Fechamento da Mesa

Quando o cliente solicita o encerramento da conta, o operador seleciona a mesa correspondente e inicia o processo de recebimento.

Durante essa etapa podem ser utilizados:

- dinheiro;
- PIX;
- cartão de crédito;
- cartão de débito;
- voucher;
- múltiplas formas de pagamento.

Após a confirmação do pagamento, o sistema:

- conclui a venda;
- emite o documento fiscal conforme configuração;
- libera automaticamente a mesa para um novo atendimento.

---

# Emissão Fiscal

O encerramento da mesa pode gerar automaticamente:

- NFC-e;
- NF-e;
- NFS-e.

A emissão ocorre conforme a configuração fiscal da empresa.

---

# Operação Offline

Mesmo sem acesso à internet, o módulo de mesas continua totalmente operacional.

O operador pode:

- abrir mesas;
- lançar produtos;
- alterar pedidos;
- receber pagamentos;
- imprimir documentos locais.

Todas as informações permanecem armazenadas no banco de dados local e são sincronizadas automaticamente com o ERP quando houver conectividade.

---

# Benefícios

O módulo de Mesas oferece importantes vantagens operacionais.

- Atendimento organizado por mesa.
- Consulta rápida dos pedidos em andamento.
- Continuidade do atendimento em qualquer equipamento.
- Observações individuais por item.
- Integração automática com produção.
- Integração com pedidos de venda.
- Múltiplas formas de pagamento.
- Emissão automática de documentos fiscais.
- Sincronização com o ERP.
- Funcionamento totalmente offline.

---

## Considerações sobre Comandas

Embora o documento mantenha a nomenclatura **Mesas e Comandas** para padronização da documentação do ecossistema, o **PDV SmartPOS** trabalha atualmente com o conceito de **Gestão de Mesas**.

Toda a arquitetura foi desenvolvida de forma compatível com o modelo de pedidos compartilhados do **PDVPOS ERP**, permitindo evolução futura para outros modelos de atendimento sem alteração da estrutura operacional.

---

## Conclusão

O módulo **Mesas e Comandas** amplia o alcance do **PDV SmartPOS**, permitindo sua utilização em operações de alimentação sem abrir mão da integração com o restante do ecossistema.

A combinação entre pedidos compartilhados, sincronização automática, integração com produção, múltiplas formas de pagamento e emissão de documentos fiscais transforma o **PDV SmartPOS** em uma solução completa para restaurantes, bares e estabelecimentos que trabalham com atendimento em salão.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](07-CAIXA.md)
---
**Navegacao:** [Anterior](05-PEDIDOS-DE-VENDA.md) | [Inicio](../../README.md) | [Proximo](07-CAIXA.md)
<!-- NAVIGATION_FOOTER:END -->

