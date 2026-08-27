---
title: Visão Geral da Arquitetura
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](README.md) | [Próximo](02-COMPONENTES.md)
---
> **Caminho:** [Início](../README.md) / Arquitetura / Visão Geral
<!-- NAVIGATION:END -->

# Visão Geral da Arquitetura

A arquitetura do ConnectTEF foi projetada para desacoplar completamente o sistema de gestão da infraestrutura de pagamentos.

Em vez de integrar diretamente com fabricantes, SmartPOS, adquirentes e diferentes tecnologias de comunicação, o ERP realiza uma única integração com o ConnectTEF, que passa a atuar como uma camada de abstração responsável por toda a comunicação com o ecossistema de pagamentos.

Esse modelo reduz significativamente o custo de desenvolvimento, manutenção e evolução das integrações.

---

# Objetivo

Apresentar a arquitetura geral da plataforma ConnectTEF, seus principais componentes e a forma como eles interagem para oferecer uma integração padronizada, escalável e preparada para evolução contínua.

---

# Princípios Arquiteturais

Toda a plataforma foi construída seguindo alguns princípios fundamentais.

- Uma única integração para o ERP.
- Baixo acoplamento entre sistema e dispositivos.
- Evolução contínua sem alterar o ERP.
- Compatibilidade com tecnologias modernas e legadas.
- APIs padronizadas.
- Escalabilidade.
- Simplicidade operacional.

Esses princípios orientam todas as decisões arquiteturais da plataforma.

---

# Arquitetura Geral

```text
                    ERP / PDV
                         │
                         ▼
                 ┌─────────────────┐
                 │   ConnectTEF    │
                 │ Camada Central  │
                 └─────────────────┘
                         │
        ┌────────────────┼────────────────┐
        ▼                ▼                ▼
  APIs de Integração  Recursos      Compatibilidade
        │                │                │
        └────────────────┼────────────────┘
                         ▼
                    SmartPOS
                         │
                         ▼
          Adquirentes / Facilitadoras
                         │
                         ▼
             Instituições Financeiras
```

O ERP comunica-se exclusivamente com o ConnectTEF.

Toda a comunicação com o ecossistema de pagamentos é centralizada na plataforma.

---

# Camadas da Arquitetura

A arquitetura pode ser dividida em cinco camadas principais.

## 1. Aplicação

Representa os sistemas integrados ao ConnectTEF.

Exemplos:

- ERP
- PDV
- Aplicações Android
- Aplicações Desktop
- Sistemas Web
- Plataformas SaaS

Esses sistemas conhecem apenas a interface do ConnectTEF.

---

## 2. Plataforma ConnectTEF

É o núcleo da solução.

Responsável por:

- interpretar requisições;
- controlar o fluxo das transações;
- abstrair protocolos específicos;
- padronizar respostas;
- disponibilizar APIs;
- orquestrar a comunicação com os dispositivos.

Toda a inteligência da integração encontra-se nesta camada.

---

## 3. Integrações

A plataforma disponibiliza diferentes mecanismos de integração, permitindo atender diversos cenários tecnológicos.

Entre eles:

- API REST
- API Local
- Provider Android
- Android Intent
- Gerenciador Padrão
- Compatibilidade INTPOS
- Compatibilidade SiTef

Independentemente da tecnologia utilizada, todas convergem para a mesma arquitetura interna.

---

## 4. Dispositivos

Representa os equipamentos homologados pela plataforma.

Exemplos:

- SmartPOS Android
- Terminais compatíveis
- Dispositivos homologados

O ConnectTEF abstrai as diferenças entre fabricantes e modelos.

---

## 5. Ecossistema de Pagamentos

Composto pelos serviços responsáveis pelo processamento financeiro.

Inclui:

- adquirentes;
- facilitadoras;
- gateways;
- instituições financeiras;
- bandeiras de cartão.

A plataforma coordena toda a comunicação entre esses componentes e o sistema de gestão.

---

# Fluxo Arquitetural

O fluxo de uma operação segue sempre o mesmo padrão.

```text
Operador

     │

     ▼

ERP / PDV

     │

     ▼

ConnectTEF

     │

     ▼

SmartPOS

     │

     ▼

Adquirente

     │

     ▼

Instituição Financeira

     │

     ▼

Resposta

     │

     ▼

ERP
```

Independentemente da forma de integração escolhida, o fluxo operacional permanece o mesmo.

---

# Desacoplamento

Um dos principais objetivos da arquitetura é eliminar o acoplamento entre o ERP e o ecossistema de pagamentos.

Sem o ConnectTEF, o sistema precisaria conhecer detalhes de fabricantes, adquirentes e protocolos de comunicação.

Com o ConnectTEF, toda essa complexidade fica encapsulada na plataforma.

Isso permite que novas tecnologias sejam incorporadas sem alterar o software integrado.

---

# Escalabilidade

A arquitetura foi projetada para crescer continuamente.

Quando novos SmartPOS, adquirentes ou funcionalidades são adicionados, o ERP continua utilizando exatamente a mesma interface de comunicação.

Essa abordagem protege o investimento realizado na integração e reduz significativamente o custo de evolução da solução.

---

# Benefícios da Arquitetura

A arquitetura do ConnectTEF oferece diversas vantagens.

- Uma única integração.
- Redução do débito técnico.
- Menor custo de manutenção.
- Evolução contínua da plataforma.
- Compatibilidade com sistemas legados.
- Integração com múltiplos fabricantes.
- Escalabilidade para novos recursos.
- Menor necessidade de homologações específicas.

---

# Responsabilidades da Plataforma

O ConnectTEF é responsável por:

- receber solicitações do ERP;
- interpretar operações;
- selecionar a tecnologia de integração adequada;
- comunicar-se com os SmartPOS;
- abstrair diferenças entre fabricantes;
- controlar o ciclo completo da transação;
- devolver respostas padronizadas ao sistema de gestão.

Essa separação mantém o ERP focado exclusivamente na lógica de negócio.

---

# O que esta arquitetura não faz

É importante compreender os limites de atuação da plataforma.

O ConnectTEF:

- não substitui o ERP;
- não substitui a adquirente;
- não processa pagamentos diretamente;
- não realiza autorização financeira.

Seu papel é fornecer uma camada de integração entre o sistema de gestão e o ecossistema de pagamentos.

---

# Resumo

A arquitetura do ConnectTEF foi desenvolvida para oferecer uma camada única de integração entre sistemas de gestão e o ecossistema de pagamentos.

Ao centralizar a comunicação com SmartPOS, adquirentes e diferentes tecnologias de integração, a plataforma reduz o acoplamento, simplifica a manutenção e permite que o ERP acompanhe a evolução do mercado sem necessidade de novas integrações.

---

# Próximo capítulo

No próximo capítulo conheceremos em detalhes cada um dos componentes que formam a arquitetura do ConnectTEF e suas respectivas responsabilidades dentro da plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Componentes](02-COMPONENTES.md)
---
**Navegação:** [Anterior](README.md) | [Início](../README.md) | [Próximo](02-COMPONENTES.md)
<!-- NAVIGATION_FOOTER:END -->
