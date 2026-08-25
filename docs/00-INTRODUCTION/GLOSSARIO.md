---
title: Glossário
classification: PUBLIC
owner: PDVPOS LTDA
version: "1.0"
last_updated: 2026-08-25
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
[README principal](../../README.md) | [Introdução](MODULES-INDEX.md) | [Módulos](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)
---
> **Breadcrumbs:** [Início](../../README.md) / [Introdução](MODULES-INDEX.md) / 
GLOSSARIO
<!-- NAVIGATION:END -->

# PDVPOS ERP

> Official Product Documentation

# Glossário

---

# Objetivo

Este glossário reúne os principais termos utilizados no PDVPOS ERP.

Seu objetivo é padronizar a terminologia utilizada em toda a documentação oficial, materiais comerciais, treinamentos, suporte técnico e integrações.

Sempre que possível, os termos descritos neste documento devem ser utilizados em substituição a nomenclaturas genéricas, garantindo consistência na comunicação da plataforma.

---

# Administração

## Empresa

Representa uma entidade jurídica cadastrada no ERP.

Cada empresa possui suas próprias configurações, documentos fiscais, usuários, produtos, clientes e movimentações.

---

## Filial

Unidade operacional pertencente a uma empresa.

Dependendo das configurações, uma filial pode possuir:

- Estoque próprio
- Preços próprios
- Clientes próprios
- Usuários próprios
- Vendedores próprios
- PDVs próprios

---

## Multiempresa

Capacidade do PDVPOS ERP administrar diversas empresas dentro da mesma plataforma, mantendo independência operacional entre elas.

---

# Usuários

## Usuário

Pessoa autorizada a acessar o ERP.

Cada usuário possui permissões específicas definidas pela empresa.

---

## Perfil de Acesso

Conjunto reutilizável de permissões atribuído aos usuários.

Permite simplificar o gerenciamento de acessos.

---

## Permissão

Autorização concedida para executar determinada operação dentro do ERP.

---

# Comercial

## Cliente

Pessoa física ou jurídica que realiza compras ou contrata serviços da empresa.

O cadastro do cliente é utilizado pelos módulos Comercial, Financeiro, Fiscal e Relatórios.

---

## Contato Comercial

Pessoa responsável pela indicação de uma venda.

Esse cadastro permite vincular a origem da negociação para programas de parceria, indicação ou bonificação.

Não representa o cliente nem o vendedor.

---

## Vendedor

Profissional responsável pela negociação comercial.

Uma venda pode possuir um vendedor independentemente do operador de caixa que realizou o atendimento.

---

## Operador de Caixa

Usuário responsável pelo atendimento realizado nos PDVs Desktop ou SmartPOS.

Embora possa ser a mesma pessoa, o operador de caixa possui função distinta do vendedor.

---

## Pedido de Venda

Documento utilizado para registrar uma negociação antes da conclusão da venda.

Pode funcionar como:

- Orçamento
- Reserva de estoque

---

## Venda

Operação comercial concluída que pode gerar movimentação financeira, atualização de estoque, documentos fiscais e, quando aplicável, Ordem de Serviço.

---

## Promoção

Configuração temporária que permite vender produtos com preços promocionais em valor fixo ou percentual de desconto durante um período definido.

---

# Produtos

## Produto

Mercadoria comercializada pela empresa.

É a principal entidade operacional do PDVPOS ERP, sendo utilizada por diversos módulos da plataforma.

---

## Serviço

Atividade prestada pela empresa.

Pode ser utilizada para emissão de NFS-e e Ordens de Serviço.

---

## Grade

Recurso utilizado para criação de variações de produtos.

No PDVPOS ERP, cada variação é criada como um produto independente, compartilhando apenas a relação familiar com o produto principal.

Cada item da grade possui:

- Código próprio
- Código de barras próprio
- Estoque próprio
- Preço próprio
- Tributação própria

---

## Perfil Tributário

Conjunto reutilizável de regras fiscais aplicado a produtos e serviços.

Permite centralizar configurações tributárias e reduzir parametrizações repetitivas.

---

# Estoque

## Estoque

Controle das quantidades disponíveis dos produtos.

---

## Depósito

Local físico utilizado para armazenagem de mercadorias.

Cada depósito possui controle independente de estoque.

---

## Inventário

Processo de conferência física das mercadorias existentes em estoque.

---

## Lote

Identificação utilizada para controle de validade e rastreabilidade dos produtos.

---

## Embalagem

Cadastro utilizado para definir embalagens empregadas em operações logísticas e integrações com transportadoras e e-commerce.

---

# Compras

## Pedido de Compra

Documento utilizado para registrar solicitações de compra realizadas aos fornecedores.

---

## Entrada de NF-e

Processo de importação e confirmação das notas fiscais eletrônicas recebidas dos fornecedores.

---

## XML

Arquivo eletrônico oficial utilizado para transmissão das informações das Notas Fiscais Eletrônicas.

---

# Financeiro

## Conta a Receber

