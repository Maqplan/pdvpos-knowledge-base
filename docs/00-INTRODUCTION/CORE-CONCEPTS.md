---
title: CORE CONCEPTS
classification: PUBLIC
owner: PDVPOS LTDA
version: "1.0"
last_updated: 2026-08-25
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
[README principal](../../README.md) | [Introdução](./MODULES-INDEX.md) | [Módulos](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)
---
> **Breadcrumbs:** [Início](../../README.md) / [Introdução](./MODULES-INDEX.md) / 
CORE-CONCEPTS
<!-- NAVIGATION:END -->

# CORE CONCEPTS

> Core Business Concepts & Product Architecture

**Documento Arquitetural Oficial do PDVPOS ERP**

---

# Objetivo

Este documento descreve os conceitos fundamentais que sustentam a arquitetura funcional do PDVPOS ERP.

Ao contrário dos demais documentos da plataforma, este arquivo não documenta funcionalidades.

Seu objetivo é explicar como o produto foi concebido, quais entidades representam o núcleo do sistema e como elas se relacionam.

Todo novo módulo desenvolvido deverá respeitar estes conceitos.

---

# Visão Geral

O PDVPOS ERP foi projetado como uma plataforma integrada.

Cada módulo existe para resolver um domínio específico do negócio, porém todos compartilham a mesma base de dados.

Não existem módulos isolados.

Existe apenas uma plataforma.

---

# A Fonte Única da Verdade

O ERP é o centro de toda operação.

Todos os sistemas externos devem consumir ou produzir informações através do PDVPOS ERP.

```text
           Marketplace

                │

SmartPOS ─── ERP ─── Contabilidade

                │

             Financeiro

                │

              Fiscal

                │

               APIs

                │

             Webhooks
```

O ERP nunca deve depender de outro sistema para conhecer sua própria operação.

---

# Entidades Fundamentais

Toda a plataforma é construída sobre um conjunto reduzido de entidades principais.

Essas entidades representam o núcleo do sistema.

---

## Empresa

A empresa representa a unidade organizacional responsável pela operação.

Ela define:

- contexto operacional;
- parâmetros fiscais;
- configurações gerais;
- segmento de atuação;
- certificados digitais;
- integrações.

Todas as demais entidades pertencem a uma empresa.

---

## Filial

Uma filial representa uma unidade operacional.

Cada filial pode possuir:

- preços próprios;
- estoque próprio;
- clientes específicos;
- vendedores específicos;
- usuários específicos;
- depósitos próprios;
- PDVs próprios.

A filial determina o contexto da operação.

---

## Produto

O produto é uma das entidades centrais da plataforma.

Ele não pertence apenas ao módulo de estoque.

Um produto pode ser utilizado por:

- Compras;
- Vendas;
- PDVs;
- SmartPOS;
- Financeiro;
- Fiscal;
- Marketplace;
- Etiquetas;
- Lotes;
- Ordens de Serviço;
- Relatórios;
- Promoções.

Toda informação relacionada ao produto deve permanecer centralizada.

---

## Serviço

Serviços seguem a mesma filosofia dos produtos.

Participam de:

- vendas;
- faturamento;
- NFS-e;
- Ordem de Serviço;
- financeiro.

---

## Pessoa

Clientes, fornecedores, transportadoras, vendedores, contatos comerciais e contadores representam especializações do conceito de Pessoa.

A plataforma reutiliza a mesma estrutura cadastral sempre que possível.

Isso reduz duplicidade e mantém consistência.

---

## Usuário

Usuários representam pessoas autorizadas a utilizar o ERP.

Eles não representam operadores de caixa.

Usuários:

- acessam o ERP;
- possuem permissões;
- pertencem a filiais;
- podem possuir limite de desconto;
- podem estar vinculados a técnicos.

---

## Operador

Operadores pertencem ao ecossistema PDV.

Eles representam os atendentes responsáveis pelas vendas realizadas nos caixas.

Sua função é distinta do usuário do ERP.

---

## Técnico

O Técnico representa o responsável pela execução de Ordens de Serviço.

Quando vinculado a um usuário, pode acessar apenas suas próprias atividades.

---

# A Venda

A venda representa um dos principais eventos da plataforma.

Ela conecta diversos domínios.

```text
Venda

│

├── Cliente

├── Produto

├── Estoque

├── Financeiro

├── Fiscal

├── Cobrança

├── Comissão

├── Relatórios

└── Ordem de Serviço (quando necessário)
```

A venda nunca deve ser tratada como um processo isolado.

---

# O Produto como Origem da Operação

Produtos definem comportamentos.

Exemplo.

Um produto pode:

