---
title: PDV SmartPOS - Pedidos de Venda
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](04-CARRINHO.md) | [Próximo](06-MESAS-E-COMANDAS.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 05 PEDIDOS DE VENDA
<!-- NAVIGATION:END -->

# 05 - Pedidos de Venda

O módulo **Pedidos de Venda** transforma o **PDV SmartPOS** em muito mais do que um terminal de vendas.

Ele permite que pedidos iniciados em qualquer ponto do ecossistema **PDVPOS ERP** sejam consultados, editados, continuados e finalizados diretamente no equipamento.

Essa arquitetura elimina retrabalho, reduz filas de atendimento e permite que vendedores, operadores de caixa e atendentes trabalhem simultaneamente sobre a mesma operação comercial.

---

## Objetivo

Apresentar o funcionamento do módulo de **Pedidos de Venda**, sua integração com o ERP, com o **PDV Desktop** e com os demais **PDVs SmartPOS**, demonstrando como o sistema permite a continuidade das vendas independentemente do equipamento utilizado.

---

# Visão Geral

Sempre que o operador acessa o módulo de pedidos, o **PDV SmartPOS** consulta automaticamente todos os pedidos disponíveis na retaguarda.

São apresentados pedidos criados em:

- ERP;
- PDV Desktop;
- outro PDV SmartPOS;
- vendedores;
- pré-vendas;
- mesas;
- comandas.

O pedido pertence à empresa e não ao equipamento onde foi iniciado.

---

# Arquitetura Compartilhada

Todos os equipamentos compartilham a mesma base de pedidos.

```text
                PDVPOS ERP
                     │
     ┌───────────────┼───────────────┐
     │               │               │
     ▼               ▼               ▼
PDV Desktop    PDV SmartPOS    PDV SmartPOS
     │               │               │
     └───────────────┼───────────────┘
                     │
               Pedido Compartilhado
```

Qualquer alteração realizada em um equipamento é sincronizada automaticamente para os demais.

---

# Consulta de Pedidos

Ao abrir o módulo, o operador visualiza todos os pedidos disponíveis conforme suas permissões.

Cada pedido apresenta informações resumidas como:

- Número;
- Cliente;
- Data;
- Valor;
- Situação;
- Origem;
- Tipo da operação.

A listagem é atualizada automaticamente sempre que houver sincronização com o ERP.

---

# Filtros

Para facilitar a localização dos pedidos, o sistema disponibiliza filtros rápidos.

## Período

Pesquisa por intervalo de datas.

---

## Cliente

Pesquisa por cliente.

---

## Situação

Permite visualizar:

- Todos;
- Em andamento;
- Finalizados;
- Cancelados;
- Pendentes de sincronização.

---

## Origem

Também é possível identificar onde o pedido foi criado.

Exemplo:

- ERP;
- PDV Desktop;
- PDV SmartPOS.

---

# Continuação da Venda

Ao selecionar um pedido, o **PDV SmartPOS** carrega automaticamente todas as informações da operação.

Entre elas:

- Cliente;
- Produtos;
- Quantidades;
- Descontos;
- Acréscimos;
- Observações;
- Pagamentos já registrados;
- Situação fiscal.

A venda pode continuar exatamente do ponto onde foi interrompida.

---

# Alterações Permitidas

Enquanto o pedido estiver em aberto, o operador poderá:

- adicionar produtos;
- remover produtos;
- alterar quantidades;
- alterar descontos;
- alterar acréscimos;
- incluir observações;
- alterar cliente;
- alterar vendedor.

Todas as alterações permanecem sincronizadas com o ERP.

---

# Finalização do Pedido

Após concluir a edição, o pedido pode ser transformado em venda.

Durante esse processo o operador poderá:

- escolher as formas de pagamento;
- utilizar múltiplos recebimentos;
- calcular troco;
- emitir documento fiscal;
- imprimir comprovantes.

Após a conclusão, o pedido deixa automaticamente de aparecer como pendente em todos os demais equipamentos.

---

# Pré-Venda

O módulo de pedidos permite implementar operações de pré-venda.

Exemplo:

```text
Vendedor

↓

Cria o pedido

↓

Cliente segue para o caixa

↓

Operador localiza o pedido

↓

Recebe o pagamento

↓

Emite o documento fiscal
```

Essa arquitetura reduz significativamente o tempo de atendimento nos caixas.

---

# Operação Papa Fila

Um dos principais cenários de utilização do **PDV SmartPOS** é a operação **Papa Fila**.

Nesse modelo:

- vendedores circulam pela loja;
- registram os pedidos durante o atendimento;
- identificam o cliente;
- encaminham o pedido para qualquer caixa.

O pagamento poderá ocorrer:

- em outro PDV SmartPOS;
- no PDV Desktop;
- diretamente no ERP.

O cliente não precisa repetir o pedido.

---

# Integração Omnichannel

O compartilhamento de pedidos permite continuidade operacional entre todos os canais da empresa.

Exemplo:

```text
ERP

↓

Pedido

↓

PDV Desktop

↓

Alteração

↓

PDV SmartPOS

↓

Pagamento

↓

Documento Fiscal

↓

Sincronização
```

O operador não precisa saber onde o pedido foi iniciado.

Todo o processo é transparente.

---

# Emissão Fiscal

Ao finalizar um pedido, o **PDV SmartPOS** pode emitir automaticamente:

- NFC-e;
- NF-e;
- NFS-e.

A origem do pedido não interfere na emissão fiscal.

Independentemente de onde o pedido foi criado, o documento será emitido conforme as configurações da empresa.

---

# Sincronização

Todas as alterações realizadas durante a edição do pedido são sincronizadas automaticamente com o ERP.

São sincronizados:

- novos itens;
- alterações;
- descontos;
- observações;
- pagamentos;
- cancelamentos;
- faturamento.

Caso o equipamento esteja offline, todas as alterações permanecem armazenadas localmente até o próximo processo de sincronização.

---

# Operação Offline

Os pedidos já sincronizados permanecem disponíveis mesmo durante indisponibilidade da internet.

Quando houver conectividade novamente, todas as alterações realizadas serão transmitidas automaticamente ao ERP.

Essa arquitetura garante continuidade operacional sem interromper o atendimento.

---

# Benefícios

O módulo de Pedidos de Venda oferece diversas vantagens para empresas que trabalham com múltiplos operadores ou canais de atendimento.

- Compartilhamento de pedidos entre todos os dispositivos.
- Integração completa com o ERP.
- Integração com o PDV Desktop.
- Continuidade da venda em qualquer equipamento.
- Operação Papa Fila.
- Suporte à pré-venda.
- Eliminação de retrabalho.
- Redução do tempo de atendimento.
- Emissão fiscal independente da origem do pedido.
- Sincronização automática.
- Funcionamento offline.

---

## Conclusão

O módulo **Pedidos de Venda** é um dos principais diferenciais do **PDV SmartPOS**.

Ao permitir que qualquer pedido seja iniciado, alterado e finalizado em qualquer equipamento do ecossistema **PDVPOS ERP**, o sistema elimina barreiras entre canais de atendimento e proporciona uma verdadeira operação omnichannel de frente de caixa.

Essa arquitetura aumenta a produtividade da equipe, reduz filas, melhora a experiência do cliente e garante total integração entre ERP, **PDV Desktop** e **PDV SmartPOS**.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](06-MESAS-E-COMANDAS.md)
---
**Navegacao:** [Anterior](04-CARRINHO.md) | [Inicio](../../README.md) | [Proximo](06-MESAS-E-COMANDAS.md)
<!-- NAVIGATION_FOOTER:END -->

