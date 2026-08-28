---
title: PDV SmartPOS - Documentos Fiscais
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](13-GRUPOS-E-CATEGORIAS.md) | [Próximo](15-PAGAMENTOS-E-TEF.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 14 DOCUMENTOS FISCAIS
<!-- NAVIGATION:END -->

# 14 - Documentos Fiscais

O **PDV SmartPOS** possui um dos motores fiscais mais completos disponíveis para dispositivos SmartPOS, permitindo a emissão de diferentes modelos de documentos fiscais diretamente no equipamento.

Dependendo da atividade da empresa e das configurações definidas no ERP, o sistema pode emitir **NFC-e**, **NF-e** e **NFS-e**, tornando o mesmo aplicativo capaz de atender operações de comércio, atacado e prestação de serviços.

Toda a emissão fiscal está integrada ao processo de venda, garantindo conformidade legal, rastreabilidade e sincronização automática com o ecossistema **PDVPOS ERP**.

---

## Objetivo

Apresentar o funcionamento do módulo fiscal do **PDV SmartPOS**, detalhando os documentos suportados, o fluxo de emissão, cancelamentos, contingência e integração com o ERP.

---

# Visão Geral

Após a conclusão da venda e confirmação do pagamento, o **PDV SmartPOS** executa automaticamente o processo de emissão do documento fiscal correspondente.

Dependendo da configuração da empresa poderão ser emitidos:

- NFC-e (Nota Fiscal de Consumidor Eletrônica);
- NF-e (Nota Fiscal Eletrônica);
- NFS-e (Nota Fiscal de Serviços Eletrônica).

Todo o processo ocorre de forma transparente para o operador.

---

# Documentos Suportados

## NFC-e

A NFC-e é utilizada nas operações de venda ao consumidor final.

Características:

- Emissão automática.
- Impressão do DANFE NFC-e.
- Cancelamento conforme legislação.
- Consulta posterior.
- Reimpressão.

---

## NF-e

O **PDV SmartPOS** também pode emitir NF-e diretamente pelo equipamento.

Essa funcionalidade permite utilizar o aplicativo em operações como:

- Atacado;
- Distribuição;
- Vendas para empresas;
- Entregas técnicas;
- Vendas externas.

Após a autorização, o DANFE poderá ser impresso diretamente no equipamento.

---

## NFS-e

Empresas prestadoras de serviços podem emitir NFS-e diretamente pelo **PDV SmartPOS**.

Exemplos:

- Assistência Técnica;
- Instalação;
- Consultoria;
- Manutenção;
- Serviços em campo.

Essa funcionalidade elimina a necessidade de utilização de outro equipamento para emissão da nota fiscal.

---

# Fluxo de Emissão

O processo fiscal é totalmente integrado à venda.

```text
Venda

        │

        ▼

Pagamento

        │

        ▼

Emissão Fiscal

        │

        ▼

Autorização

        │

        ▼

Impressão

        │

        ▼

Sincronização com ERP
```

Todo o processo ocorre automaticamente.

---

# Integração com o Cadastro de Produtos

Durante a emissão, o sistema utiliza automaticamente as informações fiscais cadastradas para cada produto.

Entre elas:

- NCM;
- CEST;
- CFOP;
- CST;
- CSOSN;
- Origem;
- Regras tributárias.

Essas informações são sincronizadas diretamente com o ERP.

---

# Identificação do Consumidor

Quando configurado, o documento fiscal poderá ser emitido com identificação do cliente.

Podem ser utilizados:

- CPF;
- CNPJ.

Essas informações são obtidas diretamente do cadastro de clientes.

---

# Cancelamento

Quando permitido pela legislação e pelas permissões do operador, documentos fiscais podem ser cancelados diretamente pelo **PDV SmartPOS**.

Durante esse processo o sistema executa automaticamente:

- Cancelamento fiscal;
- Estorno financeiro;
- Atualização do estoque;
- Sincronização com o ERP.

Todas as operações permanecem registradas para auditoria.

---

# Reimpressão

Documentos já emitidos podem ser reimpressos a qualquer momento.

Dependendo da operação poderão ser reimpressos:

- DANFE NFC-e;
- DANFE NF-e;
- Comprovante da venda;
- Comprovantes TEF.

Essa funcionalidade está disponível através do módulo **Histórico de Vendas**.

---

# Contingência

Caso ocorra indisponibilidade temporária dos serviços responsáveis pela autorização fiscal, o **PDV SmartPOS** poderá operar em contingência quando suportado pela legislação e pela configuração da empresa.

Nesse cenário:

- A venda permanece registrada.
- O documento é armazenado localmente.
- A transmissão é realizada automaticamente quando possível.

Essa arquitetura garante continuidade operacional sem perda das informações.

---

# Operação Offline

Um dos principais diferenciais do **PDV SmartPOS** é sua capacidade de continuar operando mesmo durante indisponibilidade da internet.

Durante esse período:

- As vendas continuam sendo realizadas;
- Os documentos pendentes permanecem armazenados no banco local;
- As informações fiscais são sincronizadas automaticamente quando a comunicação é restabelecida.

Esse comportamento reduz interrupções e aumenta a disponibilidade da operação.

---

# Sincronização com o ERP

Após a autorização do documento fiscal, todas as informações são transmitidas automaticamente ao ERP.

São sincronizados:

- Documento fiscal;
- Chave de acesso;
- Protocolo de autorização;
- Cancelamentos;
- Situação fiscal.

Essa integração garante consistência entre frente de caixa e retaguarda.

---

# Segurança

Todo o ciclo de vida do documento fiscal permanece registrado.

São armazenadas informações como:

- Operador;
- Data e hora;
- Tipo do documento;
- Situação;
- Número;
- Série;
- Chave de acesso;
- Situação da sincronização.

Esses registros fortalecem auditorias fiscais e operacionais.

---

# Diferencial Competitivo

Poucas soluções para SmartPOS oferecem suporte simultâneo aos três principais documentos fiscais brasileiros.

O **PDV SmartPOS** permite emitir diretamente no equipamento:

- NFC-e;
- NF-e;
- NFS-e.

Essa característica amplia significativamente os segmentos que podem utilizar o sistema, permitindo atender comércio, atacado e prestadores de serviços utilizando um único aplicativo.

---

# Benefícios

O módulo de Documentos Fiscais oferece importantes vantagens.

- Emissão de NFC-e.
- Emissão de NF-e.
- Emissão de NFS-e.
- Cancelamento integrado.
- Reimpressão de documentos.
- Operação em contingência.
- Integração com o ERP.
- Sincronização automática.
- Funcionamento offline.
- Rastreabilidade completa.

---

## Conclusão

O módulo **Documentos Fiscais** posiciona o **PDV SmartPOS** como uma solução completa para automação comercial em dispositivos SmartPOS.

Ao suportar **NFC-e**, **NF-e** e **NFS-e** diretamente no equipamento, o sistema elimina a necessidade de aplicações distintas para diferentes segmentos, simplifica a operação e garante conformidade fiscal integrada ao ecossistema **PDVPOS ERP**.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](15-PAGAMENTOS-E-TEF.md)
---
**Navegacao:** [Anterior](13-GRUPOS-E-CATEGORIAS.md) | [Inicio](../../README.md) | [Proximo](15-PAGAMENTOS-E-TEF.md)
<!-- NAVIGATION_FOOTER:END -->

