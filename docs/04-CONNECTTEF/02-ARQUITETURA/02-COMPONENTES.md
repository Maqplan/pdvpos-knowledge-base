---
title: Componentes da Arquitetura
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](01-VISAO-GERAL.md) | [Próximo](03-FLUXO-DE-PAGAMENTO.md)
---
> **Caminho:** [Início](../README.md) / Arquitetura / Componentes
<!-- NAVIGATION:END -->

# Componentes da Arquitetura

O ConnectTEF foi desenvolvido utilizando uma arquitetura modular.

Cada componente possui uma responsabilidade específica dentro da plataforma, permitindo evolução contínua, baixo acoplamento e facilidade de manutenção.

Essa separação torna possível adicionar novos recursos e novas formas de integração sem alterar a arquitetura do ERP.

---

# Objetivo

Apresentar os principais componentes do ConnectTEF, suas responsabilidades e como eles colaboram para formar uma plataforma única de integração com o ecossistema de pagamentos.

---

# Visão Geral

```text
                  ERP / PDV
                      │
                      ▼
               ConnectTEF Core
                      │
      ┌───────────────┼────────────────┐
      ▼               ▼                ▼
 Integrações     Compatibilidade    Recursos
      │               │                │
      └───────────────┼────────────────┘
                      ▼
                 Comunicação
                      │
                      ▼
                  SmartPOS
                      │
                      ▼
             Ecossistema Financeiro
```

Cada componente possui uma função bem definida.

---

# ConnectTEF Core

O Core é o núcleo da plataforma.

É responsável por coordenar todas as operações realizadas pelo ConnectTEF.

Entre suas responsabilidades estão:

- receber solicitações;
- validar operações;
- controlar o fluxo das transações;
- encaminhar requisições;
- padronizar respostas;
- coordenar os demais módulos.

Todo processamento passa pelo Core.

---

# Módulo de Integração

É a porta de entrada da plataforma.

Permite que diferentes tecnologias utilizem exatamente a mesma infraestrutura.

As principais formas de integração são:

- API REST;
- API Local;
- Provider Android;
- Android Intent;
- Gerenciador Padrão;
- Compatibilidade SiTef.

Independentemente da tecnologia utilizada, todas convergem para o mesmo fluxo interno.

---

# Módulo de Compatibilidade

Responsável por preservar investimentos realizados em sistemas legados.

Suporta arquiteturas tradicionais como:

- INTPOS;
- troca de arquivos;
- Gerenciador Padrão;
- integrações compatíveis com SiTef.

Esse módulo permite migrar para SmartPOS modernos com impacto mínimo no ERP.

---

# Módulo de Comunicação

É responsável pela comunicação entre o ConnectTEF e os dispositivos homologados.

Entre suas funções estão:

- localizar dispositivos;
- enviar comandos;
- acompanhar transações;
- receber respostas;
- tratar falhas de comunicação.

Essa camada abstrai as diferenças entre fabricantes.

---

# Módulo SmartPOS

Representa os dispositivos homologados pela plataforma.

Cada fabricante possui particularidades próprias.

O ConnectTEF padroniza essa comunicação para que o ERP nunca precise conhecer essas diferenças.

Novos dispositivos podem ser incorporados sem alterar a integração existente.

---

# Módulo de Recursos

Além dos pagamentos, o ConnectTEF disponibiliza diversos recursos operacionais.

Exemplos:

- Pagamentos;
- Cancelamentos;
- Reimpressão;
- Operação Offline;
- Marketing;
- Captura de CPF;
- Captura de Telefone;
- Captura de E-mail;
- Pesquisa NPS;
- Impressão;
- Leitor de Código de Barras;
- Fila de Cobranças.

Todos esses recursos utilizam a mesma arquitetura.

---

# Módulo de Monitoramento

Responsável pelo acompanhamento operacional da plataforma.

Permite:

- registrar eventos;
- acompanhar transações;
- facilitar diagnósticos;
- apoiar o suporte técnico;
- gerar informações para auditoria.

Esse módulo contribui para aumentar a confiabilidade da operação.

---

# Módulo de Segurança

Toda comunicação realizada pelo ConnectTEF segue mecanismos de segurança definidos pela plataforma.

Esse componente é responsável por:

- autenticação;
- autorização;
- validação de requisições;
- integridade das mensagens;
- proteção da comunicação entre os componentes.

Os detalhes de implementação são apresentados no capítulo **Segurança**.

---

# Como os componentes interagem

Durante uma transação, os componentes colaboram da seguinte forma.

```text
ERP

 │

 ▼

Integração

 │

 ▼

Core

 │

 ▼

Compatibilidade (quando necessário)

 │

 ▼

Comunicação

 │

 ▼

SmartPOS

 │

 ▼

Adquirente

 │

 ▼

Resposta

 │

 ▼

Core

 │

 ▼

ERP
```

Essa arquitetura garante que todos os fluxos utilizem o mesmo modelo operacional.

---

# Benefícios da arquitetura modular

A separação em componentes oferece diversas vantagens.

- evolução independente de cada módulo;
- menor acoplamento;
- facilidade de manutenção;
- inclusão de novos recursos;
- suporte a novas tecnologias;
- maior estabilidade;
- melhor escalabilidade.

---

# Responsabilidade de cada componente

| Componente | Responsabilidade |
|------------|------------------|
| ConnectTEF Core | Coordena toda a plataforma |
| Integrações | Recebe solicitações do ERP |
| Compatibilidade | Suporte a sistemas legados |
| Comunicação | Conecta-se aos SmartPOS |
| SmartPOS | Executa as operações no terminal |
| Recursos | Funcionalidades adicionais da plataforma |
| Monitoramento | Logs, eventos e diagnóstico |
| Segurança | Autenticação, autorização e integridade |

---

# Filosofia da arquitetura

Cada componente possui uma única responsabilidade.

Essa separação permite que a plataforma evolua continuamente sem alterar o contrato de integração utilizado pelos sistemas.

O ERP permanece desacoplado da infraestrutura de pagamentos, enquanto o ConnectTEF absorve a complexidade das integrações, homologações e evolução tecnológica.

---

# Resumo

A arquitetura do ConnectTEF é composta por módulos especializados que trabalham de forma integrada para oferecer uma plataforma única de comunicação com o ecossistema de pagamentos.

Essa organização reduz a complexidade da integração, facilita a manutenção e permite incorporar novos recursos e tecnologias sem impactar os sistemas já integrados.

---

# Próximo capítulo

No próximo capítulo acompanharemos uma transação completa dentro do ConnectTEF, entendendo como cada componente participa do fluxo de processamento desde a solicitação do ERP até a resposta final da operação.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Fluxo de Pagamento](03-FLUXO-DE-PAGAMENTO.md)
---
**Navegação:** [Anterior](01-VISAO-GERAL.md) | [Início](../README.md) | [Próximo](03-FLUXO-DE-PAGAMENTO.md)
<!-- NAVIGATION_FOOTER:END -->
