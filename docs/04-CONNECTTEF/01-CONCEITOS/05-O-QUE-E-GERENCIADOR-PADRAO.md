---
title: O que é o Gerenciador Padrão?
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](04-O-QUE-E-FACILITADORA.md) | [Próximo](06-O-QUE-E-INTPOS.md)
---

> **Caminho:** [Início](../README.md) / Conceitos / O que é Gerenciador Padrão
<!-- NAVIGATION:END -->

# O que é o Gerenciador Padrão?

O Gerenciador Padrão é um módulo de compatibilidade do ConnectTEF desenvolvido para permitir que sistemas legados continuem funcionando sem necessidade de alterar a integração existente.

Ele interpreta automaticamente as requisições baseadas no padrão INTPOS e as converte para a arquitetura moderna do ConnectTEF.

Na prática, isso permite que PDVs desenvolvidos há muitos anos possam operar com SmartPOS modernos sem reescrever sua integração.

---

# Objetivo

Apresentar o Gerenciador Padrão e demonstrar como ele simplifica a migração de sistemas legados para o ecossistema ConnectTEF.

---

# O problema

Durante muitos anos, milhares de ERPs brasileiros implementaram integrações utilizando troca de arquivos no padrão INTPOS.

Essa arquitetura continua presente em inúmeros sistemas em operação.

Quando esses sistemas desejam utilizar SmartPOS modernos, normalmente enfrentam um grande desafio.

Sem uma camada de compatibilidade, seria necessário:

- alterar o PDV;
- desenvolver uma nova integração;
- homologar novamente toda a operação;
- implantar uma nova arquitetura.

Esse processo costuma ser caro, demorado e arriscado.

---

# A solução

O Gerenciador Padrão elimina essa necessidade.

Ele atua como uma camada intermediária entre o PDV e o ConnectTEF.

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

O PDV continua gerando exatamente os mesmos arquivos.

O ConnectTEF interpreta essas informações e executa toda a comunicação com o SmartPOS.

---

# Como funciona

O fluxo é totalmente transparente para o sistema de gestão.

1. O PDV gera os arquivos INTPOS normalmente.
2. O Gerenciador Padrão identifica a operação.
3. O ConnectTEF interpreta a solicitação.
4. A transação é enviada ao SmartPOS.
5. O resultado retorna ao PDV utilizando o mesmo padrão esperado.

Nenhuma alteração é necessária na lógica do sistema.

---

# Compatibilidade

O Gerenciador Padrão foi desenvolvido para preservar investimentos já realizados em integrações legadas.

Ele é especialmente indicado para sistemas que utilizam:

- INTPOS;
- troca de arquivos;
- arquiteturas tradicionais de TEF;
- integrações antigas que não justificam reescrita completa.

---

# Benefícios

Ao utilizar o Gerenciador Padrão, sua empresa obtém:

- preservação da integração existente;
- redução do tempo de implantação;
- menor custo de desenvolvimento;
- menor risco de migração;
- compatibilidade com SmartPOS modernos;
- acesso aos recursos da plataforma ConnectTEF.

---

# Quando utilizar

O Gerenciador Padrão é recomendado quando:

- o PDV já utiliza troca de arquivos INTPOS;
- não há interesse em alterar a integração existente;
- deseja-se migrar para SmartPOS modernos;
- busca-se uma transição gradual para APIs mais modernas.

---

# Evolução gradual

Uma das principais vantagens dessa arquitetura é permitir uma migração sem interrupções.

O sistema pode continuar utilizando o Gerenciador Padrão enquanto a equipe desenvolve, no seu próprio ritmo, uma integração baseada em APIs.

Isso reduz riscos e facilita a modernização da aplicação.

---

# Gerenciador Padrão × Nova Integração

| Gerenciador Padrão | Nova API |
|--------------------|----------|
| Mantém a integração existente | Requer desenvolvimento |
| Utiliza arquivos INTPOS | Utiliza APIs modernas |
| Implantação rápida | Maior flexibilidade |
| Ideal para migração | Ideal para novos projetos |
| Menor impacto no PDV | Arquitetura mais moderna |

As duas abordagens podem coexistir durante o processo de evolução do sistema.

---

# O papel do ConnectTEF

É importante destacar que o Gerenciador Padrão não substitui o ConnectTEF.

Ele é apenas um dos mecanismos de entrada da plataforma.

Após interpretar os arquivos INTPOS, toda a comunicação passa a utilizar a infraestrutura do ConnectTEF, permitindo acesso aos SmartPOS homologados e aos recursos disponibilizados pela plataforma.

---

# Resumo

O Gerenciador Padrão é uma camada de compatibilidade que permite integrar sistemas legados ao ConnectTEF sem necessidade de alterar a integração existente.

Essa abordagem reduz custos, acelera implantações e protege o investimento realizado em arquiteturas baseadas em INTPOS, oferecendo um caminho seguro para a adoção de SmartPOS modernos.

---

# Próximo capítulo

Agora conheceremos o padrão **INTPOS**, utilizado por milhares de sistemas de gestão para comunicação baseada em troca de arquivos e que serve de base para o funcionamento do Gerenciador Padrão.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é INTPOS](06-O-QUE-E-INTPOS.md)
---
**Navegação:** [Anterior](04-O-QUE-E-FACILITADORA.md) | [Início](../README.md) | [Próximo](06-O-QUE-E-INTPOS.md)
<!-- NAVIGATION_FOOTER:END -->
