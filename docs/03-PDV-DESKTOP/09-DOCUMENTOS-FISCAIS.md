---
title: PDV Desktop - Documentos Fiscais
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](08-SINCRONIZACAO.md) | [Proximo](10-TEF-E-PAGAMENTOS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 09 DOCUMENTOS FISCAIS
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 09 - Documentos Fiscais

---

# Objetivo

O módulo **Documentos Fiscais** é responsável pela emissão dos documentos fiscais eletrônicos gerados pelo PDV Desktop, garantindo conformidade com a legislação vigente e integração automática com o ERP.

A emissão ocorre de forma transparente para o operador, permitindo que o foco permaneça no atendimento ao cliente enquanto o sistema executa todos os procedimentos fiscais necessários.

---

## Recursos abordados neste capítulo

- Emissão de NFC-e
- Emissão de NF-e
- Emissão de NFS-e
- Documento Não Fiscal
- Contingência Offline
- Cancelamento
- Reimpressão de documentos
- Integração com SEFAZ
- Integração com ERP
- Sincronização automática

---

# Visão Geral

Ao concluir uma venda, o PDV Desktop pode emitir automaticamente o documento correspondente conforme a configuração da empresa.

Os tipos de documentos suportados incluem:

- Documento Não Fiscal
- NFC-e
- NF-e
- NFS-e

A emissão pode ocorrer imediatamente ou posteriormente, conforme o modo operacional configurado.

---

# Fluxo Geral

```text
Venda

    │

    ▼

Recebimento

    │

    ▼

Geração do Documento Fiscal

    │

    ▼

Assinatura Digital

    │

    ▼

Transmissão

    │

    ▼

Autorização

    │

    ▼

Impressão

    │

    ▼

Sincronização ERP
```

---

# Documento Não Fiscal

Empresas que não utilizam emissão fiscal direta no PDV podem configurar o sistema para emitir apenas um comprovante não fiscal.

Esse comprovante contém informações da venda e serve como documento de controle interno ou comprovante entregue ao consumidor.

---

# NFC-e

O PDV Desktop possui suporte completo para emissão da Nota Fiscal de Consumidor Eletrônica (NFC-e).

Após a conclusão da venda, o sistema realiza automaticamente:

- geração do XML;
- assinatura digital;
- transmissão para a SEFAZ;
- obtenção da autorização;
- impressão do DANFE NFC-e.

Todo o processo ocorre de forma automática.

---

# NF-e

Quando configurado, o sistema também permite emissão de Nota Fiscal Eletrônica (NF-e).

Esse recurso é utilizado principalmente para:

- vendas faturadas;
- operações entre empresas;
- entregas futuras;
- operações que exigem NF-e.

A emissão segue as configurações fiscais definidas no ERP.

---

# NFS-e

Para empresas prestadoras de serviços, o PDV Desktop suporta emissão de Nota Fiscal de Serviços Eletrônica (NFS-e).

A integração utiliza os parâmetros configurados no ERP e respeita as regras do município responsável pela autorização.

---

# Contingência Offline

Uma das principais características do PDV Desktop é o suporte à emissão de NFC-e em contingência offline.

Quando a comunicação com a SEFAZ estiver indisponível, o sistema permite que a venda continue normalmente.

Fluxo:

```text
Venda

    │

    ▼

NFC-e Offline

    │

    ▼

Entrega ao Cliente

    │

Internet Restabelecida

    ▼

Transmissão para SEFAZ

    │

    ▼

Autorização

    │

    ▼

Sincronização ERP
```

Esse processo ocorre automaticamente, sem necessidade de intervenção do operador.

---

# Cancelamento

Quando permitido pela legislação e pelas regras da empresa, documentos fiscais podem ser cancelados diretamente pelo PDV.

O sistema executa automaticamente:

- envio do evento de cancelamento;
- atualização do ERP;
- atualização do estoque;
- atualização financeira;
- registro para auditoria.

---

# Reimpressão

O operador pode realizar a reimpressão dos documentos emitidos.

Dependendo da configuração, é possível reimprimir:

- DANFE NFC-e;
- comprovantes;
- documentos auxiliares.

A reimpressão utiliza os dados já autorizados, sem necessidade de nova transmissão.

---

# Assinatura Digital

Todos os documentos eletrônicos utilizam o certificado digital configurado pela empresa.

O processo de assinatura é totalmente transparente para o operador.

---

# Integração com SEFAZ

Durante a emissão o sistema realiza automaticamente:

- validação dos dados;
- assinatura digital;
- transmissão;
- consulta do protocolo;
- armazenamento do XML autorizado.

Caso exista indisponibilidade temporária da SEFAZ, o sistema segue as regras de contingência configuradas.

---

# Integração com ERP

Após a autorização do documento, o ERP recebe automaticamente todas as informações da operação.

São sincronizados:

- documento fiscal;
- XML;
- estoque;
- financeiro;
- cliente;
- histórico da venda;
- relatórios fiscais.

Não é necessário realizar qualquer lançamento manual.

---

# Segurança

Cada documento possui rastreabilidade completa.

São registrados:

- operador;
- terminal;
- data;
- horário;
- número do documento;
- situação;
- protocolo de autorização.

Essas informações permanecem disponíveis para auditoria.

---

# Benefícios

- Emissão automática.
- Integração com ERP.
- Integração com SEFAZ.
- Contingência Offline.
- Assinatura digital.
- Cancelamento.
- Reimpressão.
- Armazenamento eletrônico.
- Operação transparente ao operador.

---

# Casos de Uso

## Loja de Varejo

Emissão automática de NFC-e ao concluir a venda.

---

## Prestador de Serviço

Emissão de NFS-e integrada ao cadastro de serviços.

---

## Venda Faturada

Emissão de NF-e conforme regras da operação.

---

## Falha de Internet

Continuidade da operação utilizando NFC-e em contingência offline.

---

# Diferenciais

O módulo de Documentos Fiscais foi projetado para que o operador concentre sua atenção no atendimento ao cliente, enquanto toda a complexidade fiscal é tratada automaticamente pelo sistema.

A combinação entre emissão eletrônica, contingência offline, sincronização automática com o ERP e integração com a SEFAZ garante conformidade fiscal, continuidade operacional e redução significativa de erros durante a emissão de documentos.

---

# Próximo Capítulo

**10 - TEF e Pagamentos**

Conheça os recursos de recebimento do PDV Desktop, incluindo pagamento misto, PIX, cartões, integração com TEF, descontos, acréscimos e gestão das formas de pagamento.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](10-TEF-E-PAGAMENTOS.md)
---
**Navegacao:** [Anterior](08-SINCRONIZACAO.md) | [Inicio](../../README.md) | [Proximo](10-TEF-E-PAGAMENTOS.md)
<!-- NAVIGATION_FOOTER:END -->

