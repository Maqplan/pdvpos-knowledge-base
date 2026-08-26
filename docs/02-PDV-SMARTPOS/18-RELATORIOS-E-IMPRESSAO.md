---
title: PDV SmartPOS - Relatórios e Impressão
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](17-CONFIGURACOES.md) | [Proximo](19-DIFERENCIAIS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 18 RELATORIOS E IMPRESSAO
<!-- NAVIGATION:END -->

# 18 - Relatórios e Impressão

O **PDV SmartPOS** disponibiliza diversos recursos de consulta e impressão que auxiliam operadores, supervisores e gestores na conferência das operações realizadas durante o expediente.

Além da impressão de documentos fiscais, o sistema permite emitir relatórios operacionais, comprovantes de venda, comprovantes de pagamento e documentos administrativos diretamente pelo equipamento.

Esses recursos eliminam a necessidade de acessar o ERP para consultas rápidas do dia a dia.

---

## Objetivo

Apresentar os recursos de consulta e impressão disponíveis no **PDV SmartPOS**, demonstrando como eles auxiliam na conferência das operações e no atendimento ao cliente.

---

# Visão Geral

Os recursos de impressão estão distribuídos por diversos módulos do sistema.

Entre eles:

- Venda;
- Histórico de Vendas;
- Caixa;
- Histórico de Caixas;
- Documentos Fiscais;
- Produção.

Cada módulo disponibiliza apenas os documentos compatíveis com sua operação.

---

# Impressão ao Final da Venda

Após concluir uma venda, o **PDV SmartPOS** apresenta automaticamente a tela de finalização.

A partir dela o operador pode:

- Reimprimir o comprovante da venda;
- Reimprimir o documento fiscal;
- Imprimir comprovantes TEF;
- Iniciar uma nova venda.

Essa etapa permite atender rapidamente solicitações do cliente sem necessidade de localizar novamente a operação.

---

# Impressão de Documentos Fiscais

Quando configurado, o sistema imprime automaticamente o documento fiscal emitido.

Dependendo da operação poderão ser impressos:

- DANFE NFC-e;
- DANFE NF-e;
- Comprovantes relacionados à NFS-e (quando aplicável).

Caso necessário, esses documentos poderão ser reimpressos posteriormente através do Histórico de Vendas.

---

# Comprovantes de Pagamento

Quando houver integração com o **ConnectTEF**, o sistema poderá imprimir automaticamente:

- Via do Cliente;
- Via do Estabelecimento;
- Comprovante da Transação.

A disponibilidade depende da configuração do estabelecimento e da adquirente utilizada.

---

# Impressão de Relatórios do Caixa

O módulo **Caixa** permite imprimir um resumo das movimentações do caixa atualmente aberto.

O relatório pode apresentar:

- Operador responsável;
- Data e hora de abertura;
- Quantidade de vendas;
- Valores recebidos;
- Totais por forma de pagamento;
- Sangrias;
- Suprimentos;
- Cancelamentos;
- Total movimentado.

Esse relatório auxilia na conferência durante o expediente e no fechamento do caixa.

---

# Relatórios do Histórico de Vendas

O módulo **Histórico de Vendas** permite consultar operações realizadas em diferentes períodos.

Além da consulta, o operador pode:

- Visualizar detalhes completos;
- Reimprimir documentos;
- Reimprimir comprovantes;
- Consultar vendas canceladas.

Esses recursos facilitam auditorias e atendimento pós-venda.

---

# Relatórios do Histórico de Caixas

Através do **Histórico de Caixas**, é possível consultar movimentações anteriores e acessar o detalhamento completo de qualquer caixa registrado.

Essas informações permitem:

- Conferência financeira;
- Auditoria operacional;
- Revisão de movimentações.

---

# Impressões de Produção

Quando configurado para operações de alimentação, o **PDV SmartPOS** pode enviar automaticamente pedidos para impressão em setores específicos.

Exemplos:

- Cozinha;
- Bar;
- Copa;
- Produção.

As observações cadastradas para cada item acompanham a impressão.

Exemplo:

```text
Pizza Grande

• Metade Calabresa
• Metade Portuguesa
• Massa Fina
• Sem Cebola
```

Essa funcionalidade reduz erros de produção e melhora a comunicação entre atendimento e cozinha.

---

# Reimpressão de Documentos

O sistema permite reimprimir documentos sempre que necessário.

Entre eles:

- Comprovantes de Venda;
- Documentos Fiscais;
- Comprovantes TEF;
- Relatórios do Caixa.

A reimpressão é realizada diretamente pelo equipamento, sem necessidade de acessar o ERP.

---

# Integração com o ERP

Todos os documentos emitidos permanecem sincronizados com o **PDVPOS ERP**.

Isso garante que gestores possam consultar posteriormente:

- Vendas;
- Documentos Fiscais;
- Movimentações do Caixa;
- Histórico Operacional.

A impressão no **PDV SmartPOS** não interfere na consistência das informações armazenadas na retaguarda.

---

# Operação Offline

Mesmo durante períodos sem acesso à internet, o **PDV SmartPOS** continua permitindo a impressão dos documentos disponíveis localmente.

Entre eles:

- Comprovantes de Venda;
- Relatórios do Caixa;
- Documentos já armazenados no equipamento;
- Impressões de Produção.

Quando a comunicação for restabelecida, as informações pendentes serão sincronizadas automaticamente com o ERP.

---

# Benefícios

O módulo de Relatórios e Impressão proporciona importantes vantagens para a operação diária.

- Impressão imediata após a venda.
- Reimpressão de documentos.
- Relatórios do caixa.
- Consulta ao histórico de vendas.
- Consulta ao histórico de caixas.
- Impressão de comprovantes TEF.
- Impressão de documentos fiscais.
- Impressões de produção.
- Funcionamento offline.
- Integração automática com o ERP.

---

## Conclusão

O módulo **Relatórios e Impressão** amplia a autonomia operacional do **PDV SmartPOS**, permitindo consultar informações e emitir documentos diretamente no equipamento.

A integração entre vendas, caixa, documentos fiscais, pagamentos e produção garante que operadores e gestores tenham acesso rápido às informações necessárias para conferência, atendimento ao cliente e auditoria, mantendo sempre a sincronização com o ecossistema **PDVPOS ERP**.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](19-DIFERENCIAIS.md)
---
**Navegacao:** [Anterior](17-CONFIGURACOES.md) | [Inicio](../../README.md) | [Proximo](19-DIFERENCIAIS.md)
<!-- NAVIGATION_FOOTER:END -->

