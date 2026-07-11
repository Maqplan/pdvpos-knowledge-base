<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](08-COMPATIBILIDADE-ELGIN.md) | [Próximo](10-INTEGRACAO-SMARTPOS.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 09 - Integração Desktop
<!-- NAVIGATION:END -->

# 09 - Integração Desktop

A integração Desktop foi desenvolvida para aplicações comerciais executadas em ambiente Windows que necessitam comunicar-se com o ConnectTEF de forma simples, rápida e independente da tecnologia utilizada pelo ERP ou PDV.

O objetivo é permitir que sistemas Desktop integrem-se à plataforma utilizando o modelo de comunicação mais adequado ao seu cenário, preservando a arquitetura existente da aplicação.

O ConnectTEF não impõe uma única tecnologia de integração. Pelo contrário, disponibiliza diferentes alternativas para atender aplicações legadas e novos projetos.

---

## Objetivo

Apresentar as opções de integração disponíveis para aplicações Desktop e orientar qual tecnologia utilizar em cada cenário.

---

# Arquitetura

Em aplicações Desktop, o ConnectTEF atua como uma camada intermediária entre o ERP e o ecossistema de pagamentos.

```text
ERP / PDV Desktop

        │

        ├── REST API Local
        ├── REST API
        ├── Windows DLL
        └── INTPOS

        ▼

ConnectTEF

        │

        ├── SmartPOS
        ├── POS
        ├── Adquirentes
        └── Serviços da Plataforma
```

Toda a comunicação com dispositivos de pagamento permanece centralizada no ConnectTEF.

---

# Tecnologias Disponíveis

## REST API Local

Modelo recomendado para aplicações Desktop modernas.

Características:

- Comunicação HTTP.
- Alta performance.
- Baixa latência.
- Independência da Internet entre ERP e ConnectTEF.
- Fácil integração.

Ideal para:

- ERP Desktop.
- PDVs.
- Sistemas comerciais.
- Aplicações Windows.

---

## REST API

Permite comunicação através da infraestrutura em nuvem.

Indicado para:

- Aplicações SaaS.
- Sistemas híbridos.
- Integrações remotas.
- Plataformas distribuídas.

---

## Windows DLL

Disponibiliza integração através de biblioteca nativa.

Indicado para:

- Sistemas legados.
- Aplicações Delphi.
- Aplicações C++.
- Softwares que já utilizam DLLs.

---

## INTPOS

Compatibilidade para aplicações que já utilizam comunicação baseada em arquivos.

Ideal para projetos de migração com baixo impacto na arquitetura existente.

---

# Quando Utilizar Cada Modelo

| Cenário | Tecnologia Recomendada |
|----------|------------------------|
| Novo ERP Desktop | REST API Local |
| Novo PDV Desktop | REST API Local |
| Aplicação SaaS | REST API |
| Sistema Legado | Windows DLL |
| Integração INTPOS existente | INTPOS |
| Migração gradual | INTPOS ou Windows DLL |

---

# Benefícios

A integração Desktop oferece diversas vantagens para software houses e desenvolvedores.

## Preservação da Arquitetura

O ERP continua responsável apenas pelas regras de negócio.

Toda a comunicação com SmartPOS, adquirentes e dispositivos permanece centralizada no ConnectTEF.

---

## Facilidade de Migração

Projetos existentes podem evoluir gradualmente sem necessidade de reescrever toda a camada de integração.

---

## Evolução Contínua

Novos fabricantes, novos dispositivos e novos recursos são adicionados ao ConnectTEF sem exigir alterações significativas na aplicação Desktop.

---

## Independência Tecnológica

O ERP permanece desacoplado da tecnologia utilizada pelos fabricantes de equipamentos.

Essa abordagem reduz custos de manutenção e aumenta a vida útil da integração.

---

# Compatibilidade

A integração Desktop é compatível com aplicações desenvolvidas em diferentes tecnologias, incluindo:

- Delphi
- C#
- VB.NET
- Java
- C++
- Python
- PHP
- Node.js
- Go
- Rust

Qualquer linguagem capaz de consumir uma API HTTP ou utilizar bibliotecas compatíveis pode integrar-se ao ConnectTEF.

---

# Cenários de Utilização

A integração Desktop é indicada para:

- ERP.
- PDV Desktop.
- Frente de Caixa.
- Automação Comercial.
- Restaurantes.
- Supermercados.
- Farmácias.
- Lojas de Conveniência.
- Distribuidores.
- Sistemas Corporativos.

---

# Filosofia da Plataforma

O ConnectTEF foi desenvolvido para adaptar-se à realidade tecnológica do parceiro.

Ao invés de exigir mudanças na arquitetura da aplicação, a plataforma disponibiliza múltiplos modelos de integração para que cada software house escolha a alternativa mais adequada ao seu ambiente.

Essa abordagem reduz riscos, preserva investimentos e acelera o processo de integração.

---

# Próximos Tópicos

No próximo capítulo será apresentada a integração destinada às aplicações executadas diretamente em dispositivos SmartPOS Android.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [01 - Integração via API REST](01-INTEGRACAO-VIA-API-REST.md)
- [02 - Integração via API Local](02-INTEGRACAO-VIA-API-LOCAL.md)
- [10 - Integração SmartPOS](10-INTEGRACAO-SMARTPOS.md)

---
**Navegação:** [Anterior](08-COMPATIBILIDADE-ELGIN.md) | [README](../README.md) | [Próximo](10-INTEGRACAO-SMARTPOS.md)
<!-- NAVIGATION_FOOTER:END -->