<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](02-INTEGRACAO-VIA-API-LOCAL.md) | [Próximo](04-INTEGRACAO-VIA-INTENT.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 03 - Integração via Provider
<!-- NAVIGATION:END -->

# 03 - Integração via Provider

O **Provider** é um dos modelos de integração disponibilizados pelo ConnectTEF para aplicações Android executadas em SmartPOS.

Esse modelo permite que uma aplicação acesse os serviços disponibilizados pelo ConnectTEF através do mecanismo nativo de **Content Providers** do Android, promovendo uma integração padronizada, segura e desacoplada.

A comunicação ocorre diretamente entre aplicações instaladas no dispositivo, dispensando bibliotecas proprietárias e simplificando a integração.

---

## Objetivo

Apresentar o modelo de integração utilizando Provider, suas características, vantagens e os cenários recomendados para utilização.

---

# Como Funciona

O aplicativo comercial comunica-se diretamente com o Provider disponibilizado pelo ConnectTEF.

Toda a comunicação ocorre internamente no sistema operacional Android.

```text
Aplicação Android
        │
        │ Content Provider
        ▼
 ConnectTEF
        │
        ├── SmartPOS
        ├── Serviços da Plataforma
        └── Meios de Pagamento
```

O ConnectTEF torna-se responsável por toda a comunicação com o SmartPOS e com os demais componentes da plataforma.

---

# Principais Características

- Integração nativa do Android.
- Comunicação entre aplicações.
- Baixo acoplamento.
- Sem necessidade de DLLs.
- Sem dependência de sockets.
- Independente do fabricante do SmartPOS.
- Fácil atualização da plataforma.

---

# Cenários Recomendados

A integração via Provider é indicada para:

- Aplicações Android.
- PDVs para SmartPOS.
- Aplicações comerciais.
- Sistemas White Label.
- Aplicações corporativas.
- Soluções embarcadas em SmartPOS.

---

# Vantagens

## Integração Nativa

Utiliza um mecanismo oficialmente suportado pelo Android, dispensando soluções proprietárias para troca de informações entre aplicações.

---

## Baixo Acoplamento

A aplicação permanece desacoplada da implementação interna do ConnectTEF.

Isso reduz significativamente o impacto de futuras evoluções da plataforma.

---

## Facilidade de Atualização

O ConnectTEF pode evoluir independentemente da aplicação integrada.

Na maioria dos casos, novas funcionalidades tornam-se disponíveis sem necessidade de alterações significativas na aplicação comercial.

---

## Segurança

O Android controla o acesso ao Provider através de permissões definidas pela aplicação.

Isso permite controlar quais aplicações podem consumir os serviços disponibilizados.

---

# Recursos Disponíveis

Através do Provider, a aplicação poderá acessar funcionalidades disponibilizadas pelo ConnectTEF, como:

- Inicialização de pagamentos.
- Consulta de transações.
- Cancelamentos.
- Consulta de dispositivos.
- Recursos SmartPOS.
- Serviços operacionais.
- Integração com equipamentos.

A disponibilidade dos recursos depende da versão instalada da plataforma.

---

# Arquitetura

A comunicação permanece totalmente encapsulada dentro do Android.

```text
Aplicação Comercial

        │

        ▼

Provider ConnectTEF

        │

        ▼

Core ConnectTEF

        │

        ▼

SmartPOS / Adquirentes
```

Essa arquitetura reduz dependências e facilita a manutenção da integração.

---

# Quando Utilizar

A integração via Provider é recomendada quando:

- A aplicação é desenvolvida para Android.
- O ambiente é um SmartPOS.
- Deseja-se utilizar mecanismos nativos do Android.
- A integração precisa permanecer desacoplada.
- O projeto utiliza comunicação entre aplicações.

---

# Comparativo com Outros Modelos

| Tecnologia | Ambiente |
|------------|----------|
| REST API | Web, Desktop e Cloud |
| REST API Local | Desktop e Redes Locais |
| Provider | Android / SmartPOS |
| Intent | Android / SmartPOS |
| Windows DLL | Windows Desktop |
| INTPOS | Sistemas Legados |

Cada modelo foi desenvolvido para atender diferentes arquiteturas e necessidades de integração.

---

# Próximos Tópicos

O próximo capítulo apresenta a integração utilizando **Intent**, outro mecanismo nativo do Android amplamente utilizado para comunicação entre aplicações.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [02 - Integração via API Local](02-INTEGRACAO-VIA-API-LOCAL.md)
- [04 - Integração via Intent](04-INTEGRACAO-VIA-INTENT.md)
- [13 - Boas Práticas](13-BOAS-PRATICAS.md)

---
**Navegação:** [Anterior](02-INTEGRACAO-VIA-API-LOCAL.md) | [README](../README.md) | [Próximo](04-INTEGRACAO-VIA-INTENT.md)
<!-- NAVIGATION_FOOTER:END -->