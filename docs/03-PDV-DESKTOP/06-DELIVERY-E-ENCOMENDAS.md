---
title: PDV Desktop - Delivery e Encomendas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](05-MESAS-E-COMANDAS.md) | [Proximo](07-PRODUCAO.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 06 DELIVERY E ENCOMENDAS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 06 - Delivery e Encomendas

---

# Objetivo

O módulo **Delivery e Encomendas** permite controlar todo o ciclo operacional de pedidos que não serão entregues imediatamente ao cliente.

A solução foi desenvolvida para atender empresas que realizam:

- Delivery próprio;
- Entregas de mercadorias;
- Retirada posterior;
- Encomendas;
- Agendamento de entregas.

Todo o processo permanece integrado ao ERP, mantendo sincronizados estoque, financeiro, documentos fiscais e histórico do cliente.

---

# Visão Geral

Uma venda pode ser convertida em uma entrega ou encomenda sem necessidade de recadastramento.

O sistema controla todas as etapas do atendimento até sua conclusão.

Entre elas:

- registro da venda;
- separação;
- despacho;
- entrega;
- retirada;
- encerramento.

---

# Fluxo Operacional

```text
Venda

    │

    ▼

Entrega ou Encomenda

    │

    ▼

Aguardando Preparação

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

Conclusão
```

---

# Central de Entregas

O PDV Desktop possui uma tela específica para gerenciamento das entregas.

Nela são exibidos todos os pedidos pendentes.

Cada registro apresenta informações como:

- número do pedido;
- cliente;
- situação;
- horário;
- tipo de atendimento;
- entregador.

Essa central permite acompanhar rapidamente toda a operação do delivery.

---

# Pesquisa de Entregas

Os pedidos podem ser localizados através de diversos filtros.

Entre eles:

- cliente;
- número do pedido;
- período;
- situação;
- entregador.

Essa pesquisa facilita o acompanhamento operacional durante o expediente.

---

# Detalhes da Entrega

Ao selecionar um pedido o sistema apresenta todas as informações registradas.

Entre elas:

## Cliente

- nome;
- telefone;
- endereço;
- observações.

---

## Produtos

- itens vendidos;
- quantidade;
- observações;
- atendente.

---

## Totais

Também são apresentados:

- subtotal;
- descontos;
- frete;
- acréscimos;
- valor total.

---

# Despacho

Após a preparação dos produtos, o operador pode registrar o despacho.

Esse procedimento indica que o pedido deixou a loja e iniciou o processo de entrega.

O despacho fica registrado no histórico da operação.

---

# Entregador

Cada entrega pode ser vinculada a um entregador.

Essa informação permite:

- rastrear o responsável;
- acompanhar produtividade;
- consultar histórico de entregas.

---

# Retirada no Balcão

Além da entrega, o sistema também suporta pedidos para retirada na loja.

Nesse cenário o pedido permanece aguardando até que o cliente compareça para buscá-lo.

---

# Encomendas

O sistema também controla encomendas para datas futuras.

Esse recurso é indicado para:

- bolos;
- roupas;
- móveis;
- presentes;
- produtos personalizados;
- mercadorias reservadas.

---

# Agendamento

Durante a venda é possível informar uma data prevista para entrega ou retirada.

A encomenda permanece registrada até o momento programado.

---

# Avisos Automáticos

Quando chega a data da encomenda, o pedido passa automaticamente a aparecer na central operacional.

Essa funcionalidade reduz esquecimentos e facilita o planejamento diário da equipe.

---

# Integração com Pedidos

Qualquer Pedido de Venda pode ser transformado posteriormente em:

- entrega;
- encomenda;
- retirada.

Sem necessidade de redigitação.

---

# Integração com Produção

Quando os produtos exigem preparação, o sistema envia automaticamente os pedidos para as impressoras de produção configuradas.

Exemplos:

- cozinha;
- pizzaria;
- churrasqueira;
- confeitaria;
- copa.

Cada setor recebe apenas os itens sob sua responsabilidade.

---

# Integração com Estoque

Após a conclusão da venda o sistema atualiza automaticamente:

- estoque;
- financeiro;
- histórico do cliente;
- documentos fiscais.

Toda a operação permanece sincronizada com o ERP.

---

# Benefícios

- Controle centralizado das entregas.
- Gestão de encomendas.
- Agendamento de entregas.
- Controle de retirada no balcão.
- Histórico completo dos pedidos.
- Integração com impressão de produção.
- Controle de entregadores.
- Integração automática com o ERP.

---

# Casos de Uso

## Restaurante

Controle completo das entregas realizadas pela equipe própria.

---

## Pizzaria

Produção integrada à cozinha com despacho automático.

---

## Loja de Roupas

Reserva de mercadorias para retirada posterior.

---

## Confeitaria

Encomendas programadas para datas específicas.

---

## Materiais de Construção

Agendamento de entregas conforme disponibilidade do cliente.

---

# Diferenciais

O módulo de Delivery e Encomendas utiliza o mesmo motor operacional das vendas convencionais.

Uma venda pode evoluir naturalmente para uma entrega, uma retirada ou uma encomenda, preservando todas as informações registradas durante o atendimento.

Essa arquitetura elimina retrabalho, reduz erros operacionais e mantém estoque, financeiro, documentos fiscais e ERP totalmente sincronizados.

---

# Próximo Capítulo

**07 - Produção e Impressão Remota**

Conheça os recursos de impressão automática para cozinha, bar, pizzaria e demais setores de produção, além da configuração de produtos compostos e componentes.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](07-PRODUCAO.md)
---
**Navegacao:** [Anterior](05-MESAS-E-COMANDAS.md) | [Inicio](../../README.md) | [Proximo](07-PRODUCAO.md)
<!-- NAVIGATION_FOOTER:END -->

