---
title: PDV SmartPOS - Produtos
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](11-ESTOQUE.md) | [Próximo](13-GRUPOS-E-CATEGORIAS.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 12 PRODUTOS
<!-- NAVIGATION:END -->

# 12 - Produtos

O módulo **Produtos** permite consultar, cadastrar, editar e manter o cadastro de produtos e serviços diretamente no **PDV SmartPOS**, proporcionando autonomia operacional sem depender do ERP para pequenas manutenções do catálogo.

Todos os cadastros permanecem sincronizados automaticamente com o ecossistema **PDVPOS ERP**, garantindo que as informações estejam disponíveis em todos os **PDVs SmartPOS**, **PDVs Desktop** e na retaguarda.

Além das informações comerciais, o cadastro contempla dados fiscais, controle de estoque, classificação e demais atributos necessários para operação da empresa.

---

## Objetivo

Apresentar o funcionamento do cadastro de produtos e serviços, detalhando suas informações comerciais, fiscais, operacionais e sua integração com os demais módulos do sistema.

---

# Visão Geral

O cadastro de produtos reúne todas as informações necessárias para comercialização de um item.

Entre elas:

- Identificação;
- Classificação;
- Preços;
- Estoque;
- Informações fiscais;
- Situação cadastral.

Cada produto pode representar:

- Produto;
- Serviço.

---

# Consulta de Produtos

Ao acessar o módulo, o operador visualiza uma lista contendo todos os produtos cadastrados.

Cada registro apresenta informações resumidas como:

- Código;
- Descrição;
- Grupo;
- Preço de venda;
- Estoque disponível;
- Situação.

A partir dessa tela é possível consultar ou editar qualquer produto autorizado.

---

# Pesquisa

A pesquisa permite localizar rapidamente qualquer produto.

É possível pesquisar utilizando:

- Código;
- Código de barras;
- Descrição;
- Referência.

Os resultados são apresentados imediatamente conforme a digitação.

---

# Cadastro de Produtos

Novos produtos podem ser cadastrados diretamente pelo **PDV SmartPOS**.

Durante o cadastro são informadas todas as características necessárias para sua comercialização.

---

# Informações Gerais

Cada produto possui informações básicas de identificação.

Entre elas:

- Código;
- Descrição;
- Código de Barras;
- Referência;
- Grupo;
- Categoria;
- Unidade de Medida.

Essas informações são utilizadas em toda a plataforma.

---

# Classificação

O produto pode ser associado à estrutura hierárquica cadastrada no módulo Estoque.

Essa classificação permite organizar o catálogo em até cinco níveis.

Exemplo:

```text
Bebidas
    Refrigerantes
        Latas
```

Essa estrutura é utilizada na navegação da venda e nos relatórios.

---

# Preços

O cadastro permite definir o preço de comercialização do produto.

Entre as informações disponíveis:

- Preço de Venda;
- Custo (quando permitido);
- Margem (quando configurada).

Esses valores são utilizados automaticamente durante a venda.

---

# Controle de Estoque

Quando o controle de estoque estiver habilitado, o produto passa a possuir movimentação automática.

O sistema controla:

- Entradas;
- Saídas;
- Ajustes;
- Devoluções.

As movimentações são sincronizadas com o ERP.

---

# Informações Fiscais

Cada produto pode possuir suas informações fiscais configuradas.

Entre elas:

- NCM;
- CFOP;
- CST;
- CSOSN;
- CEST;
- Origem;
- Tributação.

Esses dados são utilizados automaticamente durante a emissão de:

- NFC-e;
- NF-e.

---

# Produtos e Serviços

O **PDV SmartPOS** permite cadastrar tanto produtos quanto serviços.

Essa flexibilidade possibilita atender diferentes segmentos utilizando o mesmo aplicativo.

Exemplos:

### Produtos

- Refrigerantes;
- Alimentos;
- Vestuário;
- Eletrônicos.

### Serviços

- Instalação;
- Assistência Técnica;
- Consultoria;
- Serviços Gerais.

Quando configurado como serviço, o cadastro também poderá ser utilizado para emissão de **NFS-e**.

---

# Situação do Cadastro

Cada produto pode possuir uma situação operacional.

Entre elas:

- Ativo;
- Inativo.

Produtos inativos deixam de ser apresentados durante a venda, preservando o histórico das operações já realizadas.

---

# Alteração de Produtos

Produtos existentes podem ser alterados diretamente no **PDV SmartPOS**, conforme as permissões do operador.

Podem ser modificadas informações como:

- Descrição;
- Preço;
- Grupo;
- Categoria;
- Situação;
- Dados fiscais.

Todas as alterações permanecem sincronizadas com o ERP.

---

# Integração com as Vendas

Todo produto cadastrado passa automaticamente a estar disponível para utilização nos módulos:

- Vendas;
- Pedidos de Venda;
- Mesas;
- Produção;
- Relatórios.

Essa integração elimina a necessidade de configurações adicionais.

---

# Integração com o ERP

Todas as alterações realizadas no cadastro são sincronizadas automaticamente.

São sincronizados:

- Novos produtos;
- Alterações;
- Mudanças de preço;
- Mudanças fiscais;
- Situação cadastral.

Da mesma forma, produtos cadastrados no ERP tornam-se automaticamente disponíveis no **PDV SmartPOS**.

---

# Operação Offline

O cadastro permanece disponível mesmo sem acesso à internet.

O operador pode:

- Consultar produtos;
- Cadastrar novos itens;
- Alterar informações;
- Atualizar preços.

As alterações permanecem armazenadas no banco de dados local e são sincronizadas automaticamente quando houver comunicação com o ERP.

---

# Fluxo Operacional

```text
Cadastro

      │

      ▼

Classificação

      │

      ▼

Preço

      │

      ▼

Estoque

      │

      ▼

Venda

      │

      ▼

Sincronização com ERP
```

---

# Benefícios

O módulo Produtos oferece importantes vantagens operacionais.

- Cadastro diretamente no PDV SmartPOS.
- Pesquisa rápida.
- Integração com estoque.
- Organização por grupos.
- Cadastro de produtos e serviços.
- Informações fiscais completas.
- Atualização automática.
- Funcionamento offline.
- Sincronização com ERP.
- Compartilhamento automático com toda a plataforma.

---

## Relação com os Demais Módulos

O cadastro de produtos é utilizado por praticamente todo o ecossistema **PDVPOS ERP**.

Entre os principais módulos integrados estão:

- Estoque;
- Vendas;
- Carrinho;
- Pedidos de Venda;
- Mesas;
- Produção;
- Documentos Fiscais;
- Relatórios.

Qualquer alteração realizada no cadastro é refletida automaticamente nesses módulos.

---

## Conclusão

O módulo **Produtos** permite administrar todo o catálogo comercial diretamente no **PDV SmartPOS**, mantendo integração total com o ERP e com os demais componentes da plataforma.

Sua arquitetura centralizada garante consistência das informações, atualização automática e disponibilidade imediata dos produtos para venda, proporcionando maior autonomia operacional e reduzindo a necessidade de intervenções na retaguarda.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](13-GRUPOS-E-CATEGORIAS.md)
---
**Navegacao:** [Anterior](11-ESTOQUE.md) | [Inicio](../../README.md) | [Proximo](13-GRUPOS-E-CATEGORIAS.md)
<!-- NAVIGATION_FOOTER:END -->

