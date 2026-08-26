---
title: PDV SmartPOS - Vendas
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](02-CONFIGURACAO.md) | [Proximo](04-CARRINHO.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV SmartPOS](README.md) / 03 VENDAS
<!-- NAVIGATION:END -->

# 03 - Vendas

O módulo de vendas do **PDV SmartPOS** foi desenvolvido para oferecer uma experiência extremamente rápida, intuitiva e totalmente otimizada para dispositivos Android SmartPOS.

Toda a operação foi concebida para minimizar a quantidade de toques necessários durante o atendimento, permitindo que o operador realize vendas completas, receba pagamentos, emita documentos fiscais e inicie uma nova venda em poucos segundos.

Além da venda convencional, o sistema suporta pedidos de venda, operação "Papa Fila", múltiplas formas de pagamento, emissão de documentos fiscais e funcionamento totalmente offline.

---

## Objetivo

Apresentar o fluxo completo de vendas do **PDV SmartPOS**, desde a seleção dos produtos até a emissão do documento fiscal e impressão dos comprovantes.

---

# Fluxo Geral da Venda

O processo de venda segue um fluxo contínuo.

```text
Nova Venda

      │

      ▼

Selecionar Grupo

      │

      ▼

Selecionar Produto

      │

      ▼

Carrinho

      │

      ▼

Pagamento

      │

      ▼

Documento Fiscal

      │

      ▼

Impressão

      │

      ▼

Nova Venda
```

Todo o processo ocorre de forma integrada e transparente para o operador.

---

# Navegação por Grupos

Ao iniciar uma venda, o **PDV SmartPOS** apresenta os grupos de produtos cadastrados.

Essa organização facilita a localização dos produtos e reduz o tempo de atendimento.

Exemplos de grupos:

- Bebidas;
- Lanches;
- Conveniência;
- Açougue;
- Padaria;
- Serviços.

A quantidade de grupos depende da estrutura cadastrada no ERP.

---

# Produtos Favoritos

Além da navegação por grupos, o sistema disponibiliza uma área dedicada aos produtos favoritos.

Essa funcionalidade permite acesso imediato aos itens de maior giro, eliminando a necessidade de navegar por categorias.

É especialmente útil para:

- cafeterias;
- padarias;
- conveniências;
- restaurantes;
- operações de grande volume.

---

# Pesquisa de Produtos

Quando necessário, o operador pode localizar produtos utilizando a pesquisa integrada.

A pesquisa suporta consultas por:

- descrição;
- código interno;
- código de barras.

Os resultados são apresentados instantaneamente.

---

# Identificação do Cliente

Dependendo da configuração da empresa, o **PDV SmartPOS** poderá solicitar a identificação do consumidor antes do início da venda.

É possível informar:

- CPF;
- CNPJ.

Essa identificação pode ser utilizada para:

- emissão de documentos fiscais;
- identificação da venda;
- histórico de compras;
- programas de fidelidade.

Quando permitido pelas configurações, a venda também poderá prosseguir sem identificação do cliente.

---

# Inclusão de Produtos

Ao selecionar um produto, o sistema permite configurar seus parâmetros antes da inclusão no carrinho.

Entre eles:

- quantidade;
- desconto;
- acréscimo;
- observações.

Após a confirmação, o produto é imediatamente adicionado à venda.

---

# Desconto e Acréscimo por Item

Cada item pode receber descontos ou acréscimos individualmente.

São suportadas duas modalidades.

## Valor

Aplicação de um valor fixo.

Exemplo:

```text
Desconto

R$ 5,00
```

---

## Percentual

Aplicação de um percentual sobre o valor do item.

Exemplo:

```text
10%
```

Todos os cálculos são atualizados automaticamente.

---

# Carrinho de Compras

O carrinho apresenta todos os itens incluídos na venda.

Para cada item é possível:

- alterar quantidade;
- editar observações;
- aplicar descontos;
- aplicar acréscimos;
- remover o item.

Também são exibidos:

- subtotal;
- descontos;
- acréscimos;
- valor total.

---

# Venda por Quantidade

Produtos repetidos podem ser agrupados em uma única linha.

Exemplo:

```text
Água Mineral

Quantidade: 10
```

Essa modalidade reduz o espaço ocupado no carrinho.

---

# Venda Individual de Itens

O **PDV SmartPOS** também permite registrar cada unidade separadamente.

Exemplo:

```text
Hambúrguer

Hambúrguer

Hambúrguer
```

Cada item passa a possuir informações próprias.

Essa abordagem é ideal para operações de alimentação.

Exemplos:

- hambúrguer sem cebola;
- carne bem passada;
- pizza meia calabresa;
- pizza meia portuguesa;
- adicional de queijo.

Cada unidade mantém suas próprias observações.

---

# Observações do Item

Cada produto pode receber observações específicas.

Exemplos:

- sem cebola;
- sem sal;
- bem passado;
- retirar tomate;
- adicional de molho.

