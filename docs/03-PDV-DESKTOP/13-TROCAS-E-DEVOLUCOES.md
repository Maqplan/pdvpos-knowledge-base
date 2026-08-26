---
title: PDV Desktop - Trocas e Devoluções
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](12-RELATORIOS.md) | [Proximo](14-DIFERENCIAIS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 13 TROCAS E DEVOLUCOES
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 13 - Trocas e Devoluções

---

# Objetivo

O módulo **Trocas e Devoluções** permite realizar a devolução parcial ou total de produtos vendidos, efetuando automaticamente todos os controles operacionais, financeiros, fiscais e de estoque necessários.

A solução integra o PDV Desktop ao ERP para garantir que a devolução seja registrada corretamente, preservando a consistência entre a frente de caixa, o estoque, o financeiro e a escrituração fiscal.

---

## Recursos abordados neste capítulo

- Troca de mercadorias
- Devolução parcial
- Devolução total
- Crédito para o cliente
- Complemento de pagamento
- Emissão da Nota Fiscal de Entrada
- Atualização automática do estoque
- Integração online com ERP
- Controle fiscal
- Rastreabilidade

---

# Visão Geral

O processo de troca foi desenvolvido para simplificar o atendimento ao cliente sem comprometer a conformidade fiscal da operação.

Ao registrar uma devolução, o sistema é capaz de:

- localizar a venda original;
- identificar os produtos devolvidos;
- calcular automaticamente os créditos;
- emitir a Nota Fiscal de Entrada;
- devolver os produtos ao estoque;
- permitir uma nova venda utilizando o crédito gerado.

Todo o processo ocorre de forma integrada com o ERP.

---

# Fluxo Operacional

```text
Venda Original

      │

      ▼

Localização da Venda

      │

      ▼

Seleção dos Produtos

      │

      ▼

Cálculo do Crédito

      │

      ▼

Nova Venda (Opcional)

      │

      ▼

Emissão da NF de Entrada

      │

      ▼

Atualização do Estoque

      │

      ▼

Sincronização ERP
```

---

# Localização da Venda

Para iniciar uma devolução, o operador localiza a venda original.

A pesquisa pode ser realizada utilizando informações como:

- número da venda;
- documento fiscal;
- cliente;
- período;
- operador.

Após localizar a venda, o sistema apresenta todos os produtos comercializados.

---

# Seleção dos Produtos

O operador informa quais itens serão devolvidos.

A devolução pode ser:

- total;
- parcial.

Também é possível devolver apenas parte da quantidade vendida.

Exemplo:

Venda original:

| Produto | Quantidade |
|----------|-----------:|
| Camisa Polo | 5 |

Devolução:

| Produto | Quantidade |
|----------|-----------:|
| Camisa Polo | 2 |

---

# Crédito ao Cliente

Após confirmar a devolução, o sistema gera automaticamente o crédito correspondente.

Esse crédito poderá ser utilizado:

- imediatamente;
- em uma nova venda;
- parcialmente;
- integralmente.

---

# Complemento de Pagamento

Caso a nova compra possua valor superior ao crédito disponível, o sistema permite complementar a diferença utilizando qualquer forma de pagamento habilitada.

Exemplos:

- Dinheiro;
- PIX;
- Cartão;
- TEF;
- Convênio;
- Crediário.

---

# Emissão da Nota Fiscal de Entrada

Uma das principais características da solução é a integração fiscal da devolução.

Ao concluir o processo, o ERP emite automaticamente a Nota Fiscal de Entrada correspondente.

Essa operação é responsável por:

- registrar oficialmente a devolução;
- recuperar o estoque;
- ajustar a escrituração fiscal;
- permitir recuperação dos tributos quando aplicável.

O operador não precisa acessar o ERP para concluir o processo.

---

# Atualização do Estoque

Após a emissão da Nota Fiscal de Entrada, o estoque é atualizado automaticamente.

Os produtos retornam à disponibilidade conforme as regras de controle da empresa.

---

# Integração com ERP

O processo de devolução é executado em conjunto com o ERP.

Essa integração garante atualização automática de:

- estoque;
- financeiro;
- documentos fiscais;
- histórico do cliente;
- relatórios gerenciais.

Por envolver emissão fiscal de entrada, a operação depende da comunicação online entre o PDV Desktop e o ERP.

---

# Rastreabilidade

Todas as etapas permanecem registradas.

São armazenadas informações como:

- operador;
- terminal;
- cliente;
- venda original;
- produtos devolvidos;
- quantidades;
- valores;
- documento fiscal gerado;
- data;
- horário.

Essas informações ficam disponíveis para auditoria.

---

# Benefícios

- Processo simplificado de troca.
- Geração automática de crédito.
- Devolução parcial ou total.
- Emissão automática da Nota Fiscal de Entrada.
- Atualização imediata do estoque.
- Integração com ERP.
- Conformidade fiscal.
- Rastreabilidade completa.

---

# Casos de Uso

## Loja de Vestuário

Cliente devolve uma peça e escolhe outro modelo.

O sistema utiliza automaticamente o crédito gerado na nova venda.

---

## Loja de Calçados

Troca por outro número mantendo o controle fiscal da devolução.

---

## Materiais de Construção

Devolução parcial de produtos não utilizados na obra.

---

## Supermercado

Troca de produtos dentro do prazo permitido com atualização automática do estoque.

---

# Segurança Operacional

Dependendo das permissões do usuário, o sistema pode restringir operações de devolução.

É possível controlar:

- usuários autorizados;
- necessidade de senha;
- limite de prazo para devolução;
- emissão obrigatória da documentação fiscal.

Essas regras são definidas pela política operacional da empresa.

---

# Diferenciais

Ao contrário de soluções que tratam a troca apenas como um desconto comercial, o PDV Desktop realiza um processo completo de devolução.

A operação integra automaticamente:

- atendimento ao cliente;
- geração de crédito;
- emissão da Nota Fiscal de Entrada;
- atualização do estoque;
- atualização financeira;
- sincronização com o ERP.

Essa abordagem reduz retrabalho, elimina inconsistências entre módulos e garante conformidade fiscal durante todo o processo.

---

# Próximo Capítulo

**14 - Diferenciais Competitivos**

Conheça os principais diferenciais do PDV Desktop, sua arquitetura, produtividade operacional e os recursos que tornam a plataforma adequada para operações de varejo de diferentes segmentos.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](14-DIFERENCIAIS.md)
---
**Navegacao:** [Anterior](12-RELATORIOS.md) | [Inicio](../../README.md) | [Proximo](14-DIFERENCIAIS.md)
<!-- NAVIGATION_FOOTER:END -->

