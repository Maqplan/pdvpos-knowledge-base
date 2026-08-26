---
title: PDV Desktop - Sincronização
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
[README principal](../../README.md) | [Indice da documentacao](README.md) | [Anterior](07-PRODUCAO.md) | [Proximo](09-DOCUMENTOS-FISCAIS.md)
---
> **Caminho:** [Inicio](../../README.md) / [PDV Desktop](README.md) / 08 SINCRONIZACAO
<!-- NAVIGATION:END -->

# PDV Desktop

> Official Product Documentation

# 10 - Sincronização

---

# Objetivo

O módulo de Sincronização é responsável por manter o PDV Desktop integrado ao ERP de forma automática, segura e transparente.

Sua arquitetura foi desenvolvida para garantir que a operação da loja permaneça disponível mesmo durante falhas de comunicação, utilizando o conceito **Offline First**.

O operador continua trabalhando normalmente enquanto o sistema sincroniza os dados em segundo plano.

---

## Recursos abordados neste capítulo

- Arquitetura Offline First
- Banco de dados local
- Serviço de sincronização
- Sincronização assíncrona
- Sincronização incremental
- Envio prioritário de vendas
- Recuperação automática
- Integração com ERP
- Operação sem internet
- Continuidade operacional

---

# Visão Geral

Cada instalação do PDV Desktop possui sua própria base de dados local.

Isso permite que todas as operações da loja ocorram com alto desempenho, independentemente da qualidade da conexão com a internet.

A integração com o ERP acontece através de um serviço de sincronização executado em segundo plano.

---

# Arquitetura

```text
                    ERP WEB

                       │

             Serviço de Sincronização

                       │

        ┌──────────────┼──────────────┐

        ▼              ▼              ▼

     PDV 01         PDV 02         PDV 03

        │              │              │

        └──────────────┼──────────────┘

                 Banco Local
```

Cada terminal trabalha de forma independente.

---

# Arquitetura Offline First

O PDV Desktop foi desenvolvido seguindo o conceito **Offline First**.

Isso significa que a operação da loja não depende da internet.

Mesmo sem conexão continuam disponíveis:

- abertura de caixa;
- vendas;
- pedidos;
- mesas;
- comandas;
- delivery;
- encomendas;
- pagamentos;
- consultas;
- relatórios locais;
- NFC-e em contingência.

A indisponibilidade da internet não interrompe a operação.

---

# Banco de Dados Local

Cada PDV possui uma base própria.

Essa arquitetura proporciona:

- alta velocidade;
- baixa latência;
- independência da rede;
- maior estabilidade.

Todo o processamento ocorre localmente.

---

# Serviço de Sincronização

O sincronizador trabalha continuamente realizando a comunicação entre o ERP e os PDVs.

Ele executa duas funções principais:

## Receber atualizações do ERP

Como:

- produtos;
- preços;
- clientes;
- promoções;
- usuários;
- configurações.

---

## Enviar movimentações do PDV

Como:

- vendas;
- pedidos;
- operações de caixa;
- movimentações financeiras;
- documentos fiscais.

---

# Sincronização Assíncrona

A sincronização ocorre em segundo plano.

O operador continua utilizando normalmente o sistema enquanto as informações são transmitidas.

Não existe necessidade de interromper a operação.

---

# Intervalo de Sincronização

O intervalo é configurável.

Configuração padrão:

- 30 minutos.

Configuração mínima:

- 5 minutos.

Cada empresa pode definir a periodicidade mais adequada à sua operação.

---

# Sincronização Incremental

O sistema transmite apenas os registros alterados.

Isso reduz:

- tráfego de rede;
- consumo de internet;
- tempo de sincronização.

Não existe necessidade de reenviar toda a base de dados.

---

# Envio Prioritário das Vendas

Embora a sincronização geral ocorra em intervalos configuráveis, as vendas possuem tratamento especial.

Quando existe comunicação com o ERP:

- cada venda é enviada automaticamente logo após sua conclusão.

Isso permite acompanhamento praticamente em tempo real.

---

# Operação Offline

Quando ocorre perda da comunicação:

- as vendas permanecem registradas localmente;
- pedidos continuam funcionando;
- caixas permanecem abertos;
- impressões continuam disponíveis;
- documentos fiscais seguem as regras de contingência.

O operador não precisa alterar seu fluxo de trabalho.

---

# Recuperação Automática

Quando a comunicação retorna, o sincronizador identifica automaticamente os registros pendentes.

São transmitidos:

- vendas;
- pedidos;
- movimentações de caixa;
- documentos fiscais;
- demais registros pendentes.

Nenhuma intervenção do usuário é necessária.

---

# Integração com o ERP

O sincronizador mantém o ERP atualizado automaticamente.

Entre as informações sincronizadas estão:

- produtos;
- clientes;
- usuários;
- estoque;
- vendas;
- pedidos;
- operações de caixa;
- documentos fiscais;
- configurações.

---

# Segurança

Cada sincronização registra:

- data;
- horário;
- terminal;
- quantidade de registros;
- situação da operação.

Essas informações facilitam auditorias e diagnósticos.

---

# Benefícios

- Operação Offline First.
- Alta disponibilidade.
- Banco de dados local.
- Sincronização automática.
- Baixo consumo de internet.
- Atualização incremental.
- Recuperação automática.
- Integração transparente com o ERP.
- Continuidade operacional.

---

# Casos de Uso

## Loja em Shopping

Mesmo durante falhas da internet do shopping, o caixa continua operando normalmente.

---

## Supermercados

Centenas de vendas podem ocorrer durante períodos sem conexão.

Quando a internet retorna, todas as informações são sincronizadas automaticamente.

---

## Redes de Lojas

Cada filial continua operando independentemente das demais.

---

## Lojas do Interior

Mesmo utilizando conexões instáveis, a operação permanece contínua.

---

# Diferenciais

A arquitetura de sincronização do PDV Desktop foi projetada para oferecer o desempenho de uma aplicação local combinado com os benefícios da gestão centralizada.

Ao utilizar banco de dados local, sincronização assíncrona e envio incremental de informações, o sistema elimina a dependência constante da internet sem comprometer a integração com o ERP.

Essa abordagem reduz indisponibilidades, melhora a experiência do operador e garante maior confiabilidade para empresas com uma ou várias unidades.

---

# Próximo Capítulo

**11 - Documentos Fiscais**

Conheça os recursos de emissão fiscal do PDV Desktop, incluindo NFC-e, NF-e, NFS-e, contingência offline e integração automática com o ERP.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja tambem
- [README principal](../../README.md)
- [Indice da documentacao](README.md)
- [Proximo](09-DOCUMENTOS-FISCAIS.md)
---
**Navegacao:** [Anterior](07-PRODUCAO.md) | [Inicio](../../README.md) | [Proximo](09-DOCUMENTOS-FISCAIS.md)
<!-- NAVIGATION_FOOTER:END -->

