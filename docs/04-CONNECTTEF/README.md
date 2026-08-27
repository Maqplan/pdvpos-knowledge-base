---
title: ConnectTEF
classification: PUBLIC
owner: PDVPOS LTDA
version: "1.0"
last_updated: 2026-08-27
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
[README ConnectTEF](README.md) | [Índice da Seção](README.md) | Anterior | [Próximo](00-INTRODUCTION/README.md)
---
> **Caminho:** [Início](README.md) / ConnectTEF / README
<!-- NAVIGATION:END -->

# ConnectTEF

> Plataforma de integração para SmartPOS e meios de pagamento.

---

## Bem-vindo ao ConnectTEF

O ConnectTEF é uma plataforma desenvolvida para simplificar a integração entre sistemas de gestão (ERP, PDV, aplicativos e plataformas Web) e os principais SmartPOS disponíveis no mercado.

Ao invés de desenvolver integrações específicas para cada fabricante ou adquirente, o ConnectTEF oferece uma camada única de comunicação, permitindo que o sistema realize apenas uma integração e passe a operar com diversos dispositivos homologados.

Essa abordagem reduz custos de desenvolvimento, diminui a complexidade da manutenção e permite que novas homologações sejam disponibilizadas sem alterações no ERP.

---

# O que você encontrará nesta documentação

Esta documentação foi desenvolvida para atender diferentes públicos:

- Desenvolvedores
- Software Houses
- Revendas
- Integradores
- Equipes Técnicas
- Equipes Comerciais

Além da documentação técnica, esta base de conhecimento apresenta conceitos, arquitetura, recursos da plataforma, boas práticas e orientações para implantação.

---

# O ecossistema ConnectTEF

```text
                 ERP / PDV / Aplicativo

                          │

                          ▼

                     ConnectTEF

                          │

        ┌─────────────────┼──────────────────┐

        ▼                 ▼                  ▼

    SmartPOS         Adquirentes       Facilitadoras

                          │

                          ▼

                     Consumidor Final
```

O ConnectTEF atua como uma camada de integração entre o sistema de gestão e o ecossistema de pagamentos, abstraindo as diferenças entre fabricantes, adquirentes e modelos de SmartPOS.

---

# Principais Benefícios

- Uma única integração para diversos SmartPOS.
- Compatibilidade com múltiplos fabricantes homologados.
- Integração com aplicações Desktop, Web e Android.
- Operação online e offline.
- APIs modernas e documentação completa.
- Compatibilidade com integrações legadas.
- Evolução contínua da plataforma.

---

# Formas de Integração

O ConnectTEF foi desenvolvido para atender diferentes cenários de integração.

Entre as opções disponíveis estão:

- API REST
- API Local
- Provider Android
- Android Intent
- Gerenciador Padrão (INTPOS)
- Compatibilidade com SiTef
- Compatibilidade com integrações Elgin
- SDKs e APIs específicas

Cada modalidade é apresentada em detalhes ao longo desta documentação.

---

# Recursos da Plataforma

Além do processamento de pagamentos, o ConnectTEF disponibiliza diversos recursos adicionais.

Entre eles:

- Pagamentos
- Cancelamentos
- Reimpressão
- Operação Offline
- Marketing na SmartPOS
- Captura de CPF
- Captura de Telefone
- Captura de E-mail
- Pesquisa de Satisfação (NPS)
- Leitor de Código de Barras
- Impressão
- Integração com Delivery
- Integração com Sistemas de Mesa

---

# Como utilizar esta documentação

Recomendamos a seguinte sequência de leitura:

1. Introdução
2. Conceitos
3. Arquitetura
4. Integrações
5. Recursos
6. FAQ
7. Por que ConnectTEF

---

# Estrutura da Documentação

```text
Introdução

↓

Conceitos

↓

Arquitetura

↓

Integrações

↓

Recursos

↓

FAQ

↓

Por que ConnectTEF
```

---

# Para quem esta plataforma é indicada

O ConnectTEF foi desenvolvido para empresas que desejam integrar meios de pagamento de forma padronizada, reduzindo custos de manutenção e acelerando a evolução de seus sistemas.

Entre os principais públicos estão:

- ERPs
- PDVs
- Aplicativos Android
- Plataformas Web
- Software Houses
- Integradores
- Revendas White Label
- Empresas de Automação Comercial

---

# Filosofia da Plataforma

O ConnectTEF foi projetado para desacoplar o sistema de gestão da evolução do ecossistema de pagamentos.

Enquanto fabricantes, adquirentes e dispositivos evoluem continuamente, o ERP permanece estável, mantendo uma única integração com a plataforma.

Essa arquitetura reduz retrabalho, simplifica implantações e permite que novos dispositivos sejam incorporados ao ecossistema sem necessidade de alterações no software do cliente.

---

# Próximo passo

Recomendamos iniciar a leitura pelo capítulo:

**00 - Introdução**

Nele serão apresentados os conceitos fundamentais da plataforma, sua arquitetura e os princípios que orientam o funcionamento do ConnectTEF.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](README.md)
- [README](00-INTRODUCTION/README.md)
---
**Navegação:** Anterior | [Início](README.md) | [Próximo](00-INTRODUCTION/README.md)
<!-- NAVIGATION_FOOTER:END -->
