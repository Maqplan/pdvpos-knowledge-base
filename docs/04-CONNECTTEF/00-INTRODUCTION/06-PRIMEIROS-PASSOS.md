---
title: Primeiros Passos
classification: PUBLIC
owner: PDVPOS LTDA
version: "1.0"
last_updated: 2026-08-27
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](05-ECOSSISTEMA-CONNECTTEF.md) | [Próximo](MODULES-INDEX.md)
---

> **Caminho:** [Início](../README.md) / Introdução / Primeiros Passos
<!-- NAVIGATION:END -->

# Primeiros Passos

Agora que você conhece o ConnectTEF, sua arquitetura e os benefícios da plataforma, é hora de iniciar sua jornada de integração.

Este capítulo apresenta os caminhos recomendados de acordo com o perfil da sua empresa e o tipo de sistema que será integrado.

---

# Objetivo

Orientar novos parceiros, desenvolvedores e integradores sobre a melhor forma de iniciar uma integração com o ConnectTEF.

Ao final deste capítulo você saberá qual documentação consultar primeiro e quais decisões devem ser tomadas antes de iniciar o desenvolvimento.

---

# Antes de começar

Recomendamos responder algumas perguntas.

## Seu sistema é:

- ERP
- PDV Desktop
- PDV Android
- Aplicação Web
- Aplicação Mobile
- Outro

---

## Qual tecnologia de integração pretende utilizar?

O ConnectTEF suporta diferentes formas de integração.

Entre elas:

- API REST
- API Local
- Android Provider
- Android Intent
- Gerenciador Padrão (INTPOS)
- Compatibilidade SiTef
- Compatibilidade Elgin

Cada tecnologia atende cenários específicos.

A documentação apresentará cada uma delas em detalhes.

---

# Escolha seu caminho

## Sou desenvolvedor de ERP

Recomendamos a seguinte sequência:

```text
Conceitos

↓

Arquitetura

↓

Integrações

↓

API

↓

Exemplos
```

---

## Sou desenvolvedor de PDV

Sequência recomendada:

```text
Conceitos

↓

Arquitetura

↓

SmartPOS

↓

Integrações

↓

API
```

---

## Meu sistema já utiliza INTPOS

Você provavelmente poderá utilizar o Gerenciador Padrão.

Sequência recomendada:

```text
Migração

↓

Gerenciador Padrão

↓

Compatibilidade

↓

Primeira Transação
```

---

## Meu sistema já utiliza SiTef

Consulte primeiro:

```text
Migração

↓

Compatibilidade SiTef

↓

Arquitetura

↓

Integração
```

---

## Meu sistema é Android

Recomendamos conhecer primeiro:

- Provider Android
- Android Intent
- APIs Android

---

## Meu sistema é Web

Recomendamos iniciar por:

- API REST
- Autenticação
- Primeira Transação

---

# Ambiente de desenvolvimento

Antes de iniciar a integração certifique-se de possuir:

- acesso à documentação;
- ambiente de desenvolvimento;
- credenciais de acesso (quando aplicável);
- dispositivo SmartPOS homologado ou ambiente de testes;
- conexão com a internet para validações iniciais.

---

# Boas práticas

Antes de desenvolver recomendamos:

- Ler toda a documentação da arquitetura.
- Escolher apenas uma forma de integração.
- Não misturar diferentes tecnologias na mesma implementação.
- Utilizar sempre as versões mais recentes das APIs.
- Consultar os exemplos de integração antes de iniciar o desenvolvimento.

---

# Organização da documentação

A documentação foi organizada na seguinte sequência.

```text
Introdução

↓

Conceitos

↓

Arquitetura

↓

Integrações

↓

Recursos

↓

Compatibilidade

↓

API

↓

Migração

↓

Operação

↓

Casos de Uso

↓

FAQ
```

Essa organização foi pensada para reduzir a curva de aprendizado e facilitar o desenvolvimento.

---

# Precisa migrar um sistema existente?

O ConnectTEF possui mecanismos de compatibilidade para facilitar a migração de sistemas já existentes.

Entre eles:

- Gerenciador Padrão (INTPOS)
- Compatibilidade SiTef
- Compatibilidade com integrações Elgin
- APIs modernas
- Integrações Desktop
- Integrações Android

Consulte posteriormente o módulo **Migração** para conhecer todas as possibilidades.

---

# Próximos capítulos

Agora iniciaremos os conceitos fundamentais utilizados ao longo de toda a documentação.

Os próximos capítulos apresentam os principais termos utilizados pela plataforma, como:

- TEF
- SmartPOS
- Adquirentes
- Provider
- API Local
- API REST
- Gerenciador Padrão
- INTPOS
- SiTef

Compreender esses conceitos facilitará significativamente a leitura dos próximos módulos.

---

# Resumo

A etapa de Primeiros Passos tem como objetivo orientar o desenvolvedor antes do início da integração.

Ao escolher corretamente a arquitetura e compreender os conceitos fundamentais da plataforma, o processo de desenvolvimento torna-se mais simples, previsível e preparado para futuras evoluções.

---

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Índice de Módulos](MODULES-INDEX.md)
---
**Navegação:** [Anterior](05-ECOSSISTEMA-CONNECTTEF.md) | [Início](../README.md) | [Próximo](MODULES-INDEX.md)
<!-- NAVIGATION_FOOTER:END -->
