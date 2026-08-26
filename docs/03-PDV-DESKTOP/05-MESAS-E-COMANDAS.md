---
title: PDV Desktop - Mesas e Comandas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](04-PEDIDOS-E-ORCAMENTOS.md) | [Proximo](06-DELIVERY-E-ENCOMENDAS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 05 MESAS E COMANDAS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 05 - Mesas e Comandas

---

# Objetivo

O módulo **Mesas e Comandas** permite que o PDV Desktop seja utilizado por restaurantes, bares, pizzarias, cafeterias, lanchonetes e demais estabelecimentos que trabalham com consumo no local.

O recurso utiliza o mesmo motor de vendas do sistema, adaptando apenas a forma de atendimento conforme o tipo de operação da empresa.

---

# Visão Geral

Quando habilitado nas configurações do terminal, o PDV passa a operar com atendimento por mesas ou comandas.

Cada atendimento permanece aberto durante todo o consumo do cliente, permitindo a inclusão de novos itens até o momento do fechamento.

Todo o processo permanece integrado ao ERP, compartilhando:

- Produtos;
- Clientes;
- Estoque;
- Financeiro;
- Documentos fiscais;
- Relatórios.

---

# Fluxo Operacional

```text
Cliente chega

        │

        ▼

Seleciona Mesa ou Comanda

        │

        ▼

Inicia Atendimento

        │

        ▼

Lançamento dos Produtos

        │

        ▼

Impressão na Produção

        │

        ▼

Novos Lançamentos

        │

        ▼

Solicitação da Conta

        │

        ▼

Recebimento

        │

        ▼

Documento Fiscal

        │

        ▼

Mesa Livre
```

---

# Painel de Mesas

O sistema apresenta uma visão gráfica contendo todas as mesas cadastradas.

Cada mesa informa imediatamente sua situação operacional.

Entre os estados possíveis estão:

- Livre;
- Ocupada;
- Em atendimento;
- Fechamento.

Essa visualização permite localizar rapidamente qualquer atendimento.

---

# Controle por Comandas

Além das mesas físicas, o sistema também suporta atendimento por comandas.

Esse modelo é indicado para:

- Bares;
- Praças de alimentação;
- Food Parks;
- Casas de eventos;
- Operações de autoatendimento.

Cada comanda representa um atendimento independente.

---

# Abertura de Atendimento

Ao selecionar uma mesa ou comanda, o sistema inicia automaticamente uma nova venda.

Durante esse atendimento podem ser registrados:

- Produtos;
- Serviços;
- Cliente;
- Atendente;
- Observações.

O atendimento permanece aberto até sua conclusão.

---

# Inclusão de Produtos

Os produtos são adicionados utilizando exatamente o mesmo processo das vendas tradicionais.

São suportados:

- Código;
- Código de barras;
- Pesquisa;
- Atalhos;
- Produtos configuráveis;
- Componentes.

---

# Produtos Configuráveis

Quando o produto possui componentes cadastrados no ERP, o operador pode personalizar o pedido.

Exemplos:

## Pizza

- Meio a meio;
- Borda recheada;
- Massa fina.

---

## Hambúrguer

- Sem cebola;
- Dobro de queijo;
- Bacon extra.

---

## Marmitas

- Tipo de arroz;
- Tipo de feijão;
- Acompanhamentos.

Todas essas informações acompanham automaticamente a produção.

---

# Impressão para Produção

Após o lançamento dos produtos, o sistema pode imprimir automaticamente os pedidos nas impressoras responsáveis pela produção.

Exemplos:

- Cozinha;
- Bar;
- Churrasqueira;
- Pizzaria;
- Copa.

Cada setor recebe apenas os itens relacionados à sua produção.

---

# Atendimento Contínuo

Enquanto a mesa permanecer aberta, novos produtos podem ser adicionados normalmente.

Também é possível:

- alterar quantidades;
- remover itens (conforme permissões);
- aplicar descontos;
- adicionar observações;
- identificar atendentes.

---

# Observações dos Itens

Cada item pode possuir observações específicas.

Exemplos:

- Bem passado;
- Mal passado;
- Sem cebola;
- Dobro de queijo;
- Sem gelo;
- Pouco sal.

Essas informações acompanham a impressão da produção.

---

# Cliente

Opcionalmente o atendimento pode ser vinculado a um cliente.

Esse vínculo é utilizado posteriormente para:

- histórico de compras;
- financeiro;
- emissão fiscal;
- programas de fidelidade.

---

# Atendentes

O sistema permite identificar o atendente responsável pelo atendimento.

Essa informação pode ser utilizada para:

- comissão;
- produtividade;
- auditoria;
- rastreabilidade.

---

# Fechamento

Quando o cliente solicita a conta, o atendimento é convertido automaticamente em uma venda convencional.

A partir desse momento ficam disponíveis todos os recursos do PDV.

Entre eles:

- Dinheiro;
- PIX;
- Cartão;
- TEF;
- Crediário;
- Pagamento misto.

Após a conclusão do pagamento, a mesa retorna automaticamente para a situação **Livre**.

---

# Integração com o ERP

Toda a operação permanece sincronizada com o ERP.

Após a conclusão da venda são atualizados automaticamente:

- Estoque;
- Financeiro;
- Documentos fiscais;
- Histórico do cliente;
- Relatórios;
- Indicadores gerenciais.

---

# Benefícios

- Atendimento por mesas.
- Atendimento por comandas.
- Painel gráfico do salão.
- Integração com impressão de produção.
- Produtos configuráveis.
- Observações por item.
- Controle de atendentes.
- Integração completa com o ERP.
- Operação simplificada.

---

# Casos de Uso

## Restaurante

Controle completo das mesas e consumo.

---

## Pizzaria

Personalização das pizzas com impressão automática para produção.

---

## Bar

Controle por comandas individuais.

---

## Cafeteria

Atendimento rápido integrado ao caixa.

---

## Praça de Alimentação

Controle de comandas com fechamento posterior.

---

# Diferenciais

O módulo de Mesas e Comandas utiliza exatamente o mesmo motor transacional das vendas convencionais.

Isso significa que pedidos, mesas, comandas, delivery e vendas compartilham a mesma arquitetura operacional, reduzindo a complexidade do sistema e eliminando retrabalho entre diferentes módulos.

Além disso, a integração automática com impressão de produção, produtos configuráveis, componentes e ERP permite que toda a operação do salão permaneça sincronizada em tempo real com a gestão da empresa.

---

# Próximo Capítulo

**06 - Delivery e Encomendas**

Conheça os recursos para controle de entregas, pedidos externos, encomendas e agendamento de entregas.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](06-DELIVERY-E-ENCOMENDAS.md)
---
**Navegacao:** [Anterior](04-PEDIDOS-E-ORCAMENTOS.md) | [Inicio](../../README.md) | [Proximo](06-DELIVERY-E-ENCOMENDAS.md)
<!-- NAVIGATION_FOOTER:END -->

