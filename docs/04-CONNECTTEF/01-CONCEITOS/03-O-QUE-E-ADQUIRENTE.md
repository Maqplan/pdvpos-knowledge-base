---
title: O que é uma Adquirente?
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](02-O-QUE-E-SMARTPOS.md) | [Próximo](04-O-QUE-E-FACILITADORA.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / O que é Adquirente
<!-- NAVIGATION:END -->

# O que é uma Adquirente?

A adquirente é a empresa responsável por processar e autorizar transações eletrônicas realizadas através de cartões de crédito, débito, PIX e outros meios de pagamento.

Ela atua como intermediária entre o estabelecimento comercial e as instituições financeiras responsáveis pela autorização da operação.

Sempre que um pagamento é realizado em um SmartPOS, existe uma adquirente responsável por validar e processar essa transação.

---

# Objetivo

Compreender o papel da adquirente dentro do ecossistema de pagamentos e entender como ela se integra à arquitetura do ConnectTEF.

---

# Qual é o papel da adquirente?

Durante uma venda, a adquirente recebe a solicitação enviada pelo terminal de pagamento.

Ela é responsável por:

- receber a solicitação da transação;
- validar as informações do pagamento;
- encaminhar a operação para autorização;
- retornar o resultado da transação;
- registrar a operação financeira.

Em outras palavras, é a adquirente que informa se um pagamento foi autorizado ou recusado.

---

# Fluxo simplificado

```text
Cliente

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

Autorização

    │

    ▼

SmartPOS

    │

    ▼

ConnectTEF

    │

    ▼

ERP
```

---

# A adquirente não conversa diretamente com o ERP

Na arquitetura do ConnectTEF, o ERP não precisa implementar protocolos específicos para cada adquirente.

Toda essa comunicação é realizada pela plataforma.

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

Adquirente
```

Essa separação reduz significativamente a complexidade da integração.

---

# Exemplos de adquirentes

Existem diversas adquirentes atuando no mercado brasileiro.

Alguns exemplos incluem:

- Cielo
- Rede
- Getnet
- Stone
- PagBank
- SafraPay
- Bin
- Sicredi
- Banrisul

Cada uma possui sua própria infraestrutura e particularidades operacionais.

---

# O desafio das integrações

Sem uma plataforma de abstração, um ERP pode precisar lidar com diferenças entre:

- protocolos de comunicação;
- funcionalidades disponíveis;
- modelos de SmartPOS;
- homologações;
- atualizações de software.

Isso aumenta o custo de desenvolvimento e manutenção.

---

# Como o ConnectTEF simplifica esse cenário

O ConnectTEF isola o ERP dessas diferenças.

Independentemente da adquirente utilizada pelo estabelecimento, o sistema continua utilizando exatamente a mesma interface de comunicação.

Quando novas adquirentes ou novos equipamentos são homologados, a evolução acontece dentro da plataforma.

O ERP permanece inalterado.

---

# Benefícios

Ao utilizar o ConnectTEF:

- o ERP não precisa conhecer protocolos específicos;
- novas homologações não exigem alterações no sistema;
- a manutenção da integração é simplificada;
- o suporte técnico é reduzido;
- a evolução tecnológica acontece de forma transparente.

---

# Adquirente × ConnectTEF

É importante compreender que a adquirente e o ConnectTEF possuem responsabilidades diferentes.

| Adquirente | ConnectTEF |
|------------|------------|
| Autoriza pagamentos | Integra o ERP ao ecossistema de pagamentos |
| Processa transações financeiras | Padroniza a comunicação |
| Opera a infraestrutura financeira | Gerencia a integração técnica |
| Possui protocolos próprios | Abstrai as diferenças entre fabricantes e adquirentes |
| Analisa e responde à autorização | Orquestra a comunicação entre sistema e dispositivos |

O ConnectTEF não substitui a adquirente.

Ele simplifica a forma como o sistema se comunica com ela.

---

# Resumo

A adquirente é responsável pelo processamento e autorização das transações financeiras.

O ConnectTEF atua como uma camada de integração entre o sistema de gestão e o ecossistema de pagamentos, abstraindo as diferenças entre adquirentes e permitindo que o ERP permaneça desacoplado das particularidades de cada operação financeira.

---

# Próximo capítulo

Agora conheceremos o conceito de **Facilitadora**, responsável por oferecer soluções que simplificam o acesso dos estabelecimentos comerciais aos serviços de pagamento.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é Facilitadora](04-O-QUE-E-FACILITADORA.md)
---
**Navegação:** [Anterior](02-O-QUE-E-SMARTPOS.md) | [Início](../README.md) | [Próximo](04-O-QUE-E-FACILITADORA.md)
<!-- NAVIGATION_FOOTER:END -->
