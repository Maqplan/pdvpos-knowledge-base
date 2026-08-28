---
title: PDV SmartPOS - Configuração
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
[README principal](../../README.md) | [Índice da documentação](README.md) | [Anterior](01-ARQUITETURA.md) | [Próximo](03-VENDAS.md)
---
> **Caminho:** [Início](../../README.md) / [PDV SmartPOS](README.md) / 02 CONFIGURACAO
<!-- NAVIGATION:END -->

# 02 - Configuração

O **PDV SmartPOS** foi desenvolvido para atender diferentes segmentos do varejo utilizando um único aplicativo.

Todo o comportamento operacional é definido através das configurações do terminal, permitindo habilitar ou desabilitar funcionalidades sem necessidade de instalar versões diferentes do sistema.

Essa arquitetura reduz custos de implantação, simplifica o suporte e permite adaptar rapidamente o aplicativo às necessidades de cada empresa.

---

## Objetivo

Apresentar todas as opções de configuração disponíveis no **PDV SmartPOS**, explicando como cada parâmetro influencia o comportamento operacional do sistema.

---

# Visão Geral

O módulo **Configuração** reúne todos os parâmetros responsáveis por controlar o funcionamento do PDV SmartPOS.

Entre eles:

- Recursos da venda;
- Documentos fiscais;
- Impressão;
- Gestão de mesas;
- Formas de pagamento;
- Comportamento do carrinho;
- Sessão do operador;
- Informações do terminal.

Todas as alterações são aplicadas imediatamente após sua confirmação, respeitando as permissões do usuário.

---

# Configurações Gerais

As configurações gerais controlam o comportamento padrão da operação de venda.

## Pagamentos rápidos

Quando habilitado, o PDV SmartPOS apresenta diretamente na tela de venda botões para as formas de pagamento mais utilizadas.

Exemplos:

- Dinheiro;
- PIX;
- Cartão de Débito;
- Cartão de Crédito.

Essa funcionalidade reduz significativamente o tempo de atendimento.

---

## Adicionar produto diretamente ao carrinho

Ao selecionar um produto, ele é automaticamente incluído no carrinho de compras.

Quando essa opção estiver desabilitada, o operador poderá configurar previamente:

- quantidade;
- desconto;
- acréscimo;
- observações.

---

## Solicitar CPF/CNPJ ao iniciar a venda

Permite que o sistema solicite a identificação do consumidor antes da inclusão dos produtos.

Essa configuração é indicada para empresas que normalmente emitem documentos fiscais identificados.

---

## Separar produtos iguais

Controla a forma como itens repetidos são registrados.

### Desabilitado

Produtos iguais são agrupados em uma única linha.

Exemplo:

```text
Hambúrguer      Quantidade: 3
```

### Habilitado

Cada unidade é registrada individualmente.

```text
Hambúrguer

Hambúrguer

Hambúrguer
```

Essa configuração é especialmente útil para restaurantes, permitindo que cada item possua observações próprias.

Exemplo:

- sem cebola;
- bem passado;
- adicional de queijo;
- sem molho.

---

# Configurações da Venda

O PDV SmartPOS permite habilitar individualmente diversos recursos operacionais.

Entre eles:

- desconto na venda;
- desconto por item;
- acréscimo na venda;
- acréscimo por item;
- alteração de quantidade;
- cancelamento de itens;
- inclusão de observações;
- alteração de cliente;
- alteração de vendedor;
- pedidos de venda;
- devolução de itens.

Cada empresa pode disponibilizar apenas os recursos necessários ao seu processo operacional.

---

# Documentos Fiscais

Define quais documentos poderão ser emitidos pelo PDV SmartPOS.

Dependendo do perfil da empresa podem ser habilitados:

- NFC-e;
- NF-e;
- NFS-e.

O aplicativo adapta automaticamente o fluxo de venda conforme o documento configurado.

---

# Impressão

O módulo de impressão permite configurar quais documentos serão emitidos automaticamente ao final das operações.

Entre eles:

## Comprovante da Venda

Impressão do comprovante comercial da operação.

---

## Comprovante Fiscal

Impressão do documento fiscal emitido.

---

## Comprovantes TEF

Permite controlar separadamente:

- Via do Cliente;
- Via do Estabelecimento.

Também é possível definir se cada comprovante deverá ser apresentado para confirmação antes da impressão.

---

## Impressão de Produção

Quando utilizada em restaurantes ou operações semelhantes, o PDV SmartPOS pode imprimir automaticamente:

- comandas;
- fichas de produção;
- pedidos para cozinha;
- pedidos para impressoras remotas.

---

# Gestão de Mesas

Quando o módulo de restaurante estiver habilitado, tornam-se disponíveis configurações específicas.

Entre elas:

- habilitar gestão de mesas;
- quantidade de mesas disponíveis.

Essas informações são utilizadas para montar automaticamente o mapa de mesas apresentado ao operador.

---

# Informações do Terminal

Ao final da tela são exibidas informações da instalação atual.

Entre elas:

- Empresa;
- CPF/CNPJ;
- Número do PDV;
- Número de série do equipamento;
- E-mail;
- Versão do aplicativo.

Essas informações auxiliam processos de suporte e auditoria.

---

# Encerramento da Sessão

O operador pode encerrar sua sessão diretamente pela tela de configurações.

Após o encerramento, uma nova autenticação será necessária para utilização do sistema.

---

# Configuração por Recursos

Uma das principais características do PDV SmartPOS é sua arquitetura baseada em parametrização.

O mesmo aplicativo pode atender diferentes modelos de negócio apenas habilitando ou desabilitando funcionalidades.

Exemplos:

## Comércio

- Venda convencional.
- NFC-e.
- PIX.
- Cartão.

---

## Restaurante

- Mesas.
- Produção.
- Observações por item.
- Impressão na cozinha.

---

## Prestador de Serviços

- Cadastro de clientes.
- NFS-e.
- Recebimentos.
- Histórico de serviços.

---

## Atendimento Externo

- Mobilidade.
- NF-e.
- PIX.
- Operação Offline.

---

# Benefícios

A configuração por parametrização oferece diversas vantagens.

- Um único aplicativo para diferentes segmentos.
- Redução da complexidade operacional.
- Menor custo de implantação.
- Interface adaptada ao perfil da empresa.
- Menor curva de aprendizado.
- Atualização simplificada.
- Maior flexibilidade operacional.

---

# Conclusão

O módulo de configuração permite adaptar completamente o comportamento do **PDV SmartPOS** sem necessidade de customizações ou versões específicas.

Essa abordagem garante que empresas de diferentes segmentos utilizem exatamente o mesmo aplicativo, visualizando apenas os recursos compatíveis com sua operação.

Além de simplificar a implantação e o suporte, essa arquitetura baseada em parametrização contribui para uma experiência mais intuitiva e reduz a complexidade percebida pelo operador.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](03-VENDAS.md)
---
**Navegacao:** [Anterior](01-ARQUITETURA.md) | [Inicio](../../README.md) | [Proximo](03-VENDAS.md)
<!-- NAVIGATION_FOOTER:END -->