Essas informações acompanham o item durante toda a operação e podem ser utilizadas nas impressões de produção.

---

# Observações da Venda

Além das observações individuais dos produtos, o operador pode registrar observações gerais para toda a venda.

Exemplos:

- entregar após as 18h;
- cliente irá retirar;
- pagamento na entrega;
- prioridade de produção.

---

# Salvamento como Pedido de Venda

A qualquer momento a venda pode ser salva.

Nesse momento ela deixa de ser apenas um carrinho temporário e transforma-se em um Pedido de Venda.

Esse pedido é sincronizado automaticamente com o ERP.

Posteriormente ele poderá ser:

- editado;
- complementado;
- faturado;
- cancelado;
- finalizado.

A conclusão pode ocorrer:

- no próprio **PDV SmartPOS**;
- em outro **PDV SmartPOS**;
- no **PDV Desktop**;
- diretamente no ERP.

Essa arquitetura permite implementar operações de pré-venda e atendimento **Papa Fila** sem necessidade de redigitação.

---

# Formas de Pagamento

Após a confirmação da venda, o sistema apresenta as formas de pagamento disponíveis.

Entre elas:

- Dinheiro;
- PIX;
- Cartão de Crédito;
- Cartão de Débito;
- Voucher;
- Crediário;
- demais formas cadastradas.

---

# Botões de Pagamento Rápido

As formas de pagamento mais utilizadas podem ser apresentadas diretamente na tela de venda.

Esses atalhos são configuráveis e reduzem significativamente o tempo necessário para finalizar uma venda.

Exemplo:

- PIX;
- Dinheiro;
- Débito;
- Crédito.

---

# Pagamentos Múltiplos

Uma mesma venda pode ser recebida utilizando diversas formas de pagamento.

Exemplo:

```text
Venda

R$ 300,00

Dinheiro

R$ 100,00

PIX

R$ 150,00

Cartão

R$ 50,00
```

O sistema controla automaticamente o saldo restante até a quitação completa.

---

# Recebimento em Dinheiro

Quando a forma de pagamento é dinheiro, o operador informa o valor recebido.

O **PDV SmartPOS** calcula automaticamente:

- valor recebido;
- valor da venda;
- troco.

Essa funcionalidade reduz erros durante o atendimento.

---

# Emissão de Documentos Fiscais

Após a confirmação do pagamento, o sistema realiza automaticamente a emissão do documento fiscal correspondente.

Um dos grandes diferenciais do **PDV SmartPOS** é sua capacidade de emitir diferentes tipos de documentos fiscais diretamente no equipamento.

Dependendo da configuração da empresa, podem ser emitidos:

- NFC-e (Nota Fiscal de Consumidor Eletrônica);
- NF-e (Nota Fiscal Eletrônica);
- NFS-e (Nota Fiscal de Serviços Eletrônica).

Essa flexibilidade permite que o mesmo aplicativo seja utilizado por empresas do comércio, atacado e prestação de serviços, eliminando a necessidade de soluções específicas para cada segmento.

---

# Processamento da Venda

Após a confirmação do pagamento, o sistema executa automaticamente:

- gravação da venda;
- processamento financeiro;
- emissão do documento fiscal;
- impressão dos comprovantes;
- sincronização com o ERP.

Todo o processo ocorre de forma transparente para o operador.

---

# Impressão dos Comprovantes

Concluído o processamento da venda, o **PDV SmartPOS** apresenta a tela de impressão.

Dependendo das configurações, poderão ser impressos:

- comprovante da venda;
- comprovante fiscal;
- comprovante TEF;
- ficha de produção;
- comandas.

Após a impressão, o sistema retorna automaticamente para uma nova venda.

---

# Operação Offline

Todas as etapas da venda permanecem disponíveis mesmo sem conexão com a internet.

As informações são armazenadas no banco de dados local e sincronizadas automaticamente quando a comunicação for restabelecida.

Isso garante continuidade operacional e elimina interrupções no atendimento.

---

# Benefícios

O módulo de vendas do **PDV SmartPOS** oferece diversas vantagens operacionais.

- Interface totalmente touch.
- Navegação por grupos.
- Produtos favoritos.
- Pesquisa rápida.
- Identificação opcional do cliente.
- Venda por quantidade ou por unidades individuais.
- Observações por item e por venda.
- Desconto e acréscimo em valor ou percentual.
- Botões rápidos para pagamento.
- Múltiplas formas de pagamento.
- Cálculo automático de troco.
- Salvamento como pedido de venda.
- Integração total com ERP e PDV Desktop.
- Operação "Papa Fila".
- Emissão de NFC-e, NF-e e NFS-e.
- Funcionamento totalmente offline.
- Sincronização automática com o ERP.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](04-CARRINHO.md)
---
**Navegacao:** [Anterior](02-CONFIGURACAO.md) | [Inicio](../../README.md) | [Proximo](04-CARRINHO.md)
<!-- NAVIGATION_FOOTER:END -->

