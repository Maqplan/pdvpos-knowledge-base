---
title: 01 - FAQ Geral
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](README.md) | [Próximo](02-FAQ-INTEGRADORES.md)
---
> **Caminho:** [Início](../README.md) / FAQ / FAQ Geral
<!-- NAVIGATION:END -->

# 01 - FAQ Geral

Esta seção reúne as dúvidas mais frequentes sobre o ConnectTEF, sua arquitetura, funcionamento e proposta de valor.

As respostas apresentadas aqui possuem caráter conceitual e servem como ponto de partida para compreender a plataforma. Sempre que necessário, cada resposta direciona para a documentação específica do assunto.

---

# O que é o ConnectTEF?

O ConnectTEF é uma plataforma de integração entre aplicações comerciais, dispositivos SmartPOS, meios de pagamento e adquirentes.

Mais do que um TEF tradicional, o ConnectTEF atua como uma camada de abstração, permitindo que ERP, PDVs e demais aplicações integrem-se uma única vez e tenham acesso a diferentes fabricantes de SmartPOS e serviços de pagamento.

---

# O ConnectTEF é apenas um TEF?

Não.

Embora realize operações de pagamento, o ConnectTEF foi concebido como uma plataforma completa de integração.

Além das transações financeiras, ele fornece mecanismos de comunicação, gerenciamento de dispositivos, compatibilidade com aplicações legadas e diferentes modelos de integração para software houses e desenvolvedores.

---

# Qual problema o ConnectTEF resolve?

O principal objetivo da plataforma é eliminar a necessidade de desenvolver integrações específicas para cada fabricante de SmartPOS ou solução de pagamento.

Com o ConnectTEF, a aplicação integra-se apenas uma vez e passa a utilizar uma plataforma unificada, preparada para evoluir continuamente.

---

# Quem pode utilizar o ConnectTEF?

O ConnectTEF foi desenvolvido para empresas que produzem software comercial, incluindo:

- Software Houses.
- Desenvolvedores de ERP.
- Desenvolvedores de PDV.
- Plataformas SaaS.
- Sistemas de Autoatendimento.
- Aplicações Android.
- Sistemas de Delivery.
- Soluções de Automação Comercial.

---

# O ConnectTEF funciona apenas com SmartPOS?

Sim.

O ConnectTEF é uma plataforma especializada em integração com dispositivos SmartPOS.

Seu objetivo é permitir que software houses, ERP e PDVs integrem-se uma única vez e tenham acesso aos SmartPOS suportados pela plataforma, independentemente do fabricante.

O ConnectTEF não foi desenvolvido para substituir soluções TEF tradicionais em terminais POS convencionais. Sua proposta é explorar todo o potencial dos SmartPOS, transformando esses dispositivos em uma extensão operacional do ERP ou da aplicação comercial.

---

# O ConnectTEF substitui o TEF tradicional?

Depende da arquitetura da aplicação.

Na maioria dos cenários, o ConnectTEF pode substituir soluções tradicionais de integração, oferecendo uma arquitetura mais moderna, desacoplada e preparada para múltiplos fabricantes.

Além disso, disponibiliza mecanismos de compatibilidade para facilitar a migração de aplicações existentes.

---

# O ConnectTEF é compatível com aplicações existentes?

Sim.

Um dos princípios da plataforma é preservar o investimento realizado pelas software houses.

Por isso, o ConnectTEF oferece diferentes modelos de integração e mecanismos de compatibilidade que reduzem significativamente o esforço necessário para migração.

---

# Preciso alterar meu ERP para utilizar o ConnectTEF?

Na maioria dos casos, apenas adaptações na camada de integração são necessárias.

A lógica de negócio da aplicação normalmente permanece inalterada.

O nível de alteração dependerá da tecnologia atualmente utilizada pelo ERP e do modelo de integração escolhido.

---

# O ConnectTEF funciona com qualquer linguagem de programação?

Sim.

Como a plataforma disponibiliza diferentes modelos de integração, praticamente qualquer linguagem pode ser utilizada.

Entre elas:

- Delphi
- C#
- Java
- Kotlin
- PHP
- Python
- JavaScript
- Node.js
- Go
- C++
- Flutter
- React Native

---

# Quais modelos de integração estão disponíveis?

O ConnectTEF disponibiliza diversos modelos para atender diferentes arquiteturas.

Entre eles:

- REST API
- REST API Local
- Provider Android
- Intent Android
- Windows DLL
- Compatibilidade INTPOS
- Compatibilidade SiTef
- Compatibilidade Elgin

Isso permite que cada software house escolha a tecnologia mais adequada para sua realidade.

---

# O ConnectTEF funciona em aplicações Desktop?

Sim.

A plataforma oferece diferentes modelos específicos para aplicações Windows e Desktop, incluindo REST API Local, Windows DLL e mecanismos de compatibilidade para aplicações legadas.

---

# O ConnectTEF funciona em aplicações Android?

Sim.

O ConnectTEF oferece mecanismos nativos para Android através de:

- Provider
- Intent
- REST API

Esses modelos permitem integração direta com aplicações executadas em dispositivos SmartPOS.

---

# O ConnectTEF depende de um fabricante específico?

Não.

Um dos principais diferenciais da plataforma é desacoplar a aplicação comercial do fabricante do equipamento.

Isso permite que novas marcas e novos dispositivos sejam incorporados sem exigir alterações significativas na aplicação integrada.

---

# O ConnectTEF é uma plataforma preparada para evolução?

Sim.

Novos fabricantes, adquirentes, recursos e tecnologias podem ser incorporados continuamente sem exigir que cada ERP ou PDV desenvolva novas integrações do zero.

Essa arquitetura reduz custos de manutenção e aumenta a longevidade da integração.

---

# Onde encontro a documentação técnica?

O ConnectTEF possui duas documentações oficiais, cada uma com um objetivo específico.

### Documentação Técnica

Disponível em:

**https://docs.connecttef.com.br/**

Destinada a desenvolvedores e integradores, contendo informações como:

- APIs
- Modelos de integração
- Arquitetura da plataforma
- Autenticação
- Segurança
- Exemplos de integração
- Guias para desenvolvedores

### Base de Conhecimento da Plataforma

Disponível em:

**https://help.pdvpos.com.br/**

Apresenta uma visão funcional e conceitual da plataforma, incluindo:

- Recursos disponíveis
- Arquitetura funcional
- SmartPOS
- White Label
- Fluxos operacionais
- FAQ
- Casos de uso
- Diferenciais da plataforma

Recomendamos iniciar pela Base de Conhecimento para compreender os conceitos da plataforma e, em seguida, consultar a Documentação Técnica durante o processo de integração e desenvolvimento.

---

# Onde devo começar?

Para novos parceiros recomendamos a seguinte sequência de leitura:

1. Visão Geral da Plataforma.
2. Arquitetura.
3. Modelos de Integração.
4. APIs.
5. Fluxos Operacionais.
6. Exemplos de Integração.

Essa ordem proporciona uma compreensão gradual da arquitetura do ConnectTEF antes do início do desenvolvimento.

---

# Próximos Tópicos

O próximo capítulo responde às principais dúvidas relacionadas aos modelos de integração disponibilizados pela plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [FAQ Integradores](02-FAQ-INTEGRADORES.md)
---
**Navegação:** [Anterior](README.md) | [Início](../README.md) | [Próximo](02-FAQ-INTEGRADORES.md)
<!-- NAVIGATION_FOOTER:END -->
