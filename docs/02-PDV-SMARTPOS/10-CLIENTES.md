---
title: PDV SmartPOS - Clientes
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](09-HISTORICO-DE-CAIXAS.md) | [Próximo](11-ESTOQUE.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 10 CLIENTES
<!-- NAVIGATION:END -->

# 10 - Clientes

O módulo **Clientes** permite consultar, cadastrar, editar e manter a base de clientes diretamente no **PDV SmartPOS**, eliminando a necessidade de interromper o atendimento para utilizar o ERP.

Todos os cadastros realizados no equipamento são sincronizados automaticamente com o ecossistema **PDVPOS ERP**, tornando-se disponíveis para os demais **PDVs SmartPOS**, **PDV Desktop** e para a retaguarda.

O objetivo do módulo é oferecer autonomia operacional sem abrir mão da consistência das informações.

---

## Objetivo

Apresentar o funcionamento do cadastro de clientes, demonstrando como consultar, cadastrar e atualizar informações diretamente no **PDV SmartPOS**.

---

# Visão Geral

O módulo Clientes reúne todas as informações cadastrais necessárias para identificação do consumidor durante a operação de venda.

Através dele é possível:

- Consultar clientes;
- Cadastrar novos clientes;
- Alterar informações existentes;
- Atualizar endereço;
- Atualizar contatos;
- Ativar ou inativar cadastros.

Todas as alterações permanecem sincronizadas com o ERP.

---

# Consulta de Clientes

Ao acessar o módulo, o **PDV SmartPOS** apresenta uma lista contendo todos os clientes disponíveis.

Cada registro exibe informações resumidas como:

- Nome;
- CPF ou CNPJ;
- Situação do cadastro.

Essa visualização permite localizar rapidamente qualquer cliente.

---

# Pesquisa

O sistema disponibiliza pesquisa rápida para facilitar a localização dos cadastros.

A pesquisa pode ser realizada utilizando:

- Nome;
- CPF;
- CNPJ;
- Documento;
- Código do cliente.

A consulta ocorre instantaneamente.

---

# Filtros

A listagem pode ser filtrada conforme a situação cadastral.

Entre os filtros disponíveis:

- Todos;
- Ativos;
- Inativos.

Essa organização facilita operações de manutenção da base de clientes.

---

# Cadastro de Clientes

O **PDV SmartPOS** permite criar novos clientes diretamente durante o atendimento.

Essa funcionalidade elimina a necessidade de acessar outro sistema para concluir uma venda identificada.

Após o cadastro, o cliente já poderá ser utilizado imediatamente nas operações comerciais.

---

# Informações Básicas

Cada cliente pode possuir os seguintes dados cadastrais:

- Nome;
- CPF;
- CNPJ;
- Data de nascimento;
- Situação do cadastro.

Essas informações são utilizadas para identificação da venda e emissão de documentos fiscais.

---

# Informações de Contato

Também podem ser cadastrados os principais meios de contato.

Entre eles:

- Telefone;
- E-mail.

Esses dados permanecem sincronizados com o ERP.

---

# Endereço

O cadastro contempla informações completas de endereço.

Entre elas:

- CEP;
- Estado;
- Cidade;
- Bairro;
- Endereço;
- Número;
- Complemento.

Essas informações são especialmente importantes para operações de delivery e prestação de serviços.

---

# Alteração de Clientes

Clientes já cadastrados podem ser alterados diretamente no **PDV SmartPOS**.

Entre as alterações permitidas:

- dados pessoais;
- telefone;
- e-mail;
- endereço;
- situação cadastral.

Todas as modificações são sincronizadas automaticamente com o ERP.

---

# Utilização nas Vendas

Durante uma venda, o operador pode identificar rapidamente o cliente.

Essa associação permite:

- emissão de NFC-e identificada;
- emissão de NF-e;
- emissão de NFS-e;
- histórico de compras;
- integração com pedidos;
- integração com delivery;
- continuidade da venda entre equipamentos.

---

# Integração com Pedidos

Os clientes cadastrados podem ser utilizados imediatamente nos módulos:

- Pedidos de Venda;
- Mesas;
- Delivery;
- Vendas.

A identificação acompanha toda a operação até sua conclusão.

---

# Sincronização

Todos os cadastros realizados no **PDV SmartPOS** são sincronizados automaticamente com o ERP.

Entre eles:

- novos clientes;
- alterações;
- atualizações cadastrais;
- mudanças de situação.

Da mesma forma, clientes cadastrados no ERP também são disponibilizados automaticamente para o **PDV SmartPOS**.

---

# Operação Offline

Mesmo sem acesso à internet, o operador continua podendo:

- consultar clientes já sincronizados;
- cadastrar novos clientes;
- alterar cadastros existentes.

As informações permanecem armazenadas no banco de dados local e são sincronizadas automaticamente quando a comunicação for restabelecida.

Essa arquitetura garante continuidade operacional durante todo o atendimento.

---

# Segurança

Todas as alterações realizadas nos cadastros permanecem registradas para fins de auditoria.

São armazenadas informações como:

- operador responsável;
- data;
- hora;
- tipo da alteração;
- situação da sincronização.

---

# Fluxo Operacional

```text
Consulta

      │

      ▼

Novo Cliente

      │

      ▼

Cadastro

      │

      ▼

Utilização na Venda

      │

      ▼

Sincronização com ERP
```

---

# Benefícios

O módulo Clientes oferece diversas vantagens operacionais.

- Cadastro diretamente no PDV SmartPOS.
- Consulta rápida.
- Pesquisa instantânea.
- Atualização cadastral.
- Endereço completo.
- Integração com vendas.
- Integração com pedidos.
- Integração com documentos fiscais.
- Funcionamento totalmente offline.
- Sincronização automática com o ERP.
- Compartilhamento da base de clientes entre todos os dispositivos.

---

## Conclusão

O módulo **Clientes** permite que o **PDV SmartPOS** atue como uma extensão operacional do ERP, possibilitando que toda a gestão cadastral necessária para a venda seja realizada diretamente no equipamento.

Essa integração elimina retrabalho, melhora a qualidade das informações e garante que todos os dispositivos do ecossistema compartilhem uma base única e consistente de clientes.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](11-ESTOQUE.md)
---
**Navegacao:** [Anterior](09-HISTORICO-DE-CAIXAS.md) | [Inicio](../../README.md) | [Proximo](11-ESTOQUE.md)
<!-- NAVIGATION_FOOTER:END -->

