# PDVPOS ERP

> Official Product Documentation

# 13 - Gestão da Reforma Tributária

---

# Objetivo

O módulo **Gestão da Reforma Tributária** prepara o PDVPOS ERP para atender às mudanças introduzidas pela Reforma Tributária brasileira, permitindo configurar regras fiscais de forma organizada, reutilizável e escalável.

A plataforma foi desenvolvida para reduzir a complexidade da implantação da nova legislação, evitando parametrizações repetitivas e facilitando futuras alterações tributárias.

---

# O que este módulo resolve

A Reforma Tributária representa uma das maiores mudanças fiscais da história do Brasil.

A adaptação manual de milhares de produtos e serviços pode tornar-se um processo complexo e demorado.

O PDVPOS ERP foi desenvolvido para:

- Centralizar configurações tributárias.
- Evitar parametrizações repetitivas.
- Permitir configurações hierárquicas.
- Simplificar a implantação da Reforma Tributária.
- Facilitar futuras alterações na legislação.
- Reduzir erros de configuração.

---

# Por que este módulo é importante?

Empresas possuem centenas ou milhares de produtos.

Configurar individualmente a tributação de cada item torna a manutenção praticamente inviável.

O PDVPOS ERP adota um modelo hierárquico que permite configurar regras tributárias em diferentes níveis, reutilizando configurações sempre que possível.

Essa arquitetura reduz o tempo de implantação, simplifica a manutenção e oferece muito mais flexibilidade para acompanhar futuras alterações da legislação.

---

# Recursos Disponíveis

| Recurso | Descrição |
|----------|-----------|
| Configuração por Empresa | Define regras tributárias padrão para toda a empresa. |
| Perfil Tributário | Permite reutilizar configurações fiscais em múltiplos produtos e serviços. |
| Configuração por Produto | Permite personalizar a tributação individualmente quando necessário. |
| Configuração por Serviço | Permite regras específicas para serviços. |
| Herança Tributária | O sistema procura automaticamente a configuração mais específica disponível. |
| Assistente de Implantação | Processo guiado para configuração inicial da Reforma Tributária. |
| Compatibilidade com Perfis Tributários | Integração completa com os perfis tributários já utilizados pelo ERP. |

---

# Como funciona

O PDVPOS ERP utiliza uma arquitetura baseada em níveis de configuração.

Sempre que uma informação tributária é necessária, o sistema procura automaticamente a configuração mais específica.

A ordem de prioridade é:

```text
Produto ou Serviço

↓

Perfil Tributário

↓

Empresa
```

Se uma configuração existir diretamente no produto, ela será utilizada.

Caso contrário, o sistema utilizará o Perfil Tributário.

Na ausência deste, serão aplicadas as configurações definidas para a empresa.

Esse mecanismo reduz significativamente a quantidade de parametrizações necessárias.

---

# Configuração por Empresa

Permite definir regras tributárias gerais para toda a empresa.

Esse nível é utilizado quando não existem configurações mais específicas.

É especialmente útil durante a implantação inicial.

---

# Perfil Tributário

O Perfil Tributário representa um dos principais conceitos do PDVPOS ERP.

Ele permite agrupar produtos e serviços que compartilham o mesmo comportamento tributário.

Ao alterar um perfil, todos os itens vinculados passam a utilizar automaticamente a nova configuração.

Essa abordagem reduz manutenção e facilita futuras alterações legais.

---

# Configuração por Produto

Quando determinado produto possui regras tributárias diferentes dos demais itens do mesmo perfil, é possível configurar sua tributação individualmente.

Esse nível possui prioridade máxima dentro da hierarquia.

---

# Configuração por Serviço

Os serviços seguem o mesmo conceito utilizado pelos produtos.

Sempre que necessário, podem possuir regras tributárias próprias sem comprometer os demais serviços vinculados ao mesmo perfil.

---

# Assistente de Implantação

Para simplificar a adaptação à Reforma Tributária, o PDVPOS ERP disponibiliza um assistente de configuração dividido em quatro etapas.

O objetivo é orientar o usuário durante a implantação inicial, reduzindo erros de parametrização e acelerando a adoção da nova legislação.

Essa abordagem torna o processo muito mais simples do que configurações totalmente manuais.

---

# Hierarquia Tributária

A plataforma utiliza um mecanismo automático de resolução das configurações.

```text
Produto / Serviço

↓

Perfil Tributário

↓

Empresa
```

Sempre prevalece a configuração mais específica disponível.

Essa arquitetura reduz duplicidade de informações e facilita futuras alterações fiscais.

---

# Automações do Processo

Sempre que uma operação fiscal é realizada, o sistema resolve automaticamente a configuração tributária aplicável.

```text
Venda

↓

Identifica Produto

↓

Consulta Configuração Tributária

↓

Produto

↓

Perfil Tributário

↓

Empresa

↓

Aplica Tributação

↓

Emissão do Documento Fiscal
```

O usuário não precisa selecionar manualmente qual regra tributária será utilizada.

---

# Integração com Outros Módulos

O módulo Gestão da Reforma Tributária integra-se diretamente com:

- Gestão Fiscal e Documentos Eletrônicos.
- Gestão de Produtos e Serviços.
- Gestão Comercial e Vendas.
- Gestão de Compras.
- Gestão Financeira.
- Cadastro de Serviços.
- Relatórios.

---

# Cenários de Uso

## Implantação Inicial

Configuração rápida da tributação da empresa utilizando o assistente de implantação.

---

## Empresas com Grande Quantidade de Produtos

Reutilização de Perfis Tributários para evitar configurações repetitivas.

---

## Produtos com Tributação Específica

Personalização individual apenas dos produtos que realmente exigem tratamento diferenciado.

---

## Mudanças na Legislação

Atualização centralizada das regras tributárias através dos Perfis Tributários, reduzindo o impacto operacional das alterações legais.

---

# Benefícios

A utilização do módulo Gestão da Reforma Tributária proporciona:

- Implantação simplificada.
- Redução de parametrizações.
- Maior reutilização das configurações.
- Facilidade de manutenção.
- Preparação para futuras alterações legais.
- Menor risco de inconsistências tributárias.

---

# Diferencial Competitivo

O PDVPOS ERP foi desenvolvido para tornar a Reforma Tributária administrável.

Ao utilizar uma arquitetura baseada em herança de configurações e Perfis Tributários reutilizáveis, a plataforma reduz drasticamente o trabalho necessário para implantar e manter as novas regras fiscais.

Além disso, o assistente de implantação orienta o usuário durante todo o processo, tornando uma tarefa complexa muito mais simples.

---

# Valor para o Negócio

A Reforma Tributária exigirá constantes adaptações das empresas.

O PDVPOS ERP foi preparado para transformar essa obrigação legal em um processo organizado, reutilizável e sustentável.

Isso reduz custos de implantação, facilita a manutenção da plataforma e oferece maior segurança para acompanhar a evolução da legislação brasileira.

---

# Ideal para

Este módulo é recomendado para empresas que:

- Precisam adaptar-se à Reforma Tributária.
- Possuem grande volume de produtos ou serviços.
- Buscam reduzir parametrizações fiscais.
- Desejam simplificar futuras alterações tributárias.
- Necessitam manter conformidade fiscal com menor esforço operacional.

---

# Próximo Capítulo

**14 - Gestão Contábil**

Conheça os recursos que conectam o PDVPOS ERP ao escritório de contabilidade, permitindo compartilhamento automático de arquivos fiscais, acesso dedicado ao contador e integração entre empresa e contabilidade.