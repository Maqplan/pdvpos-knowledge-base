---
title: PDV SmartPOS - Sincronização
classification: PUBLIC
owner: PDVPOS LTDA
version: "1.0"
last_updated: 2026-08-26
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](15-PAGAMENTOS-E-TEF.md) | [Proximo](17-CONFIGURACOES.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 16 SINCRONIZACAO
<!-- NAVIGATION:END -->

# 16 - Sincronização

O **PDV SmartPOS** foi projetado seguindo o conceito **Offline First**, onde toda a operação acontece localmente no equipamento e a comunicação com o ERP ocorre de forma assíncrona.

Cada equipamento possui seu próprio banco de dados, permitindo que continue operando normalmente mesmo durante indisponibilidade da internet, do ERP ou dos demais terminais da empresa.

A sincronização é responsável apenas pelo intercâmbio das informações entre o **PDV SmartPOS** e o **PDVPOS ERP**, sem interferir na continuidade da operação.

---

## Objetivo

Apresentar a arquitetura de sincronização do **PDV SmartPOS**, demonstrando como ocorre a troca de informações com o ERP e quais recursos permanecem disponíveis durante períodos sem conexão.

---

# Arquitetura Offline First

Cada **PDV SmartPOS** possui uma base de dados própria.

```text
               PDVPOS ERP

                     ▲
                     │
             Sincronização
                     │
        ─────────────────────────
                     │
     ┌───────────────┴───────────────┐
     │                               │
┌─────────────┐               ┌─────────────┐
│ SmartPOS 01 │               │ SmartPOS 02 │
│ Banco Local │               │ Banco Local │
└─────────────┘               └─────────────┘
```

Isso significa que cada equipamento trabalha de forma completamente independente.

Uma falha em um equipamento não interrompe a operação dos demais.

---

# Banco de Dados Local

Todo **PDV SmartPOS** mantém um banco de dados próprio.

Nele são armazenados:

- Produtos;
- Clientes;
- Grupos;
- Categorias;
- Configurações;
- Vendas;
- Pedidos locais;
- Caixa;
- Documentos fiscais;
- Histórico operacional.

Toda a operação ocorre diretamente sobre essa base.

---

# Processo de Sincronização

A sincronização ocorre em segundo plano.

Seu objetivo é manter o ERP atualizado e distribuir alterações realizadas na retaguarda para todos os equipamentos.

São enviados ao ERP:

- Vendas;
- Movimentações de caixa;
- Cadastros realizados no SmartPOS;
- Alterações cadastrais;
- Documentos fiscais;
- Cancelamentos;
- Ajustes.

São recebidos do ERP:

- Produtos;
- Clientes;
- Alterações cadastrais;
- Preços;
- Configurações;
- Grupos;
- Categorias;
- Pedidos.

Todo o processo é automático.

---

# Operação Sem Internet

Quando ocorre perda da comunicação com a internet, o operador continua trabalhando normalmente.

Permanecem disponíveis:

- Vendas;
- Caixa;
- Cadastro de Clientes;
- Cadastro de Produtos;
- Cadastro de Grupos;
- Consulta de Estoque Local;
- Mesas;
- Produção;
- Impressões;
- Emissão fiscal em contingência, quando suportada.

O operador não precisa alterar seu fluxo de trabalho.

---

# Pedidos Compartilhados

Uma característica importante da arquitetura é que os **Pedidos de Venda** pertencem ao ERP.

Quando o equipamento está conectado, os pedidos são compartilhados entre:

- ERP;
- PDV Desktop;
- PDV SmartPOS.

Durante períodos sem comunicação, o equipamento continuará trabalhando normalmente com os pedidos que já estiverem sincronizados localmente.

Entretanto, novos pedidos criados em outros dispositivos somente serão disponibilizados após o restabelecimento da comunicação e a execução da sincronização.

Da mesma forma, pedidos criados no **PDV SmartPOS** permanecerão disponíveis localmente até serem sincronizados com o ERP.

---

# Sincronização Inteligente

A sincronização trabalha apenas com as alterações necessárias.

Entre elas:

- Inclusões;
- Alterações;
- Cancelamentos;
- Atualizações de estoque;
- Atualizações cadastrais.

Essa estratégia reduz o volume de dados trafegados e acelera o processo de atualização.

---

# Continuidade Operacional

Como cada equipamento possui seu próprio banco de dados, a indisponibilidade de um terminal não afeta os demais.

Exemplo:

```text
SmartPOS 01

❌ Equipamento desligado

↓

SmartPOS 02

✔ Continua vendendo normalmente

↓

SmartPOS 03

✔ Continua vendendo normalmente
```

Da mesma forma, a indisponibilidade da internet não interrompe a operação dos caixas.

---

# Sincronização Automática

Quando a comunicação é restabelecida, o sistema executa automaticamente:

- envio das vendas;
- envio das movimentações de caixa;
- envio dos documentos fiscais pendentes;
- atualização dos cadastros;
- recebimento das alterações do ERP;
- atualização dos pedidos compartilhados.

Nenhuma intervenção do operador é necessária.

---

# Benefícios

A arquitetura de sincronização do **PDV SmartPOS** proporciona importantes vantagens.

- Banco de dados individual por equipamento.
- Arquitetura Offline First.
- Operação independente da internet.
- Continuidade operacional.
- Sincronização automática.
- Compartilhamento de informações com o ERP.
- Atualização automática dos cadastros.
- Compartilhamento de pedidos quando conectado.
- Redução do tráfego de dados.
- Maior disponibilidade da operação.

---

## Conclusão

A sincronização do **PDV SmartPOS** foi concebida para garantir que a comunicação com o ERP nunca seja um requisito para continuidade da operação.

Ao utilizar uma arquitetura **Offline First**, baseada em bancos de dados locais e sincronização assíncrona, o sistema assegura que cada equipamento permaneça totalmente funcional de forma independente.

Quando a conectividade é restabelecida, todas as informações são sincronizadas automaticamente, mantendo a consistência entre o **PDV SmartPOS**, o **PDV Desktop** e o **PDVPOS ERP**, sem interromper a operação da empresa.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](17-CONFIGURACOES.md)
---
**Navegacao:** [Anterior](15-PAGAMENTOS-E-TEF.md) | [Inicio](../../README.md) | [Proximo](17-CONFIGURACOES.md)
<!-- NAVIGATION_FOOTER:END -->

