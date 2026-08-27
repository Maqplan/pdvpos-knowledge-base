---
title: O que é uma Facilitadora?
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](03-O-QUE-E-ADQUIRENTE.md) | [Próximo](05-O-QUE-E-GERENCIADOR-PADRAO.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / O que é Facilitadora
<!-- NAVIGATION:END -->

# O que é uma Facilitadora?

Uma facilitadora de pagamentos é uma empresa que simplifica o acesso dos estabelecimentos comerciais aos meios eletrônicos de pagamento.

Em vez de o comerciante negociar diretamente com cada adquirente, a facilitadora oferece uma solução integrada que reúne serviços, contratos e meios de pagamento em uma única plataforma.

Para o estabelecimento comercial, isso representa uma implantação mais simples e uma operação mais centralizada.

---

# Objetivo

Compreender o papel das facilitadoras dentro do ecossistema de pagamentos e como elas se relacionam com a arquitetura do ConnectTEF.

---

# Qual é o papel da facilitadora?

A facilitadora atua como intermediária entre o estabelecimento comercial e a infraestrutura financeira.

Dependendo do modelo de negócio, ela pode:

- disponibilizar terminais de pagamento;
- gerenciar credenciamento;
- oferecer serviços financeiros;
- concentrar múltiplos meios de pagamento;
- simplificar a contratação da solução.

Na prática, ela reduz a complexidade operacional para o comerciante.

---

# Fluxo simplificado

```text
Cliente

    │

    ▼

SmartPOS

    │

    ▼

Facilitadora

    │

    ▼

Adquirente

    │

    ▼

Instituição Financeira
```

O fluxo pode variar conforme o modelo operacional adotado pela facilitadora.

---

# Exemplos de facilitadoras

Dependendo do modelo comercial, algumas empresas oferecem soluções que simplificam o acesso aos meios de pagamento e aos terminais SmartPOS.

Essas empresas podem disponibilizar:

- equipamentos;
- credenciamento;
- gestão financeira;
- serviços adicionais;
- distribuição de SmartPOS.

Os modelos de operação variam entre os fornecedores e podem evoluir ao longo do tempo.

---

# Facilitadora × Adquirente

Embora muitas vezes sejam confundidas, facilitadoras e adquirentes possuem funções diferentes.

| Facilitadora | Adquirente |
|---------------|------------|
| Simplifica a contratação dos serviços | Processa e autoriza a transação financeira |
| Pode reunir diferentes serviços | Opera a infraestrutura de pagamento |
| Atua na experiência comercial | Atua na autorização financeira |
| Pode disponibilizar SmartPOS | Conecta-se às bandeiras e instituições financeiras |

Em alguns modelos de mercado, uma mesma empresa pode exercer mais de um desses papéis.

---

# Como o ConnectTEF trabalha com facilitadoras

O ConnectTEF foi desenvolvido para abstrair as diferenças existentes entre os diversos modelos de operação do mercado.

Independentemente de o estabelecimento operar diretamente com uma adquirente ou através de uma facilitadora, o ERP continua utilizando a mesma interface de integração.

Essa arquitetura reduz o impacto das diferenças comerciais e tecnológicas existentes entre os fornecedores.

---

# Benefícios

Ao utilizar o ConnectTEF:

- o ERP permanece independente do modelo comercial adotado;
- novas integrações podem ser incorporadas à plataforma;
- a evolução tecnológica acontece de forma centralizada;
- reduz-se a necessidade de adaptações específicas para cada parceiro.

---

# O papel da facilitadora no ecossistema ConnectTEF

```text
                ERP

                 │

                 ▼

           ConnectTEF

                 │

                 ▼

             SmartPOS

                 │

        ┌────────┴────────┐

        ▼                 ▼

 Facilitadora       Adquirente

        │                 │

        └────────┬────────┘

                 ▼

      Instituição Financeira
```

O ConnectTEF isola o sistema de gestão dessas diferenças, permitindo que a integração permaneça estável mesmo quando o modelo operacional varia.

---

# Resumo

Uma facilitadora simplifica o acesso dos estabelecimentos comerciais aos meios eletrônicos de pagamento, reunindo diferentes serviços em uma solução integrada.

O ConnectTEF foi projetado para operar independentemente do modelo adotado, permitindo que o ERP utilize uma única integração enquanto a plataforma gerencia as particularidades de cada parceiro do ecossistema.

---

# Próximo capítulo

No próximo capítulo conheceremos o **Gerenciador Padrão**, um importante mecanismo de compatibilidade que permite integrar sistemas legados baseados em troca de arquivos (INTPOS) sem necessidade de alterações no ERP.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é Gerenciador Padrão](05-O-QUE-E-GERENCIADOR-PADRAO.md)
---
**Navegação:** [Anterior](03-O-QUE-E-ADQUIRENTE.md) | [Início](../README.md) | [Próximo](05-O-QUE-E-GERENCIADOR-PADRAO.md)
<!-- NAVIGATION_FOOTER:END -->
