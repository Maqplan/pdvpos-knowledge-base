---
title: Como o ConnectTEF Funciona
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](02-POR-QUE-CONNECTTEF.md) | [Próximo](04-ARQUITETURA-GERAL.md)
---
> **Caminho:** [Início](../README.md) / Introdução / Como Funciona
<!-- NAVIGATION:END -->

# Como o ConnectTEF Funciona

O ConnectTEF foi projetado para atuar como uma camada intermediária entre o sistema de gestão e o ecossistema de pagamentos.

Em vez de o ERP precisar conhecer cada fabricante de SmartPOS, cada adquirente ou cada protocolo de comunicação, toda essa responsabilidade é centralizada na plataforma.

---

# Objetivo

Compreender como ocorre a comunicação entre o sistema de gestão, o ConnectTEF, os SmartPOS e os meios de pagamento.

Ao final deste capítulo será possível entender a arquitetura geral da solução antes de conhecer seus componentes internos.

---

# Visão Geral

A arquitetura do ConnectTEF é baseada em um conceito simples.

O ERP comunica-se apenas com o ConnectTEF.

O ConnectTEF comunica-se com todo o restante.

```text
             ERP / PDV

                 │

                 ▼

           ConnectTEF

                 │

     ┌───────────┼────────────┐

     ▼           ▼            ▼

 SmartPOS   Adquirentes   Serviços

                 │

                 ▼

            Consumidor
```

Essa separação reduz a complexidade do software e protege o ERP das constantes mudanças do mercado.

---

# Fluxo de uma venda

Uma operação de pagamento normalmente segue as etapas abaixo.

```text
Operador inicia uma venda

        │

        ▼

ERP envia solicitação

        │

        ▼

ConnectTEF interpreta a requisição

        │

        ▼

Seleciona o SmartPOS

        │

        ▼

Solicita o pagamento

        │

        ▼

SmartPOS comunica-se com a adquirente

        │

        ▼

Pagamento autorizado

        │

        ▼

ConnectTEF retorna o resultado

        │

        ▼

ERP finaliza a venda
```

O ERP permanece responsável apenas pelo fluxo comercial.

Toda comunicação financeira é realizada pela plataforma.

---

# O papel do ERP

O sistema de gestão continua responsável por toda a operação comercial.

Entre suas responsabilidades estão:

- Cadastro de produtos
- Controle de estoque
- Emissão fiscal
- Gestão financeira
- Processo de venda
- Solicitação do pagamento

O ERP não precisa conhecer detalhes específicos do SmartPOS.

---

# O papel do ConnectTEF

O ConnectTEF atua como um orquestrador.

Suas principais responsabilidades incluem:

- Receber solicitações do ERP
- Interpretar comandos
- Selecionar o canal de comunicação
- Comunicar-se com SmartPOS
- Controlar o fluxo da transação
- Padronizar respostas
- Retornar o resultado ao ERP

Toda a complexidade permanece concentrada na plataforma.

---

# O papel do SmartPOS

O SmartPOS é responsável pela interação com o consumidor.

Entre suas funções estão:

- Exibir o valor
- Receber cartão
- Receber PIX
- Receber aproximação (NFC)
- Imprimir comprovantes
- Exibir campanhas
- Capturar informações do cliente

O ConnectTEF controla essa comunicação.

---

# Comunicação com adquirentes

Após receber a solicitação do ERP, o ConnectTEF encaminha a transação para o SmartPOS.

O SmartPOS realiza a comunicação com a adquirente responsável pela autorização da operação.

```text
ERP

↓

ConnectTEF

↓

SmartPOS

↓

Adquirente

↓

Autorização

↓

ConnectTEF

↓

ERP
```

O ERP nunca precisa implementar protocolos específicos para cada adquirente.

---

# Recursos adicionais

Além do pagamento, o ConnectTEF pode executar diversas funcionalidades durante o fluxo da venda.

Entre elas:

- Cancelamento
- Reimpressão
- Captura de CPF
- Captura de Telefone
- Captura de E-mail
- Marketing na SmartPOS
- Pesquisa NPS
- Leitor de Código de Barras
- Operação Offline
- Impressão

Todos esses recursos utilizam exatamente a mesma arquitetura de comunicação.

---

# Escalabilidade

Uma das principais vantagens dessa arquitetura é sua capacidade de evolução.

Quando novos SmartPOS ou fabricantes são homologados, o ERP continua utilizando a mesma integração.

A evolução acontece apenas dentro do ConnectTEF.

Isso reduz significativamente o impacto das mudanças tecnológicas.

---

# Benefícios da arquitetura

Esta arquitetura proporciona:

- Uma única integração.
- Menor custo de desenvolvimento.
- Menor custo de manutenção.
- Menor esforço de homologação.
- Atualizações centralizadas.
- Evolução contínua.
- Compatibilidade com diferentes fabricantes.
- Redução do suporte técnico.

---

# Resumo

O ConnectTEF funciona como uma camada intermediária entre o sistema de gestão e o ecossistema de pagamentos.

Enquanto o ERP permanece focado na operação comercial, o ConnectTEF concentra toda a comunicação com SmartPOS, adquirentes e demais componentes da plataforma.

Essa separação torna a integração mais simples, estável e preparada para acompanhar a evolução do mercado.

---

# Próximo capítulo

Agora que entendemos o funcionamento geral da plataforma, veremos sua arquitetura em detalhes, conhecendo cada componente e sua responsabilidade dentro do ecossistema ConnectTEF.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Arquitetura Geral](04-ARQUITETURA-GERAL.md)
---
**Navegação:** [Anterior](02-POR-QUE-CONNECTTEF.md) | [Início](../README.md) | [Próximo](04-ARQUITETURA-GERAL.md)
<!-- NAVIGATION_FOOTER:END -->
