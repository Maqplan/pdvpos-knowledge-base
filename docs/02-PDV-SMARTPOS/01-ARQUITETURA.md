---
title: PDV SmartPOS - Arquitetura
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](00-APRESENTACAO.md) | [Próximo](02-CONFIGURACAO.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 01 ARQUITETURA
<!-- NAVIGATION:END -->

# 01 - Arquitetura

O **PDV SmartPOS** foi desenvolvido utilizando uma arquitetura distribuída, orientada a serviços e baseada no conceito **Offline First**.

Diferentemente de soluções que dependem de comunicação contínua com servidores centrais, cada **PDV SmartPOS** possui seu próprio banco de dados e executa toda a operação comercial localmente.

A sincronização com o **PDVPOS ERP** ocorre de forma assíncrona, garantindo que a comunicação nunca seja um requisito para continuidade da operação.

Essa arquitetura oferece alta disponibilidade, mobilidade e resiliência, permitindo que cada terminal continue operando de forma independente mesmo diante de falhas de internet, do ERP ou de outros equipamentos da empresa.

---

## Objetivo

Apresentar os conceitos arquiteturais do **PDV SmartPOS**, demonstrando como sua arquitetura distribuída proporciona operação contínua, sincronização automática e independência operacional.

---

# Princípios Arquiteturais

O **PDV SmartPOS** foi construído sobre oito pilares fundamentais.

- Arquitetura Distribuída.
- Banco de Dados Local por Equipamento.
- Offline First.
- Sincronização Assíncrona.
- Integração Nativa com o ERP.
- Integração Nativa com ConnectTEF.
- Arquitetura Baseada em Estados.
- Alta Disponibilidade.

Esses pilares garantem que a operação continue funcionando mesmo diante de falhas temporárias de infraestrutura.

---

# Arquitetura Geral

```text
                    PDVPOS ERP

                         ▲
                         │
                 Sincronização
                   Assíncrona
                         │
────────────────────────────────────────────

       ┌──────────────┐    ┌──────────────┐
       │ PDV SmartPOS │    │ PDV SmartPOS │
       │     #01      │    │     #02      │
       │              │    │              │
       │ Banco Local  │    │ Banco Local  │
       └──────────────┘    └──────────────┘
              │                   │
              ▼                   ▼
      Venda / Caixa        Venda / Caixa
      Fiscal / TEF         Fiscal / TEF
```

O ERP atua como o repositório central das informações da empresa.

Entretanto, toda a operação comercial acontece localmente em cada equipamento.

---

# Banco de Dados Individual

Um dos principais diferenciais do **PDV SmartPOS** é sua arquitetura baseada em bancos de dados independentes.

Cada equipamento mantém sua própria base de dados.

Nela são armazenados:

- Produtos;
- Clientes;
- Grupos;
- Categorias;
- Configurações;
- Vendas;
- Caixa;
- Histórico;
- Documentos fiscais;
- Pedidos sincronizados.

Essa arquitetura elimina a dependência de um banco central durante a operação.

---

# Independência Operacional

Cada equipamento funciona como uma unidade operacional independente.

Isso significa que:

- um SmartPOS pode ser desligado sem afetar os demais;
- falhas em um equipamento não interrompem outros caixas;
- a internet não é necessária para continuar vendendo;
- o ERP não precisa estar disponível para realização das vendas.

Cada terminal continua operando normalmente utilizando seu próprio banco de dados.

---

# Offline First

Toda a arquitetura foi construída priorizando a operação local.

O fluxo correto do sistema é:

```text
Operação Local

↓

Banco Local

↓

Fila de Sincronização

↓

ERP
```

E não o contrário.

A sincronização existe para compartilhar informações, e não para permitir que a operação aconteça.

---

# Sincronização Assíncrona

Toda comunicação com o ERP ocorre em segundo plano.

O operador não precisa aguardar respostas do servidor para continuar trabalhando.

São enviados automaticamente:

- vendas;
- clientes;
- produtos cadastrados;
- movimentações de caixa;
- documentos fiscais;
- cancelamentos;
- ajustes.

São recebidos:

- novos produtos;
- alterações cadastrais;
- preços;
- grupos;
- categorias;
- configurações;
- pedidos compartilhados.

Todo o processo ocorre automaticamente.

---

# Compartilhamento de Pedidos

Os pedidos de venda pertencem ao ecossistema **PDVPOS ERP**.

Quando existe comunicação com o ERP, eles são compartilhados automaticamente entre:

- ERP;
- PDV Desktop;
- PDV SmartPOS.

Exemplo:

```text
ERP

      │

      ▼

Pedido criado

      │

      ▼

PDV Desktop

      │

      ▼

PDV SmartPOS

      │

      ▼

Pagamento

      │

      ▼

Documento Fiscal
```

---

# Operação Sem Internet

Durante períodos sem acesso à internet, praticamente toda a operação continua disponível.

Entre as funcionalidades que permanecem operacionais:

- Vendas;
- Caixa;
- Cadastro de Clientes;
- Cadastro de Produtos;
- Cadastro de Grupos;
- Mesas;
- Produção;
- Pagamentos em modalidades compatíveis;
- Impressão;
- Emissão fiscal em contingência quando suportada.

O operador continua trabalhando normalmente.

---

# Limitações Naturais da Operação Offline

Alguns recursos dependem da comunicação com o ERP para refletir alterações realizadas em outros equipamentos.

Por exemplo:

## Pedidos Compartilhados

Durante o período offline:

- novos pedidos criados no ERP não aparecerão imediatamente;
- pedidos criados em outro PDV também não estarão disponíveis;
- alterações realizadas por outros equipamentos somente serão recebidas após a sincronização.

Entretanto:

- pedidos já sincronizados permanecem disponíveis;
- pedidos criados localmente continuam funcionando normalmente.

Assim que a comunicação for restabelecida, todas as informações são sincronizadas automaticamente.

---

# Integração com ConnectTEF

O **PDV SmartPOS** possui integração nativa com o ConnectTEF.

Essa integração permite:

- Cartão de Crédito;
- Cartão de Débito;
- PIX Integrado;
- Voucher;
- Cancelamentos.

Todo o processo permanece integrado ao fluxo da venda.

---

# Arquitetura Fiscal

O motor fiscal é totalmente desacoplado da operação comercial.

Dependendo da configuração da empresa, o sistema pode emitir:

- NFC-e;
- NF-e;
- NFS-e.

Essa emissão ocorre diretamente no equipamento.

Quando suportado pela legislação, o sistema também permite operação em contingência.

---

# Arquitetura Baseada em Estados

Cada processo possui seu próprio ciclo de vida.

```text
Venda

├── Comercial
│      ✔ Concluída
│
├── Fiscal
│      ✔ Emitida
│      ⏳ Pendente
│
├── Financeiro
│      ✔ Recebido
│
├── Sincronização
│      ✔ ERP Atualizado
│      ⏳ Pendente
│
└── Produção
       ✔ Impressa
```

Essa separação aumenta a resiliência da aplicação e facilita a recuperação automática de falhas.

---

# Alta Disponibilidade

A arquitetura distribuída elimina pontos únicos de falha.

Exemplo:

```text
Internet

      ❌ Indisponível

↓

PDV SmartPOS

✔ Continua vendendo

↓

Banco Local

✔ Continua gravando

↓

Fila de Sincronização

✔ Aguarda comunicação

↓

ERP

Receberá tudo automaticamente depois.
```

O mesmo conceito aplica-se à indisponibilidade de outros terminais.

Cada equipamento continua trabalhando de forma independente.

---

# Benefícios da Arquitetura

A arquitetura do **PDV SmartPOS** proporciona importantes vantagens.

- Banco de dados individual por equipamento.
- Offline First.
- Operação independente da internet.
- Alta disponibilidade.
- Continuidade operacional.
- Sincronização assíncrona.
- Compartilhamento automático com o ERP.
- Compartilhamento de pedidos.
- Integração nativa com ConnectTEF.
- Emissão de NFC-e.
- Emissão de NF-e.
- Emissão de NFS-e.
- Recuperação automática de sincronizações pendentes.
- Maior desempenho operacional.
- Eliminação de pontos únicos de falha.

---

# Conclusão

O **PDV SmartPOS** foi concebido para operar de forma distribuída, onde cada equipamento possui autonomia operacional completa através de seu próprio banco de dados.

O **PDVPOS ERP** atua como centralizador das informações corporativas, enquanto cada **PDV SmartPOS** executa suas operações localmente e sincroniza automaticamente suas informações quando a comunicação está disponível.

Essa arquitetura oferece um alto nível de disponibilidade, resiliência e desempenho, permitindo que a empresa continue vendendo mesmo diante de falhas de internet, indisponibilidade do ERP ou problemas em outros equipamentos.

É essa combinação entre **Offline First**, **banco de dados individual por equipamento** e **sincronização assíncrona** que diferencia o **PDV SmartPOS** das soluções tradicionais baseadas em conexão permanente com servidores centrais.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](02-CONFIGURACAO.md)
---
**Navegacao:** [Anterior](00-APRESENTACAO.md) | [Inicio](../../README.md) | [Proximo](02-CONFIGURACAO.md)
<!-- NAVIGATION_FOOTER:END -->