Título financeiro que representa um valor a ser recebido pela empresa.

---

## Conta a Pagar

Título financeiro que representa uma obrigação financeira da empresa.

---

## Baixa Financeira

Registro da liquidação de um título financeiro.

Pode ser utilizada tanto para contas a pagar quanto para contas a receber.

---

## Fluxo de Caixa

Conjunto das movimentações financeiras realizadas pela empresa em determinado período.

---

## Centro de Custo

Classificação gerencial utilizada para organizar receitas e despesas.

---

## Categoria Financeira

Classificação utilizada para identificar a natureza das receitas e despesas.

---

## DRE

Demonstração do Resultado do Exercício.

Relatório gerencial utilizado para análise do desempenho financeiro da empresa.

---

## OFX

Arquivo eletrônico utilizado para importação de extratos bancários.

---

# Cobranças

## Link de Pagamento

Endereço eletrônico utilizado para que o cliente realize o pagamento utilizando PIX ou cartão.

---

## Gateway de Pagamento

Empresa responsável pelo processamento das operações financeiras eletrônicas.

---

# Fiscal

## NF-e

Nota Fiscal Eletrônica utilizada para operações com mercadorias.

---

## NFC-e

Nota Fiscal de Consumidor Eletrônica utilizada para vendas ao consumidor final.

---

## NFS-e

Nota Fiscal de Serviços Eletrônica.

---

## Manifestação do Destinatário

Procedimento que permite ao destinatário manifestar sua ciência ou posição em relação a uma Nota Fiscal Eletrônica recebida.

As modalidades disponíveis são:

- Ciência da Operação
- Confirmação da Operação
- Operação não Realizada
- Desconhecimento da Operação

---

## Carta de Correção

Documento eletrônico utilizado para corrigir determinadas informações da NF-e, conforme permitido pela legislação.

---

## Contingência

Modo de emissão utilizado quando não é possível comunicar-se temporariamente com os serviços autorizadores.

---

# Reforma Tributária

## Herança Tributária

Mecanismo utilizado pelo PDVPOS ERP para localizar automaticamente a configuração tributária mais específica.

A ordem utilizada é:

Produto

↓

Perfil Tributário

↓

Empresa

---

## Assistente de Implantação

Processo guiado utilizado para configurar inicialmente a Reforma Tributária.

---

# Serviços

## Ordem de Serviço (OS)

Documento utilizado para controlar instalações, montagens, assistências técnicas e demais serviços realizados pela empresa.

Pode ser criada:

- Automaticamente a partir de uma venda.
- Manualmente.

---

## Técnico

Profissional responsável pela execução das Ordens de Serviço.

Pode possuir acesso restrito ao ERP para visualizar apenas suas próprias OS.

---

# Integrações

## SmartPOS

Aplicativo de frente de caixa executado em dispositivos Android SmartPOS.

---

## PDV Desktop

Sistema de frente de caixa utilizado em computadores.

---

## ConnectTEF

Plataforma de integração responsável pela comunicação entre os PDVs e os meios eletrônicos de pagamento.

---

## API REST

Interface utilizada para integração do ERP com sistemas externos.

---

## Webhook

Notificação automática enviada pelo ERP quando determinado evento ocorre.

---

## Gestor Marketplace

Recurso que permite compartilhar produtos, estoques e operações comerciais entre empresas pertencentes ao mesmo grupo empresarial.

---

# Contabilidade

## Portal da Contabilidade

Ambiente dedicado ao escritório contábil para consulta de informações fiscais, financeiras e download dos arquivos disponibilizados pela empresa.

---

# Indicadores

## Dashboard

Painel inicial do ERP que apresenta indicadores estratégicos da operação.

---

## Relatório

Documento utilizado para consulta, conferência ou análise das informações produzidas pelos diversos módulos da plataforma.

---

# Convenções Utilizadas na Documentação

Ao longo da documentação oficial do PDVPOS ERP serão utilizados os seguintes termos padronizados:

- ERP → PDVPOS ERP
- PDV → PDV Desktop ou SmartPOS
- OS → Ordem de Serviço
- NF-e → Nota Fiscal Eletrônica
- NFC-e → Nota Fiscal de Consumidor Eletrônica
- NFS-e → Nota Fiscal de Serviços Eletrônica
- XML → Arquivo eletrônico da Nota Fiscal
- Perfil Tributário → Conjunto reutilizável de regras fiscais

---

# Atualização do Glossário

Este documento deve ser atualizado sempre que novos recursos, conceitos ou módulos forem incorporados ao PDVPOS ERP.

Manter a terminologia padronizada é fundamental para garantir consistência entre a documentação oficial, materiais comerciais, treinamentos, suporte técnico e integrações da plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README](../../README.md)
- [Modules Index](MODULES-INDEX.md)
- [Apresentacao dos Modulos](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)
---
**Navegacao:** [Início](../../README.md) | [Introdução](MODULES-INDEX.md)
<!-- NAVIGATION_FOOTER:END -->
