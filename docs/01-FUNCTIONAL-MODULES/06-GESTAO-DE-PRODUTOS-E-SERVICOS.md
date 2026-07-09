# PDVPOS ERP

> Official Product Documentation

# 06 - Gestão de Produtos e Serviços

---

# Objetivo

O módulo **Gestão de Produtos e Serviços** é o núcleo operacional do PDVPOS ERP.

Ele centraliza todas as informações necessárias para comercialização de produtos, prestação de serviços, controle de estoque, tributação, formação de preços, integração com documentos fiscais, ordens de serviço e canais de venda.

Praticamente todos os demais módulos da plataforma utilizam as informações cadastradas neste módulo, tornando-o um dos pilares da operação empresarial.

---

# O que este módulo resolve

Produtos e serviços estão presentes em praticamente todos os processos da empresa.

Um cadastro incompleto ou inconsistente gera problemas em compras, vendas, estoque, emissão de documentos fiscais, financeiro e relatórios.

O módulo Gestão de Produtos e Serviços foi desenvolvido para:

- Centralizar o cadastro de produtos e serviços.
- Automatizar processos comerciais.
- Controlar preços e custos.
- Integrar tributação.
- Organizar variações.
- Gerenciar códigos de barras.
- Integrar PDVs e canais de venda.
- Reduzir retrabalho.

---

# Por que este módulo é importante?

No PDVPOS ERP, o produto não representa apenas um item comercial.

Ele define o comportamento da plataforma.

A partir das informações cadastradas no produto, o sistema consegue determinar automaticamente:

- Como comprar.
- Como vender.
- Como tributar.
- Como controlar o estoque.
- Como calcular preços.
- Como emitir documentos fiscais.
- Quando gerar uma Ordem de Serviço.
- Como sincronizar com os PDVs.
- Como disponibilizar o item para outras empresas do grupo.

Essa abordagem reduz parametrizações duplicadas e mantém toda a operação integrada.

---

# O Produto é o Centro da Plataforma

O cadastro de produtos representa a principal entidade operacional do PDVPOS ERP.

As informações definidas nesse cadastro são utilizadas automaticamente por diversos módulos da plataforma, tornando o produto o ponto central dos processos comerciais, fiscais, financeiros e operacionais.

O diagrama a seguir ilustra como o cadastro de produtos se relaciona com os principais módulos do sistema.

```text
                           Produto
                               │
    ┌──────────────────────────┼──────────────────────────┐
    │                          │                          │
 Compras                   Estoque                    Vendas
    │                          │                          │
    ├──────────────┬───────────┼───────────┬──────────────┤
    │              │           │           │              │
Financeiro     Fiscal   Ordem de Serviço  Marketplace   PDVs
    │              │           │           │              │
    └──────────────┴───────────┼───────────┴──────────────┘
                               │
                   Relatórios e Indicadores
```

O relacionamento apresentado demonstra que um único cadastro de produto pode influenciar diretamente diversos processos da empresa, evitando duplicidade de informações e garantindo que todos os módulos operem de forma integrada.

---

# Recursos Disponíveis

| Recurso | Descrição |
|----------|-----------|
| Cadastro de Produtos | Cadastro completo de mercadorias. |
| Cadastro de Serviços | Cadastro de serviços prestados pela empresa. |
| Produtos Simples | Controle individual de produtos. |
| Grades e Variações | Criação de famílias de produtos com itens independentes. |
| Código de Barras (EAN) | Controle de múltiplos códigos por produto. |
| Formação de Preço | Calculadora integrada para definição de preços e margens. |
| Perfil Tributário | Associação das regras fiscais reutilizáveis. |
| Tributação Individual | Configuração específica para produtos com exceções tributárias. |
| Controle por Filial | Disponibilização seletiva de produtos entre empresas e filiais. |
| Ordem de Serviço | Definição de produtos que exigem instalação ou montagem. |
| Marketplace | Compartilhamento de produtos entre empresas do grupo. |
| SmartPOS e PDVs | Sincronização automática com os pontos de venda. |

---

# Estrutura do Cadastro

O cadastro de produtos foi desenvolvido para reunir todas as informações necessárias ao longo do ciclo de vida do item.

Entre elas:

- Identificação.
- Informações comerciais.
- Dados fiscais.
- Formação de preços.
- Estoque.
- Códigos de barras.
- Classificações.
- Integrações.
- Configurações específicas por segmento.

---

# Produtos

Cada produto possui identidade própria dentro da plataforma.

O cadastro permite controlar informações como:

- Código interno.
- Código de barras.
- Descrição.
- Unidade.
- Marca.
- Grupo.
- Subgrupo.
- Fabricante.
- Fornecedor principal.
- Peso.
- Dimensões.
- Informações fiscais.
- Dados comerciais.

Essas informações são compartilhadas automaticamente pelos demais módulos.

---

# Serviços

Além dos produtos, o ERP permite cadastrar serviços.

Os serviços podem ser utilizados para:

- Emissão de NFS-e.
- Ordens de Serviço.
- Operações comerciais.
- Controle financeiro.

A tributação dos serviços utiliza o mesmo conceito de Perfil Tributário empregado para produtos.

---

# Formação de Preço

O PDVPOS ERP possui uma calculadora integrada para formação de preços.

Esse recurso auxilia na definição do preço de venda considerando:

- Custo de aquisição.
- Margem desejada.
- Percentual de lucro.
- Valor final de venda.

