<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice dos Conceitos](README.md) | [Anterior](05-O-QUE-E-GERENCIADOR-PADRAO.md) | [Próximo](07-O-QUE-E-SITEF.md)
---
> **Caminho:** [Início](../README.md) / [Conceitos](README.md) / O que é INTPOS
<!-- NAVIGATION:END -->

# O que é INTPOS?

INTPOS é um padrão de comunicação baseado em troca de arquivos utilizado por sistemas de gestão para realizar operações de pagamento.

Durante muitos anos, esse modelo foi amplamente adotado por ERPs e PDVs brasileiros, tornando-se um dos principais mecanismos de integração entre sistemas comerciais e soluções de TEF.

Ainda hoje, milhares de aplicações utilizam esse padrão em ambientes de produção.

---

# Objetivo

Compreender o funcionamento do padrão INTPOS, sua importância histórica e como o ConnectTEF mantém compatibilidade com sistemas que utilizam esse modelo.

---

# Por que o INTPOS surgiu?

Quando as primeiras soluções de TEF começaram a ser utilizadas em larga escala, muitas linguagens de programação e sistemas operacionais possuíam limitações para integração direta com bibliotecas e APIs.

A troca de arquivos surgiu como uma solução simples, padronizada e independente da tecnologia utilizada pelo PDV.

Em vez de chamar funções diretamente, o sistema apenas gravava arquivos contendo a solicitação da operação.

Outro software intPDVretava esses arquivos e executava a comunicação com o terminal de pagamento.

---

# Como funciona?

O fluxo básico é bastante simples.

```text
PDV

    │

Grava Arquivo

    │

    ▼

Gerenciador TEF

    │

Lê Arquivo

    │

    ▼

Terminal de Pagamento

    │

    ▼

Adquirente

    │

    ▼

Resposta

    │

    ▼

Arquivo de Retorno

    │

    ▼

PDV
```

Toda a comunicação acontece através de arquivos compartilhados.

---

# O que o PDV faz?

Um sistema baseado em INTPOS normalmente é responsável por:

- gerar arquivos de solicitação;
- aguardar o processamento da operação;
- ler os arquivos de resposta;
- finalizar a venda.

Toda a comunicação financeira fica sob responsabilidade do gerenciador TEF.

---

# Por que esse modelo ainda existe?

Embora atualmente existam APIs REST, WebSockets e SDKs modernos, muitos sistemas continuam utilizando INTPOS porque:

- são soluções maduras;
- estão amplamente implantadas;
- possuem milhares de clientes em produção;
- reescrever toda a integração teria alto custo.

Por esse motivo, o ConnectTEF continua oferecendo compatibilidade com esse padrão.

---

# O papel do Gerenciador Padrão

No ConnectTEF, o padrão INTPOS é suportado através do Gerenciador Padrão.

```text
PDV

     │

Arquivos INTPOS

     │

     ▼

Gerenciador Padrão

     │

     ▼

ConnectTEF

     │

     ▼

SmartPOS
```

O PDV continua funcionando exatamente como antes.

O ConnectTEF interpreta automaticamente os arquivos e executa toda a comunicação com o SmartPOS.

---

# Compatibilidade sem reescrever o PDV

Essa é uma das principais vantagens da plataforma.

Ao utilizar o Gerenciador Padrão:

- a lógica do PDV permanece inalterada;
- não é necessário desenvolver novas APIs;
- a migração pode ocorrer gradualmente;
- reduz-se o risco da implantação.

O investimento realizado na integração existente é preservado.

---

# INTPOS x APIs Modernas

| INTPOS | APIs Modernas |
|----------|---------------|
| Comunicação por arquivos | Comunicação por APIs |
| Arquitetura tradicional | Arquitetura orientada a serviços |
| Compatível com sistemas legados | Ideal para novos projetos |
| Simples de manter em aplicações existentes | Maior flexibilidade para novos desenvolvimentos |
| Continua suportado pelo ConnectTEF | Também suportado pelo ConnectTEF |

As duas abordagens podem coexistir dentro da plataforma.

---

# Quando utilizar INTPOS?

O padrão INTPOS continua sendo recomendado quando:

- o PDV já utiliza essa arquitetura;
- deseja-se preservar a integração existente;
- o objetivo é migrar para SmartPOS com o menor impacto possível;
- a modernização será realizada de forma gradual.

Para novos projetos, normalmente recomenda-se utilizar as APIs modernas disponibilizadas pelo ConnectTEF.

---

# Benefícios da compatibilidade

Ao manter suporte ao padrão INTPOS, o ConnectTEF oferece:

- preservação do investimento realizado no PDV;
- redução do custo de migração;
- implantação mais rápida;
- menor risco operacional;
- acesso ao ecossistema de SmartPOS homologados;
- possibilidade de evolução gradual para APIs modernas.

---

# Resumo

O INTPOS é um padrão tradicional de comunicação baseado em troca de arquivos, amplamente utilizado por sistemas de gestão brasileiros.

O ConnectTEF mantém compatibilidade com esse modelo através do Gerenciador Padrão, permitindo que aplicações legadas utilizem SmartPOS modernos sem necessidade de reescrever sua integração.

---

# Próximo capítulo

Agora conheceremos o **SiTef**, uma das arquiteturas de TEF mais utilizadas no mercado brasileiro e outro importante cenário de compatibilidade suportado pelo ConnectTEF.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [O que é o Gerenciador Padrão](05-O-QUE-E-GERENCIADOR-PADRAO.md)
- [O que é SiTef](07-O-QUE-E-SITEF.md)
- [Migrando do INTPOS](../07-MIGRACAO/02-MIGRANDO-DO-INTPOS.md)
- [Integração via Gerenciador Padrão](../03-INTEGRACOES/05-INTEGRACAO-VIA-INTPOS.md)

---
**Navegação:** [Anterior](05-O-QUE-E-GERENCIADOR-PADRAO.md) | [Próximo](07-O-QUE-E-SITEF.md)
<!-- NAVIGATION_FOOTER:END -->