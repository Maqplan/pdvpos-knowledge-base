---
title: PDV Desktop - Vendas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](02-OPERACAO-DE-CAIXA.md) | [Proximo](04-PEDIDOS-E-ORCAMENTOS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 03 VENDAS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 03 - Vendas

---

# Objetivo

O módulo de Vendas concentra toda a operação comercial do PDV Desktop.

Através dele o operador pode realizar vendas de produtos e serviços, identificar clientes, aplicar descontos, registrar observações, consultar estoque, receber pagamentos e emitir documentos fiscais.

O processo foi desenvolvido para minimizar cliques e permitir operações rápidas através de atalhos de teclado.

---

# Fluxo Geral da Venda

```text
Nova Venda

      │

      ▼

Identificação do Cliente (Opcional)

      │

      ▼

Inclusão dos Produtos

      │

      ▼

Alterações dos Itens

      │

      ▼

Descontos / Acréscimos

      │

      ▼

Observações

      │

      ▼

Recebimento

      │

      ▼

Documento Fiscal

      │

      ▼

Sincronização ERP
```

---

# Iniciando uma Venda

O operador inicia uma nova venda diretamente pela tela principal.

O sistema apresenta imediatamente:

- operador responsável;
- caixa;
- cliente;
- área de lançamento dos produtos;
- total da venda;
- atalhos disponíveis.

---

# Pesquisa de Produtos

Os produtos podem ser localizados através de diferentes formas.

## Código

Exemplo

```
123
```

---

## Código de Barras

Leitura automática através de leitor.

---

## Descrição

Pesquisa parcial.

Exemplo

```
Camisa Polo
```

---

## SKU

Quando utilizado pela empresa.

---

## Pesquisa Avançada

Atalho:

**F9**

Permite localizar produtos utilizando diversos filtros.

São exibidos:

- descrição;
- preço;
- estoque;
- grupo;
- imagem;
- observações.

---

# Consulta de Estoque

Quando a empresa possui múltiplas filiais, a pesquisa permite consultar o estoque disponível nas demais lojas.

O operador consegue informar imediatamente:

- disponibilidade;
- quantidade;
- filial responsável.

Esse recurso reduz perdas de vendas e melhora o atendimento ao cliente.

---

# Venda por Expressão

O PDV Desktop permite registrar quantidades diretamente durante a digitação.

Exemplo

```
15*123
```

Venda:

15 unidades do produto código **123**.

Também é possível utilizar a descrição.

```
10*Camisa Polo
```

Essa funcionalidade reduz significativamente o número de operações necessárias durante o atendimento.

---

# Alteração de Quantidade

Após incluir um produto na venda, sua quantidade pode ser alterada.

O sistema permite:

- incremento;
- decremento;
- digitação direta da quantidade.

Todos os totais são recalculados automaticamente.

---

# Desconto por Item

Cada produto pode receber desconto individual.

São suportadas três formas de cálculo.

## Percentual

Exemplo:

10%

---

## Valor

Exemplo:

R$ 15,00

---

## Valor Final

Exemplo

Preço Original

R$ 120,00

Preço Desejado

R$ 99,90

O sistema calcula automaticamente o desconto correspondente.

---

# Acréscimos

Também é possível aplicar acréscimos ao item.

Os acréscimos podem representar:

- serviços;
- personalizações;
- taxas;
- adicionais.

Assim como os descontos, podem ser aplicados por:

- percentual;
- valor;
- valor final.

---

# Observações por Item

Cada item da venda pode possuir observações específicas.

Exemplos:

- Embalar para presente.
- Produto reservado.
- Montagem necessária.
- Bem passado.
- Dobro de queijo.
- Metade Calabresa.
- Metade Portuguesa.

Opcionalmente essas observações podem ser impressas no documento fiscal.

---

# Produtos Configuráveis

O PDV suporta produtos configuráveis previamente cadastrados no ERP.

Durante a venda o operador pode selecionar componentes conforme a configuração do produto.

Exemplos:

## Hambúrguer

- Sem cebola;
- Bacon extra;
- Dobro de queijo.

---

## Pizza

- Meio a meio;
- Borda recheada;
- Massa fina.

---

## Marmitas

- Tipo de arroz;
- Tipo de feijão;
- Acompanhamentos.

---

## Açaí

- Coberturas;
- Frutas;
- Complementos.

---

Todas as escolhas acompanham:

- impressão de produção;
- pedido;
- documento fiscal;
- histórico da venda.

---

# Cliente

Durante a venda é possível identificar o cliente.

Pesquisa:

**F11**

Essa informação é utilizada posteriormente pelo:

- financeiro;
- emissão fiscal;
- histórico de compras;
- crediário;
- entrega;
- encomendas.

---

# Atendente

Também é possível identificar o atendente responsável.

Atalho:

**F12**

Essa informação pode ser utilizada para:

- comissão;
- produtividade;
- rastreabilidade.

---

# Contato Comercial

Quando configurado, a venda pode registrar também o contato comercial responsável pelo atendimento.

---

# Atalhos Operacionais

Durante a venda os principais atalhos são:

| Tecla | Função |
|--------|---------|
| **F2** | Finalizar Venda |
| **F3** | Formas de Recebimento |
| **F4** | Salvar Pedido |
| **F9** | Pesquisa de Produtos |
| **F11** | Pesquisa de Clientes |
| **F12** | Selecionar Atendente |

---

# Recebimento

Após concluir os itens da venda, o operador pode abrir a tela de recebimento.

São suportadas múltiplas formas de pagamento.

O processo é detalhado no capítulo:

**05 - Pagamentos**

---

# Pedido de Venda

Caso o cliente ainda não conclua a compra, a venda pode ser salva como Pedido.

Esse pedido poderá:

- ser reaberto;
- ser alterado;
- ser convertido em venda;
- ser finalizado posteriormente;
- ser concluído em outro terminal autorizado.

---

# Documento Fiscal

Após a conclusão da venda, o sistema pode emitir automaticamente:

- Documento Não Fiscal;
- NFC-e;
- NF-e;
- NFS-e.

O comportamento depende das configurações da empresa.

---

# Sincronização

Quando existe comunicação com o ERP, a venda é transmitida automaticamente logo após sua conclusão.

Caso a conexão esteja indisponível:

- a venda permanece armazenada localmente;
- o sincronizador realiza o envio automaticamente quando a comunicação for restabelecida.

---

# Benefícios

- Operação extremamente rápida.
- Suporte completo por teclado.
- Venda por expressão.
- Pesquisa inteligente.
- Produtos configuráveis.
- Consulta de estoque entre filiais.
- Descontos flexíveis.
- Observações por item.
- Integração com ERP.
- Operação Offline First.

---

# Diferenciais

O módulo de vendas foi desenvolvido para proporcionar máxima produtividade ao operador.

Sua interface combina pesquisa rápida, atalhos de teclado, comandos inteligentes, produtos configuráveis, consulta de estoque entre filiais e sincronização automática com o ERP, permitindo que diferentes segmentos de negócio utilizem o mesmo fluxo operacional com alta velocidade e baixo índice de erros.

---

# Próximo Capítulo

**04 - Pagamentos**

Conheça as formas de recebimento suportadas pelo PDV Desktop, pagamento misto, integração com TEF, PIX, descontos gerais, acréscimos e emissão dos documentos fiscais.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](04-PEDIDOS-E-ORCAMENTOS.md)
---
**Navegacao:** [Anterior](02-OPERACAO-DE-CAIXA.md) | [Inicio](../../README.md) | [Proximo](04-PEDIDOS-E-ORCAMENTOS.md)
<!-- NAVIGATION_FOOTER:END -->

