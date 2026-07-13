<!-- NAVIGATION:START -->
---
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](../00-INTRODUCTION/MODULES-INDEX.md) | [Próximo](01-O-QUE-E-TEF.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / README
<!-- NAVIGATION:END -->

# Conceitos Fundamentais

Antes de iniciar a integração com o ConnectTEF, é importante compreender os principais conceitos utilizados ao longo da documentação.

Este módulo apresenta os componentes que fazem parte do ecossistema de pagamentos, as tecnologias suportadas pela plataforma e os diferentes modelos de integração disponíveis.

O objetivo não é ensinar como implementar uma integração, mas fornecer a base conceitual necessária para compreender a arquitetura e as APIs do ConnectTEF.

---

# Objetivo deste módulo

Ao concluir esta seção você compreenderá:

- o que é TEF;
- o que é um SmartPOS;
- o papel das adquirentes e facilitadoras;
- como funcionam os sistemas legados baseados em INTPOS;
- o conceito do Gerenciador Padrão;
- como funcionam Provider Android, Android Intent, API Local e API REST;
- como todos esses elementos fazem parte do ecossistema ConnectTEF.

---

# O que você encontrará

## TEF

Entenda o conceito de Transferência Eletrônica de Fundos e seu papel na automação comercial.

👉 [**01-O-QUE-E-TEF.md**](01-O-QUE-E-TEF.md)

---

## SmartPOS

Conheça os terminais inteligentes utilizados pelo ConnectTEF e como eles diferem das soluções tradicionais de pagamento.

👉 [**02-O-QUE-E-SMARTPOS.md**](02-O-QUE-E-SMARTPOS.md)

---

## Adquirente

Entenda o papel das empresas responsáveis pelo processamento e autorização das transações financeiras.

👉 [**03-O-QUE-E-ADQUIRENTE.md**](03-O-QUE-E-ADQUIRENTE.md)

---

## Facilitadora

Conheça as empresas que simplificam o acesso aos meios de pagamento e sua participação no ecossistema.

👉 [**04-O-QUE-E-FACILITADORA.md**](04-O-QUE-E-FACILITADORA.md)

---

## Gerenciador Padrão

Descubra como o ConnectTEF permite integrar sistemas legados baseados em INTPOS sem alterar o ERP.

👉 [**05-O-QUE-E-GERENCIADOR-PADRAO.md**](05-O-QUE-E-GERENCIADOR-PADRAO.md)

---

## INTPOS

Conheça o padrão tradicional de comunicação baseado em troca de arquivos e sua importância para sistemas legados.

👉 [**06-O-QUE-E-INTPOS.md**](06-O-QUE-E-INTPOS.md)

---

## SiTef

Entenda o conceito do SiTef e sua relação com a arquitetura do ConnectTEF.

👉 [**07-O-QUE-E-SITEF.md**](07-O-QUE-E-SITEF.md)

---

## Provider Android

Conheça uma das formas nativas de integração entre aplicações Android e o ConnectTEF.

👉 [**08-O-QUE-E-PROVIDER.md**](08-O-QUE-E-PROVIDER.md)

---

## Android Intent

Entenda como aplicações Android podem solicitar operações ao ConnectTEF utilizando recursos do próprio sistema operacional.

👉 [**09-O-QUE-E-INTENT.md**](09-O-QUE-E-INTENT.md)

---

## API Local

Conheça a interface HTTP local destinada principalmente a aplicações Desktop e ambientes locais.

👉 [**10-O-QUE-E-API-LOCAL.md**](10-O-QUE-E-API-LOCAL.md)

---

## API REST

Entenda a principal interface de integração do ConnectTEF para aplicações Web, SaaS e arquiteturas modernas.

👉 [**11-O-QUE-E-API-REST.md**](11-O-QUE-E-API-REST.md)

---

## Glossário

Consulte rapidamente os principais termos utilizados em toda a documentação.

👉 [**12-GLOSSARIO.md**](12-GLOSSARIO.md)

---

# Como os conceitos se relacionam

```text
                 Cliente
                    │
                    ▼
              ERP / PDV
                    │
                    ▼
              ConnectTEF
                    │
      +-------------+--------------+
      │             │              │
 API REST     API Local      Android
                                   │
                          +-----------------+
                          │                 │
                     Provider          Intent
                    │
                    ▼
               SmartPOS
                    │
        +-----------------------+
        │                       │
   Adquirente             Facilitadora
                    │
                    ▼
        Instituição Financeira
```

Todos esses conceitos fazem parte da mesma arquitetura e serão aprofundados ao longo da documentação.

---

# Qual integração devo escolher?

O ConnectTEF oferece diferentes formas de integração para atender diversos cenários tecnológicos.

| Cenário | Integração recomendada |
|---------|------------------------|
| ERP Desktop | API Local |
| ERP Web | API REST |
| ERP SaaS | API REST |
| Aplicação Android | Provider Android |
| Integração Android simplificada | Android Intent |
| ERP legado com INTPOS | Gerenciador Padrão |
| Sistemas compatíveis com SiTef | Compatibilidade SiTef |

Cada tecnologia será detalhada nas próximas seções.

---

# Para quem este módulo é indicado

Este conteúdo é recomendado para:

- Desenvolvedores
- Arquitetos de Software
- Integradores
- Parceiros White Label
- Revendedores
- Equipes Técnicas
- Consultores

---

# Ordem recomendada de leitura

Para melhor compreensão da plataforma, recomendamos seguir esta sequência:

1. O que é TEF
2. O que é SmartPOS
3. O que é Adquirente
4. O que é Facilitadora
5. O que é Gerenciador Padrão
6. O que é INTPOS
7. O que é SiTef
8. O que é Provider Android
9. O que é Android Intent
10. O que é API Local
11. O que é API REST
12. Glossário

Essa sequência foi planejada para apresentar os conceitos do mais geral para o mais específico.

---

# Próximo módulo

Depois de compreender os conceitos fundamentais, prossiga para **Arquitetura**, onde será apresentada a organização interna do ConnectTEF, seus componentes, fluxos de comunicação e princípios arquiteturais.

---

# Resumo

O módulo **Conceitos** estabelece a base de conhecimento necessária para compreender o ecossistema ConnectTEF.

Ao finalizar esta seção, você terá uma visão clara dos principais participantes do ecossistema de pagamentos, das tecnologias suportadas e das diferentes formas de integração disponibilizadas pela plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é TEF](01-O-QUE-E-TEF.md)
---
**Navegação:** [Anterior](../00-INTRODUCTION/MODULES-INDEX.md) | [Início](../README.md) | [Próximo](01-O-QUE-E-TEF.md)
<!-- NAVIGATION_FOOTER:END -->