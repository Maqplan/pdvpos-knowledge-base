<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](03-INTEGRACAO-VIA-PROVIDER.md) | [Próximo](05-INTEGRACAO-VIA-WINDOWS-DLL.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 04 - Integração via Intent
<!-- NAVIGATION:END -->

# 04 - Integração via Intent

A integração via **Intent** é um dos modelos nativos de comunicação suportados pelo ConnectTEF para aplicações Android executadas em dispositivos SmartPOS.

Nesse modelo, a aplicação comercial inicia uma operação enviando um **Intent** para o ConnectTEF. A plataforma assume o controle da operação, executa o fluxo solicitado e devolve o resultado à aplicação chamadora.

Essa abordagem é extremamente simples de implementar e segue os padrões oficiais de comunicação entre aplicações Android.

---

## Objetivo

Apresentar o funcionamento da integração via Intent, seus benefícios e os cenários recomendados para utilização em aplicações Android e SmartPOS.

---

# Como Funciona

A aplicação comercial inicia uma operação enviando um Intent para o ConnectTEF.

O ConnectTEF recebe a solicitação, executa toda a comunicação necessária com o SmartPOS e retorna o resultado ao aplicativo de origem.

```text
Aplicação Android
        │
        │ Intent
        ▼
 ConnectTEF
        │
        ├── SmartPOS
        ├── Adquirentes
        └── Serviços da Plataforma
        │
        ▼
Resultado da Operação
```

Toda a complexidade operacional permanece encapsulada dentro da plataforma.

---

# Principais Características

- Comunicação nativa do Android.
- Fácil implementação.
- Baixo acoplamento.
- Fluxo orientado a operações.
- Independente do fabricante do SmartPOS.
- Integração desacoplada.
- Compatível com aplicações Android.

---

# Cenários Recomendados

A integração via Intent é indicada para:

- Aplicações Android.
- PDVs SmartPOS.
- Aplicações comerciais.
- Sistemas White Label.
- Soluções embarcadas.
- Aplicações que executam operações pontuais.

---

# Vantagens

## Simplicidade

O desenvolvedor apenas inicia uma operação através de um Intent.

Todo o processamento da transação é realizado pelo ConnectTEF.

---

## Integração Nativa

Utiliza um mecanismo oficialmente suportado pelo Android para comunicação entre aplicações.

Não há necessidade de protocolos proprietários.

---

## Baixo Acoplamento

A aplicação permanece independente da implementação interna da plataforma.

Alterações futuras no ConnectTEF normalmente não exigem modificações significativas na aplicação integrada.

---

## Evolução Contínua

Novas funcionalidades podem ser incorporadas ao ConnectTEF sem alterar a arquitetura da aplicação comercial.

Isso reduz custos de manutenção e facilita futuras evoluções.

---

# Recursos Disponíveis

A integração via Intent pode ser utilizada para executar diversas operações da plataforma, como:

- Pagamentos.
- Cancelamentos.
- Consulta de transações.
- Recursos SmartPOS.
- Consulta de dispositivos.
- Operações operacionais.
- Funcionalidades disponibilizadas pelo ConnectTEF.

Os recursos disponíveis evoluem continuamente conforme novas versões da plataforma são disponibilizadas.

---

# Arquitetura

O fluxo permanece totalmente encapsulado dentro do Android.

```text
Aplicação Comercial

        │

        ▼

Intent Android

        │

        ▼

ConnectTEF

        │

        ▼

Core da Plataforma

        │

        ▼

SmartPOS / Adquirentes
```

Essa arquitetura simplifica a integração e reduz a necessidade de componentes intermediários.

---

# Quando Utilizar

A integração via Intent é recomendada quando:

- O projeto é desenvolvido para Android.
- As operações são iniciadas de forma pontual.
- Deseja-se aproveitar os mecanismos nativos do Android.
- Busca-se simplicidade de implementação.
- A aplicação será executada diretamente em SmartPOS.

---

# Provider x Intent

O ConnectTEF suporta ambos os mecanismos nativos do Android.

| Provider | Intent |
|----------|--------|
| Compartilhamento estruturado de dados e serviços | Execução direta de operações |
| Comunicação contínua entre aplicações | Comunicação orientada a ações |
| Ideal para integrações mais complexas | Ideal para operações rápidas e objetivas |
| Utiliza Content Provider | Utiliza Intents do Android |

Ambos utilizam recursos nativos da plataforma Android e podem coexistir na mesma aplicação, permitindo que cada projeto utilize o modelo mais adequado às suas necessidades.

---

# Comparativo com Outros Modelos

| Tecnologia | Ambiente |
|------------|----------|
| REST API | Web, Desktop e Cloud |
| REST API Local | Desktop e Rede Local |
| Provider | Android / SmartPOS |
| Intent | Android / SmartPOS |
| Windows DLL | Windows Desktop |
| INTPOS | Sistemas Legados |

Cada tecnologia atende um perfil específico de aplicação e arquitetura.

---

# Próximos Tópicos

O próximo capítulo apresenta a integração utilizando **Windows DLL**, destinada principalmente a aplicações Desktop e sistemas legados executados em ambiente Windows.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [03 - Integração via Provider](03-INTEGRACAO-VIA-PROVIDER.md)
- [05 - Integração via Windows DLL](05-INTEGRACAO-VIA-WINDOWS-DLL.md)
- [13 - Boas Práticas](13-BOAS-PRATICAS.md)

---
**Navegação:** [Anterior](03-INTEGRACAO-VIA-PROVIDER.md) | [README](../README.md) | [Próximo](05-INTEGRACAO-VIA-WINDOWS-DLL.md)
<!-- NAVIGATION_FOOTER:END -->