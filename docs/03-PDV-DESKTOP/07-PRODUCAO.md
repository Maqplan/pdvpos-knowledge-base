---
title: PDV Desktop - Produção
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](06-DELIVERY-E-ENCOMENDAS.md) | [Proximo](08-SINCRONIZACAO.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 07 PRODUCAO
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 09 - Produção

---

# Objetivo

O módulo **Produção** automatiza o envio das informações necessárias para os setores responsáveis pela preparação dos produtos vendidos.

Durante o atendimento, o operador registra apenas a venda. O sistema identifica automaticamente quais itens necessitam de produção e direciona cada pedido para a impressora correta, reduzindo erros operacionais e agilizando o fluxo interno.

Esse recurso é especialmente indicado para restaurantes, pizzarias, lanchonetes, cafeterias, padarias e qualquer operação que possua áreas distintas de produção.

---

# Visão Geral

O módulo trabalha integrado ao motor de vendas do PDV Desktop.

Não existe necessidade de utilizar outro sistema ou realizar lançamentos duplicados.

Após a inclusão dos produtos na venda, o sistema pode:

- identificar itens que exigem produção;
- separar produtos por setor;
- imprimir automaticamente nas impressoras configuradas;
- incluir observações específicas do item;
- enviar componentes selecionados durante a venda.

Todo o processo ocorre automaticamente.

---

# Fluxo Operacional

```text
Venda

    │

    ▼

Inclusão dos Produtos

    │

    ▼

Configuração dos Componentes

    │

    ▼

Observações do Item

    │

    ▼

Separação por Setor

    │

    ▼

Impressão Automática

    │

    ▼

Produção

    │

    ▼

Entrega ao Cliente
```

---

# Impressão Automática

Quando habilitada, a impressão ocorre automaticamente após o lançamento dos produtos ou conforme a configuração operacional da empresa.

Não é necessário que o operador selecione manualmente a impressora.

O sistema identifica automaticamente o destino de cada item.

---

# Impressoras de Produção

Cada setor pode possuir sua própria impressora.

Exemplos:

- Cozinha
- Bar
- Pizzaria
- Churrasqueira
- Copa
- Confeitaria
- Expedição

Cada impressora recebe apenas os produtos pertencentes ao seu setor.

---

# Impressoras Remotas

As impressoras podem estar conectadas em computadores diferentes do terminal de vendas.

Essa arquitetura permite distribuir a produção entre diversos ambientes físicos sem necessidade de intervenção do operador.

---

# Produtos Configuráveis

O ERP permite cadastrar produtos compostos por componentes configuráveis.

Durante a venda o operador seleciona exatamente as opções desejadas pelo cliente.

Exemplos:

## Pizza

- Meio a meio
- Borda recheada
- Massa fina
- Massa tradicional

---

## Hambúrguer

- Sem cebola
- Sem tomate
- Bacon extra
- Dobro de queijo

---

## Marmitas

- Tipo de arroz
- Tipo de feijão
- Acompanhamentos

---

## Açaí

- Frutas
- Coberturas
- Complementos

---

# Componentes

Cada produto pode possuir grupos de componentes previamente cadastrados no ERP.

Esses componentes podem ser:

- obrigatórios;
- opcionais;
- gratuitos;
- cobrados separadamente.

O operador apenas seleciona as opções desejadas durante a venda.

---

# Observações dos Itens

Além dos componentes, cada item pode receber observações livres.

Exemplos:

- Bem passado;
- Ao ponto;
- Mal passado;
- Sem sal;
- Pouco gelo;
- Embalar separado.

As observações acompanham automaticamente a impressão da produção.

---

# Integração com Pedidos

Pedidos em andamento também podem gerar impressão para produção.

Isso permite que a equipe inicie o preparo mesmo antes do fechamento financeiro da venda.

---

# Integração com Mesas

Nos estabelecimentos que trabalham com mesas e comandas, cada novo lançamento pode gerar automaticamente uma nova impressão para produção.

Dessa forma, os pedidos adicionais chegam imediatamente aos respectivos setores.

---

# Integração com Delivery

Pedidos destinados ao delivery seguem exatamente o mesmo fluxo.

Após o lançamento:

- impressão automática;
- preparação;
- despacho;
- entrega.

---

# Organização por Setores

Cada grupo de produtos pode ser vinculado a um setor específico.

Exemplo:

| Produto | Setor |
|----------|--------|
| Refrigerante | Bar |
| Pizza | Pizzaria |
| Hambúrguer | Cozinha |
| Sobremesa | Confeitaria |

Isso garante que cada equipe receba apenas os pedidos sob sua responsabilidade.

---

# Benefícios

- Impressão automática.
- Redução de erros.
- Produção organizada.
- Produtos configuráveis.
- Componentes integrados.
- Observações por item.
- Integração com mesas.
- Integração com delivery.
- Integração com pedidos.
- Integração completa com o ERP.

---

# Casos de Uso

## Restaurante

Pedidos enviados automaticamente para cozinha e bar.

---

## Pizzaria

Separação automática das pizzas e bebidas.

---

## Cafeteria

Encaminhamento dos pedidos para produção de bebidas e alimentos.

---

## Padaria

Preparação automática de encomendas e lanches.

---

## Lanchonete

Separação de cozinha e bebidas.

---

# Integração com o ERP

Toda a configuração de produção é realizada no ERP.

O PDV apenas consome essas configurações durante a venda.

Isso garante que todos os terminais utilizem exatamente as mesmas regras de produção.

---

# Diferenciais

O módulo de Produção utiliza a mesma arquitetura transacional do restante da plataforma.

Produtos compostos, componentes, observações e impressão automática fazem parte do próprio fluxo de venda, eliminando integrações paralelas e reduzindo significativamente o retrabalho operacional.

A configuração centralizada no ERP garante padronização entre todos os PDVs da empresa.

---

# Próximo Capítulo

**10 - Sincronização**

Conheça a arquitetura Offline First do PDV Desktop, o funcionamento do serviço de sincronização e a integração automática entre os terminais e o ERP.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](08-SINCRONIZACAO.md)
---
**Navegacao:** [Anterior](06-DELIVERY-E-ENCOMENDAS.md) | [Inicio](../../README.md) | [Proximo](08-SINCRONIZACAO.md)
<!-- NAVIGATION_FOOTER:END -->

