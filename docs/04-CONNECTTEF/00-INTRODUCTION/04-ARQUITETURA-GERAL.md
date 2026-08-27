---
title: Arquitetura Geral
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](03-COMO-FUNCIONA.md) | [Próximo](05-ECOSSISTEMA-CONNECTTEF.md)
---
> **Caminho:** [Início](../README.md) / Introdução / Arquitetura Geral
<!-- NAVIGATION:END -->

# Arquitetura Geral

A arquitetura do ConnectTEF foi desenvolvida para desacoplar completamente o sistema de gestão da infraestrutura de pagamentos.

Ao invés de integrar diretamente com fabricantes, adquirentes e protocolos específicos, o ERP comunica-se apenas com o ConnectTEF, que passa a atuar como uma camada de abstração responsável por toda a comunicação com o ecossistema de pagamentos.

---

# Objetivo

Apresentar os principais componentes da arquitetura do ConnectTEF e demonstrar como eles trabalham em conjunto para simplificar a integração entre sistemas de gestão e SmartPOS.

---

# Visão Geral da Arquitetura

```text
                    ERP / PDV

                        │

                        ▼

                 ConnectTEF Core

        ┌───────────────┼────────────────┐

        ▼               ▼                ▼

 Integrações      Recursos         Monitoramento

        │               │                │

        └───────────────┼────────────────┘

                        ▼

                  SmartPOS

                        │

                        ▼

              Adquirentes / Gateways

                        │

                        ▼

                 Consumidor Final
```

Cada componente possui uma responsabilidade específica.

Essa separação permite que novas funcionalidades sejam incorporadas sem alterar o ERP.

---

# Camadas da Plataforma

A arquitetura pode ser dividida em cinco camadas principais.

---

## Camada de Aplicação

É composta pelos sistemas que utilizam o ConnectTEF.

Exemplos:

- ERP
- PDV
- Aplicações Android
- Sistemas Web
- Aplicativos Mobile

Esses sistemas nunca se comunicam diretamente com o SmartPOS.

Toda comunicação ocorre através da plataforma.

---

## Camada ConnectTEF

É o núcleo da plataforma.

Responsável por:

- interpretar requisições;
- validar informações;
- controlar o fluxo das transações;
- selecionar o método de comunicação;
- padronizar respostas;
- disponibilizar APIs.

Essa camada concentra toda a lógica de integração.

---

## Camada de Comunicação

Responsável por conectar o ConnectTEF aos diferentes dispositivos.

Dependendo do cenário, podem ser utilizados:

- API REST
- API Local
- Provider Android
- Android Intent
- INTPOS
- SiTef
- DLLs compatíveis

O ERP não precisa conhecer essas diferenças.

---

## Camada de Dispositivos

Representa os SmartPOS homologados pela plataforma.

Cada fabricante possui particularidades.

O ConnectTEF abstrai essas diferenças e oferece uma interface única para o sistema integrado.

---

## Camada de Pagamentos

Responsável pela comunicação financeira.

Nessa camada encontram-se:

- adquirentes;
- gateways;
- facilitadoras;
- redes de pagamento.

O ConnectTEF apenas coordena o fluxo da transação.

A autorização continua sendo realizada pela infraestrutura da adquirente.

---

# Componentes da Plataforma

## Core

Centro de processamento da plataforma.

Responsável por:

- receber solicitações;
- processar comandos;
- controlar estados;
- encaminhar respostas.

---

## Módulo de Integração

Disponibiliza diferentes formas de integração.

Exemplos:

- REST
- Localhost
- Provider
- Intent
- Gerenciador Padrão

Todos produzem exatamente o mesmo comportamento funcional.

---

## Módulo de Compatibilidade

Responsável por manter compatibilidade com:

- SmartPOS homologados;
- protocolos legados;
- integrações existentes.

Essa camada reduz o esforço de migração.

---

## Módulo de Recursos

Disponibiliza funcionalidades adicionais.

Entre elas:

- Cancelamento;
- Reimpressão;
- Offline;
- Marketing;
- Captura de CPF;
- Captura de Telefone;
- Captura de E-mail;
- Pesquisa NPS;
- Impressão;
- Código de Barras.

Esses recursos são independentes da tecnologia utilizada para integração.

---

## Módulo de Monitoramento

Responsável pelo acompanhamento operacional.

Permite:

- registrar eventos;
- acompanhar transações;
- diagnosticar problemas;
- facilitar suporte técnico.

---

# Filosofia Arquitetural

Toda a arquitetura foi construída seguindo um princípio simples.

> **O ERP deve conhecer apenas o ConnectTEF.**

Todo o restante pode evoluir independentemente.

Isso reduz:

- dependências;
- acoplamento;
- custo de manutenção;
- impacto de novas homologações.

---

# Arquitetura Evolutiva

Quando um novo fabricante é homologado, a arquitetura permanece exatamente a mesma.

```text
Antes

ERP

↓

ConnectTEF

↓

Fabricantes A e B


Depois

ERP

↓

ConnectTEF

↓

Fabricantes A

Fabricantes B

Fabricantes C

Fabricantes D

Fabricantes E
```

Nenhuma alteração é necessária no ERP.

---

# Benefícios da Arquitetura

Esta arquitetura proporciona:

- desacoplamento entre ERP e SmartPOS;
- evolução contínua;
- baixo acoplamento tecnológico;
- compatibilidade com múltiplos dispositivos;
- facilidade de manutenção;
- integração única;
- menor custo operacional;
- escalabilidade.

---

# Princípios da Plataforma

O ConnectTEF foi desenvolvido seguindo alguns princípios fundamentais.

- Uma única integração.
- Evolução contínua.
- Baixo acoplamento.
- Compatibilidade com sistemas legados.
- APIs padronizadas.
- Escalabilidade.
- Simplicidade operacional.

Esses princípios orientam toda a evolução da plataforma.

---

# Resumo

A arquitetura do ConnectTEF foi projetada para separar completamente o sistema de gestão da infraestrutura de pagamentos.

Enquanto o ERP permanece focado na operação comercial, o ConnectTEF concentra toda a lógica de comunicação, compatibilidade e evolução tecnológica.

Essa abordagem reduz a complexidade do software e permite acompanhar a evolução do mercado sem necessidade de alterar a integração existente.

---

# Próximo capítulo

Agora conheceremos o ecossistema ConnectTEF e entenderemos como a plataforma se conecta aos SmartPOS, adquirentes, ERPs, PDVs e demais componentes do ambiente de automação comercial.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Ecossistema ConnectTEF](05-ECOSSISTEMA-CONNECTTEF.md)
---
**Navegação:** [Anterior](03-COMO-FUNCIONA.md) | [Início](../README.md) | [Próximo](05-ECOSSISTEMA-CONNECTTEF.md)
<!-- NAVIGATION_FOOTER:END -->
