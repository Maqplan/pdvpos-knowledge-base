---
title: PDV Desktop - Pedidos e Orçamentos
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](03-VENDAS.md) | [Proximo](05-MESAS-E-COMANDAS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 04 PEDIDOS E ORCAMENTOS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 04 - Pedidos e Orçamentos

---

# Objetivo

O módulo de **Pedidos e Orçamentos** permite registrar vendas que ainda não serão finalizadas imediatamente.

Esses registros podem representar:

- Orçamentos;
- Pré-vendas;
- Pedidos em andamento;
- Reservas de mercadorias;
- Atendimentos pendentes de pagamento.

Todos permanecem integrados ao fluxo operacional do PDV e podem ser retomados posteriormente.

---

# Visão Geral

Durante um atendimento o operador pode optar por não concluir imediatamente a venda.

Nesse caso o sistema salva todas as informações em um pedido.

Posteriormente esse pedido poderá ser:

- alterado;
- complementado;
- convertido em venda;
- finalizado em outro terminal autorizado.

Essa abordagem reduz filas e permite maior flexibilidade durante o atendimento.

---

# Fluxo Operacional

```text
Nova Venda

      │

      ▼

Inclusão dos Produtos

      │

      ▼

Salvar Pedido (F4)

      │

      ▼

Pedido em Aberto

      │

 ┌────┴────────────┐
 │                 │

 ▼                 ▼

Editar        Finalizar Venda

 │                 │

 └──────────┬──────┘

            ▼

      Recebimento

            ▼

     Documento Fiscal

            ▼

      Sincronização ERP
```

---

# Criando um Pedido

Durante a venda basta pressionar:

**F4**

O sistema salva automaticamente todas as informações já registradas.

Entre elas:

- cliente;
- produtos;
- quantidades;
- descontos;
- acréscimos;
- observações;
- atendente;
- vendedor;
- data;
- operador.

Nenhuma informação é perdida.

---

# Consulta de Pedidos

Os pedidos ficam disponíveis em uma central específica.

A tela permite localizar rapidamente:

- número;
- cliente;
- operador;
- atendente;
- período;
- situação.

Também são apresentados:

- valor;
- data;
- sincronização;
- origem.

---

# Visualização dos Detalhes

Ao selecionar um pedido o sistema apresenta todas as informações registradas.

Entre elas:

## Produtos

- descrição;
- quantidade;
- preço;
- descontos;
- observações.

---

## Dados Gerais

Também são exibidos:

- cliente;
- operador;
- atendente;
- origem;
- situação;
- observações gerais.

---

## Totais

O pedido apresenta automaticamente:

- subtotal;
- descontos;
- acréscimos;
- frete;
- valor total.

---

# Continuação do Atendimento

Um pedido pode ser reaberto a qualquer momento.

Após carregado o operador pode:

- incluir novos produtos;
- remover itens;
- alterar quantidades;
- aplicar descontos;
- alterar cliente;
- modificar observações.

Todo o atendimento continua exatamente do ponto onde havia sido interrompido.

---

# Finalização Posterior

Quando o cliente decidir concluir a compra, basta carregar o pedido.

O sistema converte automaticamente o atendimento em uma venda normal.

Todo o fluxo permanece disponível:

- pagamentos;
- PIX;
- TEF;
- dinheiro;
- cartão;
- emissão fiscal;
- atualização de estoque;
- financeiro.

---

# Compartilhamento entre Terminais

Quando configurado, um pedido iniciado em um terminal pode ser finalizado em outro.

Esse recurso é muito utilizado em:

- lojas com vendedores;
- grandes magazines;
- materiais de construção;
- móveis;
- eletrodomésticos.

Exemplo:

O vendedor inicia o atendimento.

O cliente dirige-se ao caixa.

O operador localiza o pedido e realiza apenas o recebimento.

Esse fluxo reduz filas e melhora significativamente o atendimento.

---

# Integração com Delivery

Um pedido pode posteriormente transformar-se em uma entrega.

O operador apenas altera o tipo de atendimento.

Não existe necessidade de refazer a venda.

---

# Integração com Mesas

Quando o módulo Restaurante estiver habilitado, o pedido pode representar uma mesa em atendimento.

Novos itens continuam sendo adicionados normalmente até o fechamento.

---

# Integração com Encomendas

Pedidos também podem tornar-se encomendas.

Nesse cenário é possível:

- informar data futura;
- controlar retirada;
- controlar entrega;
- acompanhar o andamento.

---

# Integração com ERP

Todos os pedidos permanecem sincronizados com o ERP.

Após serem convertidos em venda o sistema atualiza automaticamente:

- estoque;
- financeiro;
- documentos fiscais;
- histórico do cliente;
- relatórios gerenciais.

---

# Benefícios

- Orçamentos rápidos.
- Pré-vendas.
- Pedidos compartilhados.
- Continuação do atendimento.
- Integração com ERP.
- Integração com Delivery.
- Integração com Mesas.
- Integração com Encomendas.
- Redução de filas.
- Melhor experiência do cliente.

---

# Casos de Uso

## Loja de Roupas

O vendedor monta todo o pedido.

O cliente apenas realiza o pagamento no caixa.

---

## Material de Construção

Enquanto novos produtos são separados no depósito, o pedido permanece aberto.

Após a conferência, a venda é concluída.

---

## Móveis

O orçamento pode permanecer salvo até a aprovação do cliente.

Quando aprovado, transforma-se em venda imediatamente.

---

## Restaurante

O pedido representa uma mesa em atendimento.

Novos itens são adicionados durante todo o consumo.

---

# Diferenciais

Ao contrário de sistemas que tratam orçamento, pedido e venda como processos independentes, o PDV Desktop utiliza um único fluxo operacional.

Uma venda pode ser interrompida, transformada em pedido, retomada posteriormente, compartilhada entre terminais, convertida em entrega, encomenda ou mesa e, finalmente, concluída com pagamento e emissão fiscal, preservando todas as informações registradas durante o atendimento.

Essa arquitetura reduz retrabalho, elimina redigitações e oferece maior flexibilidade operacional para diferentes segmentos do varejo.

---

# Próximo Capítulo

**05 - Mesas e Comandas**

Conheça o módulo de atendimento para restaurantes, bares, pizzarias e estabelecimentos que trabalham com consumo em mesas ou comandas.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](05-MESAS-E-COMANDAS.md)
---
**Navegacao:** [Anterior](03-VENDAS.md) | [Inicio](../../README.md) | [Proximo](05-MESAS-E-COMANDAS.md)
<!-- NAVIGATION_FOOTER:END -->

