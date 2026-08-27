---
title: Glossário
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](11-O-QUE-E-API-REST.md) | [Próximo](../02-ARQUITETURA/README.md)
---

> **Caminho:** [Início](../README.md) / Conceitos / Glossário
<!-- NAVIGATION:END -->

# Glossário

Este glossário reúne os principais termos utilizados ao longo da documentação do ConnectTEF.

Seu objetivo é facilitar a consulta rápida de conceitos relacionados ao ecossistema de pagamentos, SmartPOS e formas de integração suportadas pela plataforma.

---

# Como utilizar

Sempre que encontrar um termo desconhecido durante a leitura da documentação, consulte este glossário.

Cada definição apresenta uma descrição resumida e, quando aplicável, um link para o capítulo correspondente.

---

# Plataforma ConnectTEF

| Termo | Descrição |
|--------|-----------|
| **ConnectTEF** | Plataforma de integração entre sistemas de gestão e o ecossistema de pagamentos. |
| **Ecossistema ConnectTEF** | Conjunto de componentes integrados pela plataforma, incluindo SmartPOS, APIs, adquirentes e recursos operacionais. |
| **Camada de Abstração** | Arquitetura utilizada pelo ConnectTEF para desacoplar o ERP das tecnologias de pagamento. |

---

# Pagamentos

| Termo | Descrição |
|--------|-----------|
| **TEF** | Mecanismo de comunicação entre sistemas de gestão e meios eletrônicos de pagamento. |
| **Transação** | Operação financeira realizada entre o estabelecimento e o cliente. |
| **Autorização** | Resposta emitida pela infraestrutura financeira aprovando ou recusando uma transação. |
| **Cancelamento** | Operação utilizada para desfazer uma transação previamente autorizada. |
| **Comprovante** | Documento emitido após a conclusão de uma transação. |

---

# Equipamentos

| Termo | Descrição |
|--------|-----------|
| **SmartPOS** | Terminal inteligente baseado em Android utilizado para pagamentos e automação comercial. |
| **Terminal de Pagamento** | Equipamento responsável pela interação com o cliente durante uma operação financeira. |
| **PinPad** | Dispositivo utilizado para captura de cartões em arquiteturas tradicionais de TEF. |

---

# Participantes do Ecossistema

| Termo | Descrição |
|--------|-----------|
| **Adquirente** | Empresa responsável pelo processamento e autorização das transações financeiras. |
| **Facilitadora** | Empresa que simplifica o acesso dos estabelecimentos aos meios de pagamento. |
| **Instituição Financeira** | Banco ou emissor responsável pela autorização final da transação. |
| **Estabelecimento Comercial** | Empresa que utiliza o ConnectTEF para receber pagamentos. |

---

# Integrações

| Termo | Descrição |
|--------|-----------|
| **API REST** | Interface HTTP recomendada para aplicações Web, SaaS e integrações modernas. |
| **API Local** | Interface HTTP executada localmente para integração de aplicações Desktop. |
| **Provider Android** | Mecanismo nativo do Android para integração entre aplicações. |
| **Android Intent** | Comunicação baseada em ações entre aplicativos Android. |
| **Gerenciador Padrão** | Camada de compatibilidade para sistemas baseados em INTPOS. |
| **INTPOS** | Padrão tradicional de comunicação por troca de arquivos. |
| **SiTef** | Arquitetura de TEF amplamente utilizada no mercado brasileiro. |

---

# Recursos da Plataforma

| Termo | Descrição |
|--------|-----------|
| **Operação Offline** | Recurso que permite continuidade operacional em cenários específicos de indisponibilidade. |
| **Marketing na SmartPOS** | Exibição de campanhas e mensagens diretamente no terminal. |
| **Pesquisa NPS** | Coleta de satisfação do cliente ao final da operação. |
| **Captura de CPF** | Recurso para obtenção do CPF do consumidor durante a venda. |
| **Captura de Telefone** | Coleta do telefone do consumidor durante a operação. |
| **Captura de E-mail** | Coleta do e-mail do consumidor diretamente no SmartPOS. |
| **Fila de Cobranças** | Gerenciamento de operações pendentes para processamento posterior. |
| **Impressão** | Recurso para emissão de comprovantes e documentos. |
| **Leitor de Código de Barras** | Funcionalidade para captura de códigos diretamente no SmartPOS. |

---

# Arquitetura

| Termo | Descrição |
|--------|-----------|
| **ERP** | Sistema de gestão empresarial integrado ao ConnectTEF. |
| **PDV** | Sistema responsável pela operação de vendas no ponto de venda. |
| **Middleware** | Camada intermediária responsável por integrar diferentes sistemas. |
| **API** | Interface utilizada para comunicação entre aplicações. |
| **HTTP** | Protocolo utilizado para comunicação entre sistemas. |
| **JSON** | Formato de troca de informações utilizado pelas APIs do ConnectTEF. |

---

# Compatibilidade

| Termo | Descrição |
|--------|-----------|
| **Sistema Legado** | Aplicação desenvolvida antes das arquiteturas modernas de integração. |
| **Homologação** | Processo de validação de equipamentos e integrações. |
| **Fabricante** | Empresa responsável pela produção dos SmartPOS homologados. |
| **Compatibilidade** | Capacidade do ConnectTEF de operar com diferentes tecnologias e arquiteturas. |

---

# Abreviações

| Sigla | Significado |
|--------|-------------|
| API | Application Programming Interface |
| ERP | Enterprise Resource Planning |
| PDV | Ponto de Venda |
| POS | Point of Sale |
| SmartPOS | Smart Point of Sale |
| TEF | Transferência Eletrônica de Fundos |
| HTTP | HyperText Transfer Protocol |
| JSON | JavaScript Object Notation |
| NFC | Near Field Communication |
| NPS | Net Promoter Score |

---

# Consulte também

Caso deseje aprofundar qualquer conceito, consulte os capítulos específicos da seção **Conceitos**.

Cada termo apresentado neste glossário possui uma documentação detalhada explicando seu funcionamento, aplicação e relação com o ecossistema ConnectTEF.

---

# Resumo

O Glossário reúne os principais conceitos utilizados ao longo da documentação do ConnectTEF, funcionando como uma referência rápida para desenvolvedores, parceiros e equipes técnicas durante a implementação da plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [README](../02-ARQUITETURA/README.md)
---
**Navegação:** [Anterior](11-O-QUE-E-API-REST.md) | [Início](../README.md) | [Próximo](../02-ARQUITETURA/README.md)
<!-- NAVIGATION_FOOTER:END -->