- controlar estoque;
- possuir lote;
- possuir grade;
- possuir tributação própria;
- exigir instalação;
- gerar Ordem de Serviço;
- possuir preços por filial.

Ou seja.

O comportamento da venda depende do produto.

---

# Ordem de Serviço

A Ordem de Serviço não é um módulo independente.

Ela representa uma consequência operacional.

Ela pode nascer:

- manualmente;
- automaticamente.

A geração automática ocorre quando uma venda contém produtos configurados para exigir instalação.

A origem da venda é irrelevante.

Pode ser:

- ERP;
- PDV Desktop;
- SmartPOS.

O gatilho sempre será o cadastro do produto.

---

# Cobrança

Cobranças representam uma consequência financeira.

Elas podem ser originadas a partir do faturamento da empresa.

O módulo centraliza:

- boletos;
- PIX;
- cartões;
- links de pagamento.

Sempre integrados ao financeiro.

---

# Perfil Tributário

O Perfil Tributário representa uma entidade reutilizável.

Seu objetivo é evitar repetição de parametrizações fiscais.

Produtos e serviços podem compartilhar o mesmo perfil.

---

# Hierarquia Tributária

A resolução tributária segue uma hierarquia.

```text
Produto / Serviço

↓

Perfil Tributário

↓

Empresa
```

Sempre prevalece a configuração mais específica.

---

# Multiempresa

A plataforma foi concebida para operar grupos empresariais.

Cada empresa mantém autonomia operacional.

Ao mesmo tempo, compartilha a mesma plataforma.

---

# Integrações

Integrações fazem parte da arquitetura.

Não representam funcionalidades adicionais.

A plataforma comunica-se naturalmente com:

- PDVs;
- SmartPOS;
- APIs;
- Webhooks;
- Marketplaces;
- Gateways;
- Equipamentos;
- Escritórios Contábeis.

---

# Assistentes

Sempre que um processo exigir muitas etapas, deve existir um assistente.

Exemplos.

- Reforma Tributária.
- Importações.
- Implantações futuras.

---

# Configuração Hierárquica

Sempre que possível.

Configurações devem obedecer uma hierarquia.

Exemplo.

```text
Empresa

↓

Perfil

↓

Item
```

Isso reduz manutenção.

---

# Reutilização

Toda informação deve existir apenas uma vez.

Exemplos.

Perfil Tributário.

Categorias.

Centro de Custo.

Naturezas.

Perfis.

Usuários.

---

# Eventos

A plataforma é orientada por eventos.

Exemplo.

Venda realizada.

↓

Atualiza estoque.

↓

Atualiza financeiro.

↓

Atualiza fiscal.

↓

Atualiza dashboards.

↓

Sincroniza PDVs.

↓

Sincroniza integrações.

↓

Gera notificações.

---

# Segmentação

O ERP adapta-se ao segmento da empresa.

Não existem funcionalidades obrigatórias para todos.

Recursos são habilitados conforme:

- comércio;
- serviços;
- clínicas;
- vestuário;
- combustíveis;
- supermercados;
- alimentação.

---

# Plataforma

O PDVPOS ERP deve ser entendido como uma plataforma composta por domínios especializados.

```text
                 PDVPOS ERP

        ┌────────────┬────────────┐

     Comercial     Financeiro

        ├────────────┼────────────┤

      Estoque       Fiscal

        ├────────────┼────────────┤

      Serviços     Cobranças

        ├────────────┼────────────┤

      Relatórios   Integrações

        └────────────┴────────────┘
```

Todos compartilham as mesmas entidades centrais.

---

# Decisão Arquitetural Fundamental

O PDVPOS ERP não foi desenvolvido como um conjunto de telas.

Ele foi desenvolvido como um conjunto de regras de negócio reutilizáveis.

As telas apenas apresentam essas regras ao usuário.

Sempre que uma nova funcionalidade for criada, ela deverá integrar-se naturalmente aos conceitos descritos neste documento.

---

# Conclusão

Este documento representa a base conceitual da plataforma.

Ele deve ser utilizado como referência para:

- desenvolvimento;
- arquitetura;
- documentação;
- implantação;
- treinamento;
- suporte;
- inteligência artificial.

Toda evolução do PDVPOS ERP deve preservar estes conceitos, garantindo consistência, simplicidade e escalabilidade ao longo do tempo.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README](../../README.md)
- [Modules Index](MODULES-INDEX.md)
- [Apresentacao dos Modulos](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)
---
**Navegacao:** [Início](../../README.md) | [Introdução](./MODULES-INDEX.md)
<!-- NAVIGATION_FOOTER:END -->
