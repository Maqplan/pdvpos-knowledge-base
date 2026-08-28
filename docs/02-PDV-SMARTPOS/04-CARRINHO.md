---
title: PDV SmartPOS - Carrinho
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](03-VENDAS.md) | [Próximo](05-PEDIDOS-DE-VENDA.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 04 CARRINHO
<!-- NAVIGATION:END -->

# 04 - Carrinho

O **Carrinho de Compras** representa o centro operacional da venda no **PDV SmartPOS**.

É nele que todos os produtos selecionados são organizados antes da conclusão da venda, permitindo alterações, personalizações, descontos, observações e demais ajustes necessários durante o atendimento.

O carrinho foi desenvolvido para oferecer máxima agilidade, reduzindo a quantidade de toques necessários e permitindo que toda a edição da venda aconteça sem interromper o fluxo operacional.

---

## Objetivo

Apresentar o funcionamento do carrinho de compras, suas funcionalidades e como ele permite construir uma venda completa antes do recebimento e emissão do documento fiscal.

---

# Visão Geral

O carrinho é atualizado em tempo real conforme os produtos são adicionados.

Cada item mantém seu próprio conjunto de informações, permitindo alterações independentes durante toda a venda.

Entre as informações apresentadas estão:

- Produto.
- Quantidade.
- Valor Unitário.
- Valor Total.
- Observações.
- Descontos.
- Acréscimos.

Na parte inferior da tela o operador acompanha continuamente:

- Quantidade de itens.
- Subtotal.
- Descontos.
- Acréscimos.
- Valor Total da venda.

---

# Inclusão de Produtos

Os produtos podem ser adicionados ao carrinho através de diferentes formas.

- Navegação pelos grupos.
- Lista de favoritos.
- Pesquisa por descrição.
- Pesquisa por código.
- Leitura do código de barras.

Após a seleção, o item passa imediatamente a compor a venda.

---

# Edição dos Itens

Enquanto a venda estiver em andamento, qualquer item poderá ser alterado.

Entre as operações disponíveis:

- Alterar quantidade.
- Remover item.
- Aplicar desconto.
- Aplicar acréscimo.
- Inserir observações.

Todas as alterações recalculam automaticamente os valores da venda.

---

# Quantidade dos Produtos

O operador pode alterar livremente a quantidade vendida.

Exemplo:

```text
Água Mineral

Quantidade: 8
```

O sistema recalcula automaticamente:

- subtotal;
- descontos;
- acréscimos;
- total da venda.

---

# Venda Individual de Itens

Além da venda por quantidade, o **PDV SmartPOS** permite registrar unidades independentes do mesmo produto.

Exemplo:

```text
Hambúrguer

Hambúrguer

Hambúrguer
```

Cada unidade passa a possuir sua própria configuração.

Essa abordagem é especialmente útil para restaurantes.

Exemplo:

```text
Hambúrguer

• Sem cebola

Hambúrguer

• Bem passado

Hambúrguer

• Dobro de queijo
```

Mesmo sendo o mesmo produto, cada unidade possui observações próprias.

---

# Desconto por Item

Cada item pode receber desconto individual.

O desconto pode ser informado em:

## Valor

Exemplo:

```text
R$ 10,00
```

---

## Percentual

Exemplo:

```text
15%
```

O sistema recalcula automaticamente o valor líquido do item.

---

# Acréscimo por Item

Também é possível aplicar acréscimos individualmente.

Essa funcionalidade é muito utilizada para:

- adicionais;
- complementos;
- opcionais;
- serviços extras.

Assim como os descontos, os acréscimos podem ser informados em:

- Valor;
- Percentual.

---

# Observações do Item

Cada item pode receber observações específicas.

Exemplos:

- Sem cebola.
- Bem passado.
- Sem açúcar.
- Adicional de queijo.
- Retirar molho.
- Massa fina.

Essas observações acompanham o item durante toda a venda.

Quando configurado, também são impressas nas comandas de produção.

---

# Observações da Venda

Além das observações individuais dos produtos, o operador pode registrar observações gerais da venda.

Exemplos:

- Cliente irá retirar.
- Entregar após as 18 horas.
- Pedido prioritário.
- Cobrar na entrega.

Essas informações permanecem vinculadas ao pedido até sua conclusão.

---

# Cliente da Venda

Durante a edição do carrinho é possível associar um cliente à venda.

Essa identificação poderá ser utilizada para:

- emissão fiscal;
- histórico de compras;
- pedidos;
- entregas;
- programas de fidelidade.

---

# Resumo Financeiro

Enquanto o operador monta a venda, o sistema apresenta continuamente um resumo financeiro.

São exibidos:

- Quantidade de itens.
- Subtotal.
- Total de descontos.
- Total de acréscimos.
- Valor líquido da venda.

Todas as informações são atualizadas automaticamente.

---

# Salvamento como Pedido

A qualquer momento o carrinho pode ser salvo.

Nesse momento ele deixa de representar apenas uma venda temporária e transforma-se em um Pedido de Venda.

Esse pedido passa imediatamente a integrar o ecossistema PDVPOS.

Posteriormente poderá ser concluído:

- no próprio PDV SmartPOS;
- em outro PDV SmartPOS;
- no PDV Desktop;
- diretamente no ERP.

Essa característica torna o **PDV SmartPOS** uma poderosa ferramenta para operações de pré-venda e atendimento "Papa Fila".

---

# Integração com Produção

Quando o módulo de produção estiver habilitado, todas as observações dos itens acompanham automaticamente o pedido.

Exemplo:

```text
Pizza Portuguesa

• Metade Calabresa

• Metade Portuguesa

• Massa fina

• Sem cebola
```

Essas informações podem ser enviadas automaticamente para:

- cozinha;
- bar;
- copa;
- impressoras remotas;
- estações de produção.

---

# Operação Offline

O carrinho permanece totalmente funcional mesmo sem conexão com a internet.

Todos os itens adicionados permanecem armazenados no banco de dados local do equipamento.

Após a conclusão da venda, as informações são sincronizadas automaticamente com o ERP quando a comunicação for restabelecida.

---

# Benefícios

O módulo de carrinho proporciona uma experiência de venda rápida e flexível.

Entre seus principais benefícios destacam-se:

- Atualização em tempo real.
- Alteração de itens durante toda a venda.
- Venda por quantidade.
- Venda por unidades independentes.
- Observações por item.
- Observações gerais da venda.
- Desconto em valor e percentual.
- Acréscimo em valor e percentual.
- Associação de clientes.
- Resumo financeiro automático.
- Conversão da venda em Pedido de Venda.
- Integração com produção.
- Funcionamento totalmente offline.
- Sincronização automática com o ERP.

---

## Conclusão

O carrinho do **PDV SmartPOS** vai além de uma simples lista de produtos.

Ele concentra toda a construção da venda, permitindo personalizações, ajustes financeiros, identificação do cliente e integração com produção, mantendo o mesmo fluxo operacional utilizado pelo ERP e pelo PDV Desktop.

Essa arquitetura garante flexibilidade para diferentes segmentos do varejo e alimentação, preservando a simplicidade necessária para operações de alta produtividade.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](05-PEDIDOS-DE-VENDA.md)
---
**Navegacao:** [Anterior](03-VENDAS.md) | [Inicio](../../README.md) | [Proximo](05-PEDIDOS-DE-VENDA.md)
<!-- NAVIGATION_FOOTER:END -->