A calculadora reduz erros de precificação e ajuda a evitar prejuízos decorrentes de margens incorretas.

---

# Perfil Tributário

Cada produto ou serviço pode ser associado a um Perfil Tributário.

Essa abordagem permite reutilizar configurações fiscais entre diversos itens, reduzindo parametrizações repetitivas.

Quando necessário, o produto também pode possuir configurações tributárias específicas, prevalecendo sempre a configuração mais detalhada.

---

# Grades e Variações

O PDVPOS ERP utiliza um conceito de grade baseado em produtos independentes.

Ao criar uma grade, o sistema gera novos produtos pertencentes à mesma família.

Cada variação possui:

- Cadastro próprio.
- Código próprio.
- Código de barras próprio.
- Estoque próprio.
- Preço próprio.
- Tributação própria.
- Histórico próprio.

Essa arquitetura oferece maior flexibilidade operacional do que grades convencionais.

---

# Código de Barras

Cada produto pode possuir um ou mais códigos de barras.

Nas grades, cada variação possui seu próprio EAN, permitindo controle individual durante compras, vendas e inventários.

---

# Controle por Filial

Produtos podem ser disponibilizados seletivamente entre empresas e filiais.

Essa funcionalidade permite que:

- Um produto seja vendido em uma unidade e não em outra.
- Cada filial utilize preços próprios.
- Estoques permaneçam independentes.

---

# Produtos que Geram Serviços

O cadastro permite definir que determinados produtos exigem instalação, montagem ou outro atendimento técnico.

Quando esse produto é vendido, o sistema pode gerar automaticamente uma Ordem de Serviço.

Essa funcionalidade integra o processo comercial ao pós-venda sem necessidade de controles paralelos.

---

# Configurações por Segmento

O comportamento do cadastro adapta-se conforme o segmento da empresa.

Exemplos:

## Vestuário e Calçados

- Grades.
- Variações.
- Tamanhos.
- Cores.

---

## Combustíveis

- Percentual de GLP.
- Informações fiscais específicas.
- Dados obrigatórios para emissão de NF-e.

---

## Clínicas

Produtos e serviços podem ser utilizados em operações específicas do segmento, conforme as configurações da empresa.

---

## Prestadores de Serviço

Integração direta com Ordens de Serviço e emissão de NFS-e.

---

# Fluxo Operacional

O cadastro de produtos participa de praticamente toda a operação da empresa.

```text
Cadastro do Produto

↓

Compras

↓

Entrada de Estoque

↓

Vendas

↓

Documento Fiscal

↓

Financeiro

↓

Ordem de Serviço (quando aplicável)

↓

Relatórios
```

---

# Integração com Outros Módulos

O módulo Gestão de Produtos e Serviços integra-se diretamente com:

- Gestão de Compras.
- Gestão de Estoque.
- Gestão Comercial e Vendas.
- Gestão Financeira.
- Gestão Fiscal.
- Gestão da Reforma Tributária.
- Gestão de Serviços e Ordens de Serviço.
- Integrações.
- Relatórios.
- Multiempresa.

---

# Cenários de Uso

## Comércio

Cadastro completo de mercadorias para venda, controle de estoque e emissão fiscal.

---

## Prestadores de Serviço

Cadastro de serviços para faturamento, NFS-e e Ordens de Serviço.

---

## Vestuário

Controle de grades com estoque e preços independentes para cada variação.

---

## Redes de Lojas

Controle de disponibilidade, preços e estoques por filial.

---

## Empresas Técnicas

Venda de produtos que geram automaticamente Ordens de Serviço.

---

# Benefícios

A utilização do módulo Gestão de Produtos e Serviços proporciona:

- Cadastro único para toda a plataforma.
- Redução de retrabalho.
- Formação de preços mais segura.
- Integração fiscal.
- Controle completo das variações.
- Automação de processos.
- Melhor organização operacional.

---

# Diferencial Competitivo

O PDVPOS ERP trata o produto como a principal entidade operacional da plataforma.

Um único cadastro concentra todas as informações comerciais, fiscais, financeiras e operacionais necessárias para que os demais módulos trabalhem de forma integrada.

Além disso, o sistema oferece uma arquitetura diferenciada para grades e variações, onde cada item possui vida própria, com estoque, preço, código de barras e tributação independentes.

A calculadora de formação de preços, o Perfil Tributário reutilizável e a integração automática com Ordens de Serviço reforçam o papel estratégico deste módulo na operação da empresa.

---

# Valor para o Negócio

Ao centralizar as informações de produtos e serviços em um único ambiente, o PDVPOS ERP elimina cadastros duplicados, reduz erros operacionais e garante que todas as áreas da empresa trabalhem sobre uma única fonte de informação.

Essa abordagem aumenta a produtividade, simplifica a gestão e oferece uma base sólida para o crescimento da empresa.

---

# Ideal para

Este módulo é recomendado para empresas que:

- Comercializam produtos.
- Prestam serviços.
- Trabalham com grades e variações.
- Administram múltiplas filiais.
- Necessitam de controle tributário avançado.
- Buscam integrar vendas, estoque, financeiro e fiscal.
- Desejam automatizar processos a partir do cadastro dos produtos.

---

# Próximo Capítulo

**07 - Gestão de Estoque**

Conheça como o PDVPOS ERP controla movimentações, depósitos, inventários, lotes, etiquetas, embalagens e integrações com equipamentos de automação comercial.