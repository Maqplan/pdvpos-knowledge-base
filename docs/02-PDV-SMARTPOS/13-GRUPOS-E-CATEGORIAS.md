---
title: PDV SmartPOS - Grupos e Categorias
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](12-PRODUTOS.md) | [Próximo](14-DOCUMENTOS-FISCAIS.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 13 GRUPOS E CATEGORIAS
<!-- NAVIGATION:END -->

# 13 - Grupos e Categorias

O módulo **Grupos e Categorias** é responsável pela organização hierárquica do catálogo de produtos e serviços do **PDV SmartPOS**.

Através dele é possível estruturar o cadastro utilizando até **cinco níveis de classificação**, permitindo organizar desde pequenos catálogos até operações com milhares de produtos.

Essa organização melhora a navegação durante as vendas, simplifica a localização dos produtos e mantém uma estrutura única compartilhada entre o **PDV SmartPOS**, **PDV Desktop** e o **PDVPOS ERP**.

---

## Objetivo

Apresentar o funcionamento da estrutura hierárquica de grupos e categorias, demonstrando como ela organiza o catálogo de produtos e influencia diversos módulos do sistema.

---

# Visão Geral

Os grupos e categorias representam a estrutura organizacional utilizada pelo sistema para classificar produtos e serviços.

Toda a navegação da venda utiliza essa estrutura para apresentar os produtos ao operador de forma organizada e intuitiva.

Além da venda, essa classificação também é utilizada em:

- Cadastro de Produtos;
- Pesquisa de Produtos;
- Produtos Favoritos;
- Relatórios;
- Estoque;
- ERP.

---

# Estrutura Hierárquica

O **PDV SmartPOS** permite criar uma estrutura com até **cinco níveis** de classificação.

Exemplo:

```text
Bebidas
    Refrigerantes
        Latas
            Cola
                Zero Açúcar
```

Outro exemplo:

```text
Alimentos

    Padaria

        Pães

            Integrais

                Artesanais
```

Essa estrutura adapta-se facilmente a diferentes segmentos do varejo.

---

# Primeiro Nível — Grupo

O primeiro nível corresponde ao grupo principal do catálogo.

Exemplos:

- Bebidas;
- Padaria;
- Açougue;
- Hortifruti;
- Limpeza;
- Serviços.

Os grupos representam as divisões mais amplas da empresa.

---

# Segundo Nível — Categoria

Cada grupo pode possuir diversas categorias.

Exemplo:

```text
Bebidas

├── Refrigerantes
├── Águas
├── Energéticos
├── Sucos
└── Cervejas
```

Essa organização facilita a navegação durante as vendas.

---

# Demais Níveis

Cada categoria pode ser subdividida conforme a necessidade da empresa.

Exemplo:

```text
Refrigerantes

├── Lata
├── Garrafa
├── PET 600 ml
└── PET 2 Litros
```

Ou ainda:

```text
Vestuário

Feminino

Vestidos

Festa

Longo
```

O sistema suporta até cinco níveis completos.

---

# Cadastro

O módulo permite realizar as principais operações de manutenção.

Entre elas:

- Criar grupos;
- Criar categorias;
- Alterar registros;
- Inativar classificações;
- Reorganizar a estrutura.

Todas as alterações permanecem sincronizadas com o ERP.

---

# Pesquisa

A pesquisa permite localizar rapidamente qualquer grupo ou categoria.

É possível pesquisar utilizando:

- Nome;
- Código;
- Descrição.

Essa funcionalidade simplifica a manutenção do catálogo.

---

# Situação dos Registros

Cada grupo ou categoria pode possuir uma situação operacional.

Entre elas:

- Ativo;
- Inativo.

Registros inativos deixam de ser apresentados durante a venda, preservando a organização histórica do catálogo.

---

# Utilização na Venda

Durante a operação de venda, os grupos são apresentados ao operador para facilitar a localização dos produtos.

Fluxo simplificado:

```text
Grupo

↓

Categoria

↓

Subcategoria

↓

Produto

↓

Venda
```

Essa organização reduz significativamente o tempo necessário para localizar produtos.

---

# Integração com Produtos

Cada produto é associado a uma posição dentro da estrutura hierárquica.

Essa classificação influencia automaticamente:

- Navegação da venda;
- Pesquisa;
- Favoritos;
- Relatórios;
- Organização do estoque.

Não é necessário realizar configurações adicionais.

---

# Integração com o ERP

Toda a estrutura é compartilhada automaticamente com o **PDVPOS ERP**.

Alterações realizadas no **PDV SmartPOS** são sincronizadas para o ERP.

Da mesma forma, alterações realizadas na retaguarda tornam-se automaticamente disponíveis para todos os equipamentos.

Essa arquitetura garante consistência em toda a plataforma.

---

# Operação Offline

Mesmo durante períodos sem conexão com a internet, a estrutura permanece disponível para consulta e utilização.

Caso sejam realizadas alterações autorizadas no equipamento, elas permanecem armazenadas localmente e serão sincronizadas automaticamente quando houver comunicação com o ERP.

---

# Benefícios

O módulo Grupos e Categorias oferece importantes vantagens operacionais.

- Organização hierárquica do catálogo.
- Até cinco níveis de classificação.
- Navegação intuitiva durante as vendas.
- Pesquisa rápida.
- Compartilhamento com ERP.
- Sincronização automática.
- Funcionamento offline.
- Organização consistente entre todos os dispositivos.
- Facilidade de manutenção.

---

# Relação com os Demais Módulos

A estrutura de grupos e categorias é utilizada por praticamente toda a plataforma.

Entre os principais módulos integrados estão:

- Estoque;
- Produtos;
- Vendas;
- Carrinho;
- Pedidos de Venda;
- Mesas;
- Relatórios.

Essa integração garante que toda alteração estrutural seja refletida automaticamente em todos os processos operacionais.

---

## Conclusão

O módulo **Grupos e Categorias** fornece a base de organização do catálogo comercial do **PDV SmartPOS**.

Sua estrutura hierárquica de até cinco níveis permite atender empresas de diferentes segmentos e portes, oferecendo uma navegação intuitiva, integração completa com o ERP e sincronização automática entre todos os dispositivos do ecossistema **PDVPOS ERP**.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](14-DOCUMENTOS-FISCAIS.md)
---
**Navegacao:** [Anterior](12-PRODUTOS.md) | [Inicio](../../README.md) | [Proximo](14-DOCUMENTOS-FISCAIS.md)
<!-- NAVIGATION_FOOTER:END -->

