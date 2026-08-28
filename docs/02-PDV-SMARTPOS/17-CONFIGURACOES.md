---
title: PDV SmartPOS - Configurações
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](16-SINCRONIZACAO.md) | [Próximo](18-RELATORIOS-E-IMPRESSAO.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 17 CONFIGURACOES
<!-- NAVIGATION:END -->

# 17 - Configurações

O módulo **Configurações** concentra todos os parâmetros responsáveis pelo comportamento do **PDV SmartPOS**.

Através dele é possível adaptar o aplicativo para diferentes segmentos de atuação, definir o comportamento operacional das vendas, controlar a emissão de documentos fiscais, configurar impressões, recursos de atendimento e informações do terminal.

A filosofia do **PDV SmartPOS** é utilizar um único aplicativo para diferentes tipos de negócios, sendo a parametrização responsável por habilitar ou desabilitar funcionalidades conforme a necessidade de cada empresa.

---

## Objetivo

Apresentar todas as configurações disponíveis no **PDV SmartPOS**, demonstrando como cada parâmetro influencia a operação do sistema e possibilita sua adaptação para diferentes segmentos do mercado.

---

## Visão Geral

A tela **Configurações** reúne todos os parâmetros que controlam o funcionamento do aplicativo.

Entre eles:

- Venda;
- Pagamentos;
- Impressão;
- Documentos Fiscais;
- Gestão de Mesas;
- Recursos Operacionais;
- Sessão do Usuário;
- Informações do Equipamento.

Cada alteração modifica imediatamente o comportamento do sistema, respeitando as permissões do usuário autenticado.

---

## Configurações da Venda

As configurações da venda permitem adaptar o fluxo operacional da empresa.

Entre os recursos disponíveis estão:

- Solicitar CPF/CNPJ ao iniciar a venda;
- Adicionar produtos automaticamente ao carrinho;
- Separar produtos iguais em linhas distintas;
- Permitir descontos;
- Permitir acréscimos;
- Permitir observações;
- Permitir alteração de quantidade;
- Permitir salvar como Pedido de Venda.

---

## Produtos Iguais

O sistema permite definir como produtos repetidos serão apresentados durante a venda.

### Agrupar Produtos

Produtos iguais são consolidados em uma única linha.

```text
Refrigerante

Quantidade: 5
```

### Separar Produtos

Cada unidade permanece individual.

```text
Refrigerante

Refrigerante

Refrigerante
```

Essa configuração é especialmente indicada para restaurantes e operações onde cada item pode possuir observações próprias.

---

## Pagamentos

Permite configurar as formas de pagamento apresentadas ao operador.

Também é possível definir os botões de pagamento rápido.

Exemplos:

- Dinheiro;
- PIX;
- Cartão de Débito;
- Cartão de Crédito.

Essa funcionalidade reduz significativamente o tempo de atendimento.

---

## Configurações Fiscais

Define quais documentos fiscais poderão ser emitidos pelo **PDV SmartPOS**.

Dependendo da configuração da empresa, poderão ser habilitados:

- NFC-e;
- NF-e;
- NFS-e.

O aplicativo adapta automaticamente o fluxo operacional conforme o documento fiscal utilizado.

---

## Impressão

Controla o comportamento das impressões realizadas pelo sistema.

Entre elas:

- Comprovante da Venda;
- Documento Fiscal;
- Via do Cliente;
- Via do Estabelecimento;
- Impressões de Produção.

Também é possível configurar confirmações antes da impressão.

---

## Gestão de Mesas

Quando o módulo de restaurante estiver habilitado, ficam disponíveis parâmetros específicos.

Entre eles:

- Habilitar Gestão de Mesas;
- Quantidade de Mesas;
- Exibição das mesas na tela inicial.

---

## Sessão do Usuário

O operador pode encerrar sua sessão diretamente pelo módulo de configurações.

Após o encerramento será necessário realizar uma nova autenticação para continuar utilizando o sistema.

---

## Informações do Equipamento

A parte inferior da tela apresenta informações da instalação atual.

Entre elas:

- Empresa;
- CPF/CNPJ;
- Número do PDV;
- Número de Série;
- E-mail;
- Versão do Aplicativo.

Essas informações auxiliam processos de suporte e auditoria.

---

## Parametrização por Segmento

O mesmo aplicativo pode atender diferentes segmentos apenas através das configurações.

Exemplos:

### Comércio

- Venda Convencional;
- NFC-e;
- PIX;
- Cartões.

### Restaurante

- Gestão de Mesas;
- Observações por Item;
- Impressão na Cozinha;
- Produção.

### Prestadores de Serviços

- Cadastro de Clientes;
- NFS-e;
- Recebimentos;
- Histórico de Serviços.

### Atendimento Externo

- Mobilidade;
- NF-e;
- Operação Offline;
- Sincronização Automática.

---

## Benefícios

A arquitetura baseada em parametrização oferece diversas vantagens.

- Um único aplicativo para diversos segmentos.
- Redução da complexidade operacional.
- Menor custo de implantação.
- Interface adaptada ao perfil da empresa.
- Maior flexibilidade.
- Atualizações simplificadas.
- Menor curva de aprendizado.

---

## Conclusão

O módulo **Configurações** permite adaptar completamente o comportamento do **PDV SmartPOS** sem necessidade de versões específicas do aplicativo.

Essa abordagem garante maior flexibilidade, simplifica a implantação e possibilita que empresas de diferentes segmentos utilizem exatamente a mesma solução, visualizando apenas os recursos compatíveis com sua operação.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](18-RELATORIOS-E-IMPRESSAO.md)
---
**Navegacao:** [Anterior](16-SINCRONIZACAO.md) | [Inicio](../../README.md) | [Proximo](18-RELATORIOS-E-IMPRESSAO.md)
<!-- NAVIGATION_FOOTER:END -->

