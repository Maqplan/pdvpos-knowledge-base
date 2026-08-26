---
title: PDV Desktop - TEF e Pagamentos
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](09-DOCUMENTOS-FISCAIS.md) | [Proximo](12-RELATORIOS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 10 TEF E PAGAMENTOS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 10 - TEF e Pagamentos

---

# Objetivo

O módulo **TEF e Pagamentos** concentra todas as operações financeiras realizadas durante a conclusão de uma venda.

Além de permitir o recebimento utilizando diferentes meios de pagamento, o PDV Desktop integra-se ao ConnectTEF para automatizar transações eletrônicas, reduzir erros operacionais e manter total consistência entre o recebimento, a emissão fiscal e o ERP.

---

## Recursos abordados neste capítulo

- Pagamento misto
- Dinheiro
- PIX
- Cartão de Crédito
- Cartão de Débito
- TEF
- Convênio
- Crediário
- Vale-presente
- Desconto
- Acréscimo
- Troco
- Cancelamento de transações
- Integração com ERP

---

# Visão Geral

Após concluir o lançamento dos produtos, o operador acessa a tela de recebimento através do atalho:

**F3**

Nesta tela são apresentadas todas as formas de pagamento habilitadas para a empresa.

O sistema permite combinar múltiplas formas de pagamento em uma única venda.

---

# Fluxo Geral

```text
Venda

    │

    ▼

Tela de Recebimento (F3)

    │

    ▼

Seleção das Formas de Pagamento

    │

    ▼

TEF / PIX / Dinheiro

    │

    ▼

Confirmação

    │

    ▼

Documento Fiscal

    │

    ▼

ERP
```

---

# Formas de Pagamento

O PDV Desktop suporta diversas modalidades de recebimento.

Entre elas:

- Dinheiro
- PIX
- Cartão de Crédito
- Cartão de Débito
- Convênio
- Crediário
- Vale-presente
- Outras formas cadastradas no ERP

Cada empresa pode habilitar apenas as formas desejadas.

---

# Pagamento Múltiplo

Uma venda pode ser quitada utilizando mais de uma forma de pagamento.

Exemplo:

| Forma | Valor |
|--------|-------:|
| Dinheiro | R$ 50,00 |
| PIX | R$ 80,00 |
| Cartão | R$ 120,00 |

O sistema controla automaticamente os valores restantes até a quitação completa.

---

# Dinheiro

Ao receber em dinheiro o sistema calcula automaticamente:

- valor recebido;
- troco;
- saldo da venda.

O valor é registrado na sessão de caixa correspondente.

---

# PIX

O PDV Desktop suporta recebimentos via PIX através da integração com o ConnectTEF.

Dependendo da configuração da empresa, o sistema pode:

- gerar cobrança PIX;
- acompanhar a confirmação do pagamento;
- concluir automaticamente a venda após a confirmação.

Todas as informações permanecem registradas no ERP.

---

# Cartões

O sistema suporta recebimentos utilizando:

- Crédito;
- Débito.

As transações podem ser realizadas através do ConnectTEF, proporcionando uma operação integrada ao fluxo de vendas.

---

# Integração com ConnectTEF

Quando integrado ao ConnectTEF, o PDV Desktop automatiza toda a comunicação com os adquirentes.

Entre os recursos disponíveis:

- início automático da transação;
- recebimento da autorização;
- confirmação da venda;
- impressão dos comprovantes;
- cancelamento de transações quando permitido.

Essa integração reduz erros de digitação e elimina divergências entre o pagamento e a venda.

---

# Convênio

Empresas que trabalham com convênios podem registrar recebimentos utilizando essa modalidade.

O controle financeiro permanece integrado ao ERP.

---

# Crediário

Também é possível registrar vendas utilizando crediário.

As informações financeiras são enviadas automaticamente para o ERP, permitindo o controle das contas a receber.

---

# Vale-Presente

Quando habilitado, o sistema aceita vale-presente como forma de pagamento.

O valor utilizado é abatido automaticamente do total da venda.

---

# Descontos

Além dos descontos por item, o operador pode aplicar desconto sobre o total da venda.

Dependendo da política da empresa, essa operação pode respeitar limites definidos para cada usuário.

---

# Acréscimos

Também é possível aplicar acréscimos no valor total da venda.

Essa funcionalidade pode ser utilizada para:

- serviços adicionais;
- taxas;
- cobranças complementares.

---

# Troco

Nos recebimentos em dinheiro, o sistema calcula automaticamente o troco devido ao cliente.

O valor passa a compor a movimentação financeira da sessão de caixa.

---

# Cancelamento de Pagamentos

Quando suportado pela adquirente e pelo ConnectTEF, o operador pode cancelar transações eletrônicas diretamente pelo sistema.

Esse procedimento mantém sincronizados:

- pagamento;
- documento fiscal;
- financeiro;
- ERP.

---

# Integração com Documentos Fiscais

Após a confirmação do pagamento, o PDV Desktop realiza automaticamente a emissão do documento correspondente conforme a configuração da empresa.

O operador não precisa executar etapas adicionais.

---

# Integração com ERP

Todas as informações financeiras são sincronizadas automaticamente.

Entre elas:

- forma de pagamento;
- valor recebido;
- troco;
- descontos;
- acréscimos;
- transações TEF;
- PIX;
- contas a receber;
- movimentação do caixa.

---

# Segurança

Cada operação registra automaticamente:

- operador;
- terminal;
- caixa;
- data;
- horário;
- forma de pagamento;
- valor;
- situação da transação.

Essas informações permanecem disponíveis para auditoria e consultas posteriores.

---

# Benefícios

- Pagamento misto.
- Integração com ConnectTEF.
- Recebimento via PIX.
- Cartões integrados.
- Cálculo automático do troco.
- Descontos e acréscimos.
- Sincronização automática com o ERP.
- Redução de erros operacionais.
- Maior agilidade no atendimento.

---

# Casos de Uso

## Loja de Roupas

Cliente realiza parte do pagamento em dinheiro e o restante no cartão.

---

## Restaurante

Pagamento via PIX confirmado automaticamente antes da emissão da NFC-e.

---

## Conveniência

Recebimento em cartão integrado ao TEF sem necessidade de digitação manual.

---

## Loja com Crediário

Venda registrada no PDV e automaticamente enviada ao financeiro do ERP.

---

# Diferenciais

O módulo de pagamentos foi desenvolvido para centralizar todas as operações financeiras da venda em uma única interface.

A integração nativa com o ConnectTEF reduz erros operacionais, automatiza transações eletrônicas e garante consistência entre pagamento, emissão fiscal e gestão financeira.

A possibilidade de combinar múltiplas formas de pagamento, utilizar PIX, cartões, crediário e convênios torna o PDV Desktop adaptável aos mais diversos segmentos do varejo.

---

# Próximo Capítulo

**11 - Operações Administrativas**

Conheça os recursos administrativos disponíveis no PDV Desktop, incluindo consultas, cadastros auxiliares, pesquisa de produtos, clientes e demais funcionalidades de apoio à operação.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](12-RELATORIOS.md)
---
**Navegacao:** [Anterior](09-DOCUMENTOS-FISCAIS.md) | [Inicio](../../README.md) | [Proximo](12-RELATORIOS.md)
<!-- NAVIGATION_FOOTER:END -->

