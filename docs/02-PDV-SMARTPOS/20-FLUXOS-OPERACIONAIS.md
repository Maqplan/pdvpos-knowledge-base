---
title: PDV SmartPOS - Fluxos Operacionais
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](19-DIFERENCIAIS.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 20 FLUXOS OPERACIONAIS
<!-- NAVIGATION:END -->

# 20 - Fluxos Operacionais

O **PDV SmartPOS** foi desenvolvido para atender diferentes cenários operacionais utilizando um único aplicativo.

Independentemente do segmento da empresa, o sistema mantém uma experiência consistente, onde vendas, pagamentos, emissão fiscal, sincronização e integração com o ERP fazem parte de um fluxo único.

Este documento apresenta os principais fluxos operacionais suportados pela plataforma.

---

## Objetivo

Demonstrar como os diferentes módulos do **PDV SmartPOS** se integram durante a operação diária, apresentando o fluxo completo das principais atividades realizadas pelos operadores.

---

# Fluxo de Venda Direta

É o fluxo utilizado na maioria das operações de varejo.

```text
Nova Venda

        │

        ▼

Selecionar Cliente (Opcional)

        │

        ▼

Adicionar Produtos

        │

        ▼

Editar Carrinho

        │

        ▼

Escolher Forma de Pagamento

        │

        ▼

Processar Recebimento

        │

        ▼

Emitir Documento Fiscal

        │

        ▼

Imprimir Comprovantes

        │

        ▼

Sincronizar com ERP
```

---

# Fluxo de Pedido de Venda

Muito utilizado em operações de pré-venda e atendimento **Papa Fila**.

```text
Criar Pedido

        │

        ▼

Salvar Pedido

        │

        ▼

Sincronizar com ERP

        │

        ▼

Abrir Pedido em outro equipamento

        │

        ▼

Editar Pedido

        │

        ▼

Receber Pagamento

        │

        ▼

Emitir Documento Fiscal
```

Esse fluxo permite iniciar uma venda em um equipamento e finalizá-la em outro.

---

# Fluxo de Atendimento em Mesas

Utilizado por restaurantes, bares e estabelecimentos com atendimento em salão.

```text
Selecionar Mesa

        │

        ▼

Abrir Atendimento

        │

        ▼

Adicionar Produtos

        │

        ▼

Adicionar Observações

        │

        ▼

Enviar Produção

        │

        ▼

Continuar Atendimento

        │

        ▼

Receber Pagamento

        │

        ▼

Emitir Documento Fiscal

        │

        ▼

Liberar Mesa
```

---

# Fluxo de Produção

Quando habilitado, o **PDV SmartPOS** envia automaticamente os itens vendidos para produção.

```text
Venda

        │

        ▼

Observações dos Itens

        │

        ▼

Separação por Setor

        │

        ▼

Impressão

        │

        ▼

Cozinha

Bar

Copa

Produção
```

As observações acompanham cada item individualmente.

---

# Fluxo de Pagamentos

O sistema permite utilizar uma ou várias formas de pagamento na mesma venda.

```text
Venda

        │

        ▼

Dinheiro

PIX

Cartão

Voucher

Crediário

        │

        ▼

Confirmação

        │

        ▼

Documento Fiscal
```

Todo o recebimento permanece integrado ao caixa.

---

# Fluxo TEF

Quando utilizado o **ConnectTEF**, o processamento financeiro ocorre automaticamente.

```text
Venda

        │

        ▼

Selecionar Cartão

        │

        ▼

ConnectTEF

        │

        ▼

Autorização

        │

        ▼

Confirmação

        │

        ▼

Documento Fiscal
```

---

# Fluxo de Emissão Fiscal

A emissão ocorre automaticamente após a confirmação da venda.

```text
Venda

        │

        ▼

Pagamento

        │

        ▼

NFC-e

NF-e

NFS-e

        │

        ▼

Autorização

        │

        ▼

Impressão

        │

        ▼

Sincronização
```

---

# Fluxo de Cadastro de Clientes

O cadastro pode ser realizado diretamente durante o atendimento.

```text
Novo Cliente

        │

        ▼

Cadastro

        │

        ▼

Salvar

        │

        ▼

Utilizar na Venda

        │

        ▼

Sincronizar com ERP
```

---

# Fluxo de Cadastro de Produtos

Novos produtos também podem ser cadastrados diretamente pelo equipamento.

```text
Novo Produto

        │

        ▼

Classificação

        │

        ▼

Preço

        │

        ▼

Dados Fiscais

        │

        ▼

Salvar

        │

        ▼

Sincronização
```

---

# Fluxo do Caixa

O controle financeiro acompanha toda a operação diária.

```text
Abrir Caixa

        │

        ▼

Realizar Vendas

        │

        ▼

Sangrias

Suprimentos

        │

        ▼

Fechar Caixa

        │

        ▼

Sincronizar ERP
```

---

# Fluxo de Operação Offline

A arquitetura **Offline First** garante continuidade operacional.

```text
Internet

      ❌

        │

        ▼

Banco Local

        │

        ▼

Venda

Caixa

Clientes

Produtos

Produção

Documentos

        │

        ▼

Fila de Sincronização

        │

        ▼

Internet Retorna

        │

        ▼

ERP Atualizado
```

A ausência de internet não interrompe o atendimento.

---

# Fluxo de Compartilhamento de Pedidos

Quando conectado ao ERP, os pedidos tornam-se compartilhados entre toda a plataforma.

```text
ERP

        │

        ▼

PDV Desktop

        │

        ▼

PDV SmartPOS

        │

        ▼

Outro PDV SmartPOS

        │

        ▼

Pagamento

        │

        ▼

Documento Fiscal
```

O pedido pertence à empresa e não ao equipamento onde foi iniciado.

---

# Fluxo Geral da Plataforma

O fluxo abaixo representa o funcionamento completo do ecossistema **PDVPOS**.

```text
Cadastros

        │

        ▼

Sincronização

        │

        ▼

PDV SmartPOS

        │

        ▼

Venda

        │

        ▼

Pagamento

        │

        ▼

Documento Fiscal

        │

        ▼

Produção

        │

        ▼

Caixa

        │

        ▼

ERP
```

Todos os módulos trabalham de forma integrada.

---

# Benefícios

A padronização dos fluxos proporciona importantes vantagens.

- Operação intuitiva.
- Menor curva de aprendizado.
- Redução de erros operacionais.
- Integração entre módulos.
- Continuidade da operação.
- Compartilhamento de pedidos.
- Sincronização automática.
- Alta disponibilidade.
- Maior produtividade.
- Integração completa com o ecossistema PDVPOS.

---

# Conclusão

Os fluxos operacionais do **PDV SmartPOS** foram concebidos para refletir o funcionamento real do varejo, mantendo simplicidade para o operador e robustez para a empresa.

A integração entre **PDV SmartPOS**, **PDV Desktop**, **PDVPOS ERP** e **ConnectTEF** permite que todas as etapas da operação — do cadastro à emissão fiscal, do recebimento à sincronização — ocorram de forma transparente, consistente e altamente disponível.

Essa arquitetura transforma o **PDV SmartPOS** em uma extensão natural do ecossistema **PDVPOS**, permitindo que empresas operem com mobilidade, segurança e continuidade, independentemente da conectividade com a internet.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Anterior](19-DIFERENCIAIS.md)
---
**Navegacao:** [Anterior](19-DIFERENCIAIS.md) | [Inicio](../../README.md) | Proximo
<!-- NAVIGATION_FOOTER:END -->

