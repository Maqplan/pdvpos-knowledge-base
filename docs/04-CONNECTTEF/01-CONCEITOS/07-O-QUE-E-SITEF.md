---
title: O que é SiTef?
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](06-O-QUE-E-INTPOS.md) | [Próximo](08-O-QUE-E-PROVIDER.md)
---

> **Caminho:** [Início](../README.md) / Conceitos / O que é Sitef
<!-- NAVIGATION:END -->

# O que é SiTef?

O SiTef é uma plataforma de TEF amplamente utilizada no mercado brasileiro para comunicação entre sistemas de gestão e a infraestrutura de pagamentos.

Ao longo dos anos, tornou-se uma das soluções mais adotadas por ERPs e PDVs, estando presente em milhares de estabelecimentos comerciais.

Por esse motivo, muitas empresas que desejam modernizar sua operação precisam preservar integrações já desenvolvidas para esse ambiente.

---

# Objetivo

Apresentar o conceito do SiTef e explicar como ele se relaciona com a arquitetura do ConnectTEF.

---

# O papel do SiTef

Em uma arquitetura tradicional, o SiTef atua como intermediário entre o sistema de gestão e a infraestrutura responsável pelo processamento das transações.

Seu objetivo é permitir que o ERP solicite operações de pagamento sem precisar implementar diretamente toda a comunicação financeira.

---

# Arquitetura tradicional

```text
ERP / PDV

      │

      ▼

   SiTef

      │

      ▼

Terminal de Pagamento

      │

      ▼

Infraestrutura Financeira
```

Esse modelo foi amplamente adotado por diversos sistemas comerciais.

---

# O desafio da evolução

O mercado de pagamentos evoluiu significativamente nos últimos anos.

Novos SmartPOS.

Novos dispositivos Android.

Novas APIs.

Novos modelos de integração.

Muitos sistemas desenvolvidos para arquiteturas tradicionais passaram a enfrentar desafios para acompanhar essa evolução.

---

# Onde o ConnectTEF se encaixa?

O ConnectTEF foi projetado para facilitar essa transição.

Dependendo da arquitetura existente, é possível preservar integrações já consolidadas enquanto o restante da comunicação passa a utilizar a infraestrutura moderna da plataforma.

Essa abordagem reduz riscos e evita grandes alterações no ERP.

---

# Arquitetura baseada no ConnectTEF

```text
ERP

      │

      ▼

ConnectTEF

      │

      ▼

SmartPOS

      │

      ▼

Ecossistema de Pagamentos
```

O ERP continua utilizando uma única integração.

Toda a evolução tecnológica acontece dentro do ConnectTEF.

---

# Compatibilidade

O ConnectTEF oferece recursos que facilitam a integração e a migração de sistemas que já utilizam arquiteturas tradicionais de TEF.

Dependendo do cenário, essa transição pode ocorrer de forma gradual, preservando grande parte da lógica existente no sistema.

As opções disponíveis serão detalhadas no módulo **Migração** e na seção **Integrações**.

---

# Benefícios

Ao adotar uma arquitetura baseada no ConnectTEF, é possível obter:

- preservação do investimento realizado no ERP;
- redução do esforço de migração;
- acesso a SmartPOS modernos;
- integração com APIs atuais;
- evolução contínua da plataforma;
- menor dependência de tecnologias específicas.

---

# SiTef x ConnectTEF

É importante compreender que as duas soluções possuem propósitos diferentes.

| SiTef | ConnectTEF |
|--------|------------|
| Plataforma tradicional de TEF | Plataforma de integração para o ecossistema de pagamentos |
| Foco na comunicação da transação | Foco na abstração da integração |
| Modelo consolidado em sistemas legados | Arquitetura preparada para evolução contínua |
| Amplamente utilizado no mercado | Compatível com diferentes formas de integração e migração |

O ConnectTEF não tem como objetivo reproduzir a documentação do SiTef.

Seu objetivo é oferecer uma arquitetura moderna que permita integrar sistemas novos e também facilitar a evolução de aplicações já existentes.

---

# Quando este conceito é importante?

Este capítulo é especialmente relevante para empresas que:

- já possuem integração com SiTef;
- desejam migrar para SmartPOS;
- pretendem modernizar sua arquitetura de pagamentos;
- buscam reduzir o custo de manutenção da integração.

---

# Resumo

O SiTef é uma das principais plataformas de TEF utilizadas no mercado brasileiro.

O ConnectTEF foi desenvolvido para oferecer uma arquitetura moderna de integração, permitindo que sistemas existentes evoluam de forma gradual e segura, preservando investimentos realizados e reduzindo o impacto da migração para novas tecnologias.

---

# Próximo capítulo

No próximo capítulo conheceremos o **Provider Android**, um dos principais mecanismos de integração utilizados pelo ConnectTEF para aplicações Android.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é Provider](08-O-QUE-E-PROVIDER.md)
---
**Navegação:** [Anterior](06-O-QUE-E-INTPOS.md) | [Início](../README.md) | [Próximo](08-O-QUE-E-PROVIDER.md)
<!-- NAVIGATION_FOOTER:END -->
