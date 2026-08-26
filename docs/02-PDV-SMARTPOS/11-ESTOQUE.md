---
title: PDV SmartPOS - Estoque
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](10-CLIENTES.md) | [Proximo](12-PRODUTOS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 11 ESTOQUE
<!-- NAVIGATION:END -->

# 11 - Estoque

O módulo **Estoque** do **PDV SmartPOS** concentra os recursos responsáveis pela organização estrutural do catálogo de produtos da empresa.

Além de permitir a manutenção da estrutura hierárquica utilizada pelo ERP, o módulo também funciona como ponto de acesso para os cadastros de grupos, categorias, subcategorias, produtos e serviços.

Toda a estrutura permanece integrada ao ecossistema **PDVPOS ERP**, garantindo consistência entre todos os dispositivos da empresa.

---

## Objetivo

Apresentar o funcionamento do módulo Estoque, demonstrando como o **PDV SmartPOS** organiza o catálogo de produtos e disponibiliza os recursos necessários para manutenção da estrutura comercial da empresa.

---

# Visão Geral

O módulo Estoque atua como a central de organização dos produtos cadastrados.

Através dele o operador pode acessar:

- Grupos;
- Categorias;
- Subcategorias;
- Produtos;
- Serviços.

Todas essas informações permanecem sincronizadas automaticamente com o ERP.

---

# Organização Hierárquica

O **PDV SmartPOS** permite organizar o catálogo utilizando uma estrutura hierárquica de até **cinco níveis**.

Essa flexibilidade possibilita atender desde pequenas empresas até operações com catálogos extremamente complexos.

Exemplo:

```text
Bebidas
    Refrigerantes
        Latas
            Cola
```

Outro exemplo:

```text
Vestuário
    Feminino
        Vestidos
            Festa
                Longo
```

Essa estrutura é compartilhada entre todos os módulos da plataforma.

---

# Estrutura do Catálogo

O catálogo pode ser organizado utilizando diferentes níveis.

Exemplo:

- Grupo;
- Categoria;
- Subcategoria;
- Subcategoria Nível 4;
- Subcategoria Nível 5.

A quantidade de níveis utilizada depende exclusivamente da necessidade da empresa.

---

# Cadastro de Grupos

O primeiro nível da organização corresponde aos **Grupos**.

Exemplos:

- Bebidas;
- Padaria;
- Açougue;
- Hortifruti;
- Serviços.

Os grupos representam as divisões principais do catálogo.

---

# Cadastro de Categorias

Cada grupo pode possuir diversas categorias.

Exemplo:

```text
Bebidas

├── Refrigerantes
├── Sucos
├── Águas
└── Energéticos
```

Essa divisão facilita tanto a organização quanto a navegação durante a venda.

---

# Subcategorias

Cada categoria pode possuir diversos níveis de detalhamento.

Exemplo:

```text
Refrigerantes

├── Lata
├── PET
├── 600 ml
└── 2 Litros
```

O sistema suporta até cinco níveis hierárquicos.

---

# Integração com Produtos

Toda a estrutura criada é utilizada automaticamente pelos cadastros de produtos.

Cada produto pode ser associado à sua posição dentro da hierarquia.

Essa organização é utilizada por diversos módulos do sistema.

Entre eles:

- Venda;
- Pesquisa;
- Favoritos;
- Relatórios;
- ERP.

---

# Pesquisa

O módulo disponibiliza pesquisa rápida para localização da estrutura cadastrada.

É possível pesquisar utilizando:

- nome;
- descrição;
- código.

Essa funcionalidade agiliza a manutenção do catálogo.

---

# Situação dos Cadastros

Cada registro pode possuir uma situação operacional.

Exemplos:

- Ativo;
- Inativo.

Essa informação controla sua disponibilidade durante as operações de venda.

---

# Integração com o ERP

Toda alteração realizada no módulo Estoque é sincronizada automaticamente com o ERP.

São sincronizados:

- novos grupos;
- novas categorias;
- alterações;
- exclusões lógicas;
- mudanças de situação.

Da mesma forma, alterações realizadas no ERP também são disponibilizadas automaticamente para o **PDV SmartPOS**.

---

# Integração com o PDV SmartPOS

A estrutura cadastrada influencia diretamente diversas funcionalidades do aplicativo.

Entre elas:

- Navegação por grupos na venda;
- Produtos favoritos;
- Pesquisa de produtos;
- Organização do catálogo;
- Relatórios;
- Cadastro de produtos.

Essa integração garante uma experiência consistente para o operador.

---

# Operação Offline

Mesmo sem acesso à internet, o módulo continua disponível.

Todas as alterações realizadas permanecem armazenadas no banco de dados local.

Quando a comunicação com o ERP for restabelecida, as informações serão sincronizadas automaticamente.

---

# Fluxo Operacional

```text
Grupo

      │

      ▼

Categoria

      │

      ▼

Subcategoria

      │

      ▼

Produto

      │

      ▼

Venda
```

---

# Benefícios

O módulo Estoque oferece importantes recursos para organização do catálogo.

- Organização hierárquica.
- Até cinco níveis de classificação.
- Integração com o ERP.
- Estrutura compartilhada por toda a plataforma.
- Pesquisa rápida.
- Sincronização automática.
- Funcionamento offline.
- Organização otimizada para vendas.
- Facilidade de manutenção.

---

## Relação com o Cadastro de Produtos

O módulo **Estoque** é responsável pela organização estrutural do catálogo.

O cadastro detalhado dos produtos e serviços é apresentado no próximo capítulo da documentação.

Essa separação permite manter a estrutura do catálogo independente das informações comerciais, fiscais e financeiras de cada produto.

---

## Conclusão

O módulo **Estoque** fornece a base organizacional utilizada por todo o ecossistema **PDVPOS ERP**.

Sua estrutura hierárquica de até cinco níveis permite organizar catálogos simples ou altamente especializados, mantendo sincronização automática com o ERP e oferecendo uma experiência consistente tanto no **PDV SmartPOS** quanto no **PDV Desktop**.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](12-PRODUTOS.md)
---
**Navegacao:** [Anterior](10-CLIENTES.md) | [Inicio](../../README.md) | [Proximo](12-PRODUTOS.md)
<!-- NAVIGATION_FOOTER:END -->

