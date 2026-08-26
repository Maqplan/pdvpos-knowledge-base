---
title: PDV Desktop - Arquitetura
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](00-APRESENTACAO.md) | [Proximo](02-OPERACAO-DE-CAIXA.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 01 ARQUITETURA
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 01 - Arquitetura

---

# Objetivo

Este documento apresenta a arquitetura do PDV Desktop e os conceitos que sustentam sua alta disponibilidade, desempenho e escalabilidade.

O PDV Desktop foi desenvolvido para operar de forma distribuída, permitindo que cada terminal funcione de maneira independente, mantendo sincronização automática com o ERP e garantindo continuidade operacional mesmo diante de falhas de equipamentos ou indisponibilidade da internet.

---

# Princípios Arquiteturais

A arquitetura da plataforma é baseada em cinco pilares fundamentais.

- Arquitetura Distribuída
- Banco de Dados Local por Terminal
- Operação Offline First
- Sincronização Inteligente
- Motor Transacional Unificado

Esses conceitos permitem que o sistema atenda desde pequenas lojas até redes com dezenas de caixas utilizando a mesma arquitetura.

---

# Arquitetura Geral

```text
                           ERP WEB

                              │

                       API de Integração

                              │

                     Serviço de Sincronização

                              │

        ┌─────────────────────┼─────────────────────┐

        ▼                     ▼                     ▼

   +------------+       +------------+       +------------+

   |  PDV 01    |       |  PDV 02    |       |  PDV 03    |

   | Banco Local|       | Banco Local|       | Banco Local|

   +------------+       +------------+       +------------+

        │                     │                     │

        ▼                     ▼                     ▼

 Operação Local        Operação Local        Operação Local
```

Cada PDV opera independentemente dos demais.

---

# Arquitetura Distribuída

Ao contrário dos modelos tradicionais de automação comercial, onde todos os caixas dependem de um único servidor local, o PDV Desktop utiliza uma arquitetura distribuída.

Cada terminal possui sua própria base de dados e executa localmente todas as operações necessárias ao atendimento.

Isso elimina gargalos e reduz significativamente os pontos únicos de falha da operação.

---

# Banco de Dados Local por Terminal

Cada instalação do PDV possui seu próprio banco de dados.

Essa abordagem proporciona:

- alto desempenho;
- baixa latência;
- independência da rede;
- maior estabilidade operacional.

Todo o processamento da venda ocorre localmente, sem necessidade de consultar continuamente um servidor central.

---

# Independência entre os PDVs

Cada terminal funciona como uma estação independente.

Caso um computador apresente falha de hardware, desligamento inesperado ou necessidade de manutenção, apenas aquele equipamento será afetado.

Os demais caixas continuam operando normalmente.

Isso significa que continuam disponíveis:

- abertura de caixa;
- vendas;
- pedidos;
- mesas e comandas;
- delivery;
- pagamentos;
- impressão;
- emissão fiscal;
- sincronização.

Essa característica aumenta significativamente a disponibilidade da operação.

---

# Comparativo Arquitetural

| Arquitetura Tradicional | PDV Desktop |
|--------------------------|-------------|
| Banco centralizado em servidor local | Banco próprio em cada terminal |
| Servidor é ponto único de falha | Cada PDV opera independentemente |
| Todos os caixas dependem da rede local | Cada terminal trabalha localmente |
| Gargalo em operações simultâneas | Processamento distribuído |
| Baixa tolerância a falhas | Alta disponibilidade |

---

# Operação Offline First

A operação do PDV não depende da disponibilidade da internet.

Mesmo sem comunicação com o ERP ou com serviços externos, o operador continua executando normalmente suas atividades.

Entre elas:

- abertura de caixa;
- vendas;
- pedidos;
- mesas;
- comandas;
- delivery;
- pagamentos;
- consultas;
- impressão;
- NFC-e em contingência.

Quando a comunicação retorna, os dados são sincronizados automaticamente.

---

# Sincronização Inteligente

A integração entre PDV e ERP ocorre através de um serviço de sincronização executado em segundo plano.

O sincronizador é responsável por:

## Receber informações do ERP

- produtos;
- preços;
- clientes;
- usuários;
- promoções;
- configurações.

## Enviar informações do PDV

- vendas;
- pedidos;
- movimentações financeiras;
- documentos fiscais;
- operações de caixa.

Toda a comunicação é transparente para o operador.

---

# Sincronização Incremental

O sincronizador transmite apenas os registros alterados.

Isso reduz:

- utilização da internet;
- tempo de sincronização;
- processamento.

As vendas possuem prioridade de envio sempre que houver comunicação disponível.

---

# Motor Transacional Unificado

Todos os módulos operacionais utilizam o mesmo motor de processamento.

Uma venda pode assumir diferentes comportamentos conforme o contexto operacional.

```text
Venda

 │

 ├──────────────┬─────────────┬─────────────┬─────────────┐

 ▼              ▼             ▼             ▼

Pedido       Orçamento      Mesa       Delivery

 │              │             │             │

 └──────────────┴─────────────┴─────────────┘

                    ▼

               Pagamento

                    ▼

          Documento Fiscal

                    ▼

             Sincronização ERP
```

Essa arquitetura elimina duplicidade de processos e reduz o tempo de treinamento.

---

# Escalabilidade

Novos terminais podem ser adicionados sem alterações estruturais na arquitetura.

O mesmo modelo atende:

- lojas individuais;
- redes varejistas;
- franquias;
- grupos empresariais.

Cada novo PDV passa a operar como um novo nó da arquitetura distribuída.

---

# Segurança Operacional

A arquitetura distribuída reduz significativamente os riscos operacionais.

Mesmo diante de:

- falha de um computador;
- indisponibilidade da internet;
- manutenção de um terminal;

os demais equipamentos permanecem operando normalmente.

Isso evita paralisações totais da loja.

---

# Benefícios

- Arquitetura distribuída.
- Banco de dados próprio em cada terminal.
- Alta disponibilidade.
- Eliminação de ponto único de falha.
- Operação Offline First.
- Sincronização automática.
- Alto desempenho.
- Escalabilidade horizontal.
- Integração transparente com o ERP.

---

# Diferenciais

A arquitetura do PDV Desktop foi concebida para oferecer a robustez de aplicações distribuídas aliada à simplicidade operacional exigida pelo varejo.

A combinação entre banco de dados local, independência entre terminais, sincronização inteligente e operação offline garante continuidade do negócio mesmo diante de falhas de equipamentos ou indisponibilidade da internet.

Essa abordagem elimina um dos principais problemas encontrados em arquiteturas tradicionais de automação comercial: a dependência de um servidor local centralizado.

---

# Próximo Capítulo

**02 - Configuração Inicial**

Conheça o assistente de configuração e descubra como o mesmo executável pode ser parametrizado para atender diferentes segmentos do varejo.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](02-OPERACAO-DE-CAIXA.md)
---
**Navegacao:** [Anterior](00-APRESENTACAO.md) | [Inicio](../../README.md) | [Proximo](02-OPERACAO-DE-CAIXA.md)
<!-- NAVIGATION_FOOTER:END -->

