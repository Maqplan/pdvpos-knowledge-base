---
title: Webhooks
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](06-AUTENTICACAO.md) | [Próximo](08-EVENTOS.md)
---
> **Caminho:** [Início](../README.md) / Arquitetura / Webhooks
<!-- NAVIGATION:END -->

# Webhooks

Nem toda operação realizada pelo ConnectTEF pode ser tratada de forma síncrona.

Algumas ações exigem que a plataforma informe posteriormente o resultado de uma operação ou um evento ocorrido durante o processamento.

Para esses cenários, o ConnectTEF disponibiliza um mecanismo de comunicação baseado em Webhooks.

Os Webhooks permitem que aplicações integradas sejam notificadas automaticamente sempre que eventos relevantes ocorrerem na plataforma.

---

# Objetivo

Apresentar o conceito de Webhooks, explicar seu papel na arquitetura do ConnectTEF e demonstrar como esse mecanismo complementa as integrações baseadas em APIs.

---

# O problema

Imagine que uma aplicação envie uma solicitação de pagamento.

Nem sempre o resultado estará disponível imediatamente.

Além disso, diversos eventos podem ocorrer durante o ciclo de vida de uma operação.

Sem um mecanismo de notificação, o ERP precisaria consultar continuamente a API para verificar mudanças de estado.

Esse modelo aumenta:

- consumo de recursos;
- tráfego de rede;
- complexidade da aplicação;
- tempo de resposta.

---

# A solução

Os Webhooks eliminam a necessidade de consultas constantes.

Quando um evento ocorre, o próprio ConnectTEF envia uma notificação para a aplicação cadastrada.

```text
ERP

    │

Solicitação

    │

    ▼

ConnectTEF

    │

Processamento

    │

Evento

    │

    ▼

Webhook

    │

    ▼

ERP Atualizado
```

O fluxo passa a ser orientado por eventos.

---

# Como funciona

O processo normalmente ocorre da seguinte forma.

1. O ERP realiza uma operação.
2. O ConnectTEF inicia o processamento.
3. Um evento é gerado.
4. A plataforma envia um Webhook.
5. O ERP recebe a notificação.
6. A aplicação atualiza seu estado interno.

Esse modelo reduz significativamente a necessidade de consultas repetitivas.

---

# Comunicação Assíncrona

Os Webhooks fazem parte da comunicação assíncrona da plataforma.

Enquanto as APIs são utilizadas para iniciar operações, os Webhooks são utilizados para informar acontecimentos posteriores.

```text
API

ERP ─────────────► ConnectTEF

(Webhook)

ERP ◄──────────── ConnectTEF
```

Esses mecanismos trabalham em conjunto.

---

# Eventos

Dependendo da configuração da plataforma, Webhooks podem ser utilizados para informar eventos como:

- conclusão de operações;
- mudanças de status;
- confirmações de processamento;
- notificações operacionais;
- atualizações de recursos;
- eventos da plataforma.

Os eventos efetivamente disponíveis são documentados na referência da API.

---

# Arquitetura

```text
Aplicação

      │

      ▼

API ConnectTEF

      │

      ▼

Processamento

      │

      ▼

Evento

      │

      ▼

Webhook

      │

      ▼

Aplicação
```

A comunicação passa a ocorrer em duas direções:

- solicitações enviadas pela aplicação;
- notificações enviadas pelo ConnectTEF.

---

# Benefícios

A utilização de Webhooks proporciona:

- menor necessidade de consultas à API;
- atualização automática da aplicação;
- comunicação baseada em eventos;
- menor consumo de recursos;
- melhor escalabilidade;
- integração mais eficiente.

---

# Boas práticas

Ao utilizar Webhooks recomendamos:

- responder rapidamente às notificações;
- validar a autenticidade das mensagens;
- tratar reenvios de forma idempotente;
- registrar eventos para auditoria;
- implementar tratamento para falhas temporárias;
- evitar processamento pesado durante o recebimento do Webhook.

---

# APIs x Webhooks

| API | Webhook |
|------|----------|
| A aplicação inicia uma operação | O ConnectTEF informa um evento |
| Comunicação síncrona | Comunicação assíncrona |
| Requisição HTTP | Notificação HTTP |
| Solicitação de ações | Comunicação de acontecimentos |

Ambos fazem parte da arquitetura da plataforma.

---

# O papel do ConnectTEF

O ConnectTEF utiliza Webhooks para manter aplicações sincronizadas com os eventos da plataforma.

Essa abordagem reduz consultas desnecessárias e permite que sistemas distribuídos reajam automaticamente às mudanças de estado das operações.

---

# Resumo

Os Webhooks são o mecanismo de comunicação assíncrona do ConnectTEF.

Enquanto as APIs permitem que aplicações iniciem operações, os Webhooks notificam automaticamente eventos ocorridos durante o processamento, tornando a integração mais eficiente, escalável e preparada para arquiteturas modernas baseadas em eventos.

---

# Próximo capítulo

Agora conheceremos como a arquitetura do ConnectTEF foi projetada para crescer continuamente, incorporando novos recursos, dispositivos e formas de integração sem impactar os sistemas já conectados à plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Eventos](08-EVENTOS.md)
---
**Navegação:** [Anterior](06-AUTENTICACAO.md) | [Início](../README.md) | [Próximo](08-EVENTOS.md)
<!-- NAVIGATION_FOOTER:END -->
