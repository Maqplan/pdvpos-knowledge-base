---
title: Fluxo de Processamento de uma Transação
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](02-COMPONENTES.md) | [Próximo](04-FLUXO-DE-COMUNICACAO.md)
---

> **Caminho:** [Início](../README.md) / Arquitetura / Fluxo de Pagamento
<!-- NAVIGATION:END -->

# Fluxo de Processamento de uma Transação

Toda operação realizada através do ConnectTEF segue um fluxo padronizado.

Independentemente da forma de integração utilizada — API REST, API Local, Provider Android, Android Intent ou Gerenciador Padrão — o processamento interno ocorre sempre da mesma maneira.

Essa padronização reduz a complexidade da integração e garante um comportamento consistente em toda a plataforma.

---

# Objetivo

Apresentar o ciclo completo de processamento de uma operação dentro do ConnectTEF, desde a solicitação enviada pelo ERP até o retorno da resposta ao sistema de gestão.

---

# Visão Geral

```text
ERP / PDV

     │

     ▼

Interface de Integração

     │

     ▼

ConnectTEF Core

     │

     ▼

Validação

     │

     ▼

Comunicação SmartPOS

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

ConnectTEF

     │

     ▼

ERP
```

Independentemente do fabricante do SmartPOS ou da adquirente utilizada, o fluxo permanece o mesmo.

---

# Etapa 1 — Solicitação

Tudo começa quando o sistema de gestão solicita uma operação.

Essa solicitação pode representar:

- pagamento;
- cancelamento;
- reimpressão;
- captura de CPF;
- impressão;
- pesquisa NPS;
- leitura de código de barras;
- qualquer outro recurso disponibilizado pela plataforma.

O ERP envia apenas a solicitação.

---

# Etapa 2 — Recepção da Requisição

O ConnectTEF recebe a operação através da interface escolhida.

Essa interface pode ser:

- API REST;
- API Local;
- Provider Android;
- Android Intent;
- Gerenciador Padrão.

Independentemente da origem, todas as requisições convergem para o Core da plataforma.

---

# Etapa 3 — Processamento

Após receber a solicitação, o ConnectTEF:

- valida os parâmetros;
- identifica o tipo da operação;
- verifica regras de execução;
- prepara o fluxo interno.

Toda a inteligência da plataforma encontra-se nessa etapa.

---

# Etapa 4 — Comunicação com o SmartPOS

O ConnectTEF envia a solicitação ao SmartPOS.

Durante esse processo a plataforma:

- seleciona o dispositivo;
- estabelece comunicação;
- acompanha a execução;
- recebe eventos do terminal.

O ERP não participa dessa comunicação.

---

# Etapa 5 — Processamento Financeiro

Quando a operação envolve pagamento, o SmartPOS comunica-se com a infraestrutura financeira.

```text
SmartPOS

      │

      ▼

Adquirente

      │

      ▼

Instituição Financeira

      │

      ▼

Autorização
```

O ConnectTEF acompanha todo esse processo.

---

# Etapa 6 — Retorno da Operação

Após concluir a operação, o SmartPOS devolve o resultado ao ConnectTEF.

O Core interpreta essa resposta e gera um retorno padronizado para o ERP.

Independentemente do fabricante utilizado, o formato da resposta permanece consistente.

---

# Etapa 7 — Finalização

O ERP recebe o resultado da operação.

A partir desse momento ele pode:

- concluir a venda;
- cancelar a operação;
- emitir documentos fiscais;
- registrar informações;
- atualizar controles internos.

Toda a lógica comercial permanece sob responsabilidade do sistema de gestão.

---

# Fluxo Completo

```text
Operador

    │

    ▼

ERP

    │

    ▼

API / Provider / Intent / INTPOS

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

SmartPOS

    │

    ▼

ConnectTEF

    │

    ▼

ERP

    │

    ▼

Venda Finalizada
```

---

# Tratamento de Falhas

Durante o processamento podem ocorrer situações como:

- indisponibilidade da rede;
- falha de comunicação;
- cancelamento pelo operador;
- recusa da transação;
- timeout;
- indisponibilidade temporária do dispositivo.

O ConnectTEF trata essas situações de forma padronizada, retornando informações consistentes para o sistema integrado.

---

# Independência da Integração

Uma característica importante da arquitetura é que o fluxo interno não depende da forma de integração utilizada.

Todas as interfaces disponíveis utilizam exatamente o mesmo processamento.

Isso garante:

- previsibilidade;
- consistência;
- menor esforço de manutenção;
- facilidade de evolução.

---

# Benefícios

Esse modelo arquitetural oferece:

- fluxo único de processamento;
- desacoplamento entre ERP e SmartPOS;
- respostas padronizadas;
- menor complexidade;
- facilidade de manutenção;
- evolução transparente.

---

# Resumo

O ConnectTEF utiliza um fluxo único para processar todas as operações da plataforma.

Independentemente da tecnologia de integração escolhida ou do fabricante do SmartPOS, todas as solicitações percorrem o mesmo ciclo de validação, comunicação, processamento e retorno, garantindo consistência, escalabilidade e facilidade de manutenção.

---

# Próximo capítulo

Agora conheceremos como a plataforma está organizada internamente em camadas arquiteturais, entendendo a responsabilidade de cada nível da solução.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Fluxo de Comunicação](04-FLUXO-DE-COMUNICACAO.md)
---
**Navegação:** [Anterior](02-COMPONENTES.md) | [Início](../README.md) | [Próximo](04-FLUXO-DE-COMUNICACAO.md)
<!-- NAVIGATION_FOOTER:END -->
