---
title: 02 - FAQ Integradores
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](01-FAQ-GERAL.md) | [Próximo](03-FAQ-SMARTPOS.md)
---

> **Caminho:** [Início](../README.md) / FAQ / FAQ Integradores
<!-- NAVIGATION:END -->

# 02 - FAQ Integradores

Esta seção reúne as dúvidas mais frequentes de desenvolvedores, software houses e parceiros responsáveis pela integração de aplicações ao ConnectTEF.

O objetivo é responder rapidamente às principais questões técnicas antes mesmo do início da integração.

---

# Qual é a forma recomendada de integrar ao ConnectTEF?

Para novos projetos recomendamos utilizar a **REST API**.

Ela oferece uma arquitetura moderna, desacoplada, independente da linguagem de programação e preparada para evolução contínua.

---

# Minha aplicação é Desktop. Ainda devo utilizar a REST API?

Sim.

Para aplicações Desktop recomendamos preferencialmente a **REST API Local**, que permite comunicação HTTP diretamente na rede local, proporcionando maior desempenho e independência da Internet entre a aplicação e o ConnectTEF.

---

# Minha aplicação é desenvolvida em Delphi. Posso integrar?

Sim.

O ConnectTEF é independente da linguagem de programação.

Aplicações Delphi podem utilizar:

- REST API
- REST API Local
- Windows DLL
- INTPOS (quando aplicável)

A escolha depende da arquitetura da aplicação.

---

# Minha aplicação é desenvolvida em C# ou .NET.

Existe suporte?

Sim.

Aplicações .NET podem consumir normalmente:

- REST API
- REST API Local

Também podem utilizar DLLs Windows quando necessário.

---

# Minha aplicação roda em Android.

Como devo integrar?

Para aplicações Android o ConnectTEF oferece três alternativas:

- REST API
- Provider
- Intent

A tecnologia recomendada dependerá da arquitetura da aplicação e da forma como ela será executada no SmartPOS.

---

# O ConnectTEF possui SDK?

Sim.

Além das APIs REST, a plataforma disponibiliza mecanismos nativos para Android através de **Provider** e **Intent**, além de bibliotecas específicas para aplicações Desktop quando necessário.

---

# Posso utilizar apenas HTTP?

Sim.

A REST API foi desenvolvida justamente para permitir integração através de chamadas HTTP padronizadas.

Isso torna a integração independente da linguagem utilizada pela aplicação.

---

# Preciso instalar componentes no ERP?

Não necessariamente.

Dependerá do modelo de integração escolhido.

Quando utilizada a REST API, normalmente basta que a aplicação consiga realizar chamadas HTTP para o ConnectTEF.

---

# Preciso alterar minha regra de negócio?

Na maioria dos casos, não.

As alterações normalmente ficam restritas à camada responsável pela comunicação com os meios de pagamento.

A lógica de negócio do ERP ou PDV permanece praticamente inalterada.

---

# O ConnectTEF depende do fabricante do SmartPOS?

Não.

Esse é um dos principais diferenciais da plataforma.

O ERP integra-se ao ConnectTEF e não diretamente ao fabricante do equipamento.

Isso reduz significativamente o impacto da troca de dispositivos ou da inclusão de novos fabricantes.

---

# Posso trocar de fabricante futuramente?

Sim.

Desde que o fabricante seja suportado pelo ConnectTEF, a aplicação comercial normalmente não precisa sofrer alterações significativas.

A plataforma foi desenvolvida exatamente para desacoplar o software da infraestrutura de pagamento.

---

# Já utilizo SiTef. Preciso desenvolver tudo novamente?

Não.

O ConnectTEF oferece mecanismos de compatibilidade que facilitam a migração de aplicações já integradas ao SiTef.

O objetivo é preservar o investimento realizado pela software house.

---

# Já utilizo integração Elgin.

Posso migrar?

Sim.

O ConnectTEF disponibiliza compatibilidade para aplicações que já utilizam tecnologias da Elgin, reduzindo significativamente o esforço de migração.

---

# Meu sistema utiliza INTPOS.

Existe compatibilidade?

Sim.

O ConnectTEF implementa compatibilidade com integrações baseadas em INTPOS, permitindo reaproveitar boa parte da integração existente.

---

# O ConnectTEF funciona apenas online?

Não.

A plataforma suporta diferentes arquiteturas.

Dependendo do modelo de integração utilizado, a comunicação entre ERP e ConnectTEF pode ocorrer integralmente na rede local.

A necessidade de Internet dependerá dos serviços externos envolvidos na operação, como adquirentes ou recursos hospedados em nuvem.

---

# A API é versionada?

Sim.

As APIs do ConnectTEF são versionadas para garantir compatibilidade entre diferentes versões da plataforma e facilitar futuras evoluções.

---

# Posso integrar mais de um ERP ao ConnectTEF?

Sim.

A arquitetura da plataforma permite atender diferentes aplicações comerciais, desde que a implantação seja realizada de acordo com a arquitetura definida para o ambiente.

---

# O ConnectTEF suporta aplicações White Label?

Sim.

A plataforma foi desenvolvida para atender software houses, parceiros OEM e projetos White Label, permitindo que diferentes empresas utilizem a mesma infraestrutura tecnológica mantendo sua própria identidade comercial.

---

# Como escolher o modelo de integração?

Como regra geral:

| Cenário | Tecnologia Recomendada |
|----------|------------------------|
| Novo projeto | REST API |
| ERP Desktop | REST API Local |
| Android SmartPOS | Provider ou Intent |
| Aplicação Windows legada | Windows DLL |
| Integração INTPOS existente | Compatibilidade INTPOS |
| Integração SiTef existente | Compatibilidade SiTef |
| Integração Elgin existente | Compatibilidade Elgin |

---

# Onde encontro exemplos de integração?

A documentação do ConnectTEF possui uma seção específica contendo:

- Exemplos de código.
- Fluxos operacionais.
- Modelos de integração.
- Arquitetura.
- Referência das APIs.
- Guias para desenvolvedores.

Recomendamos iniciar pela documentação da arquitetura e, em seguida, consultar o modelo de integração mais adequado ao seu projeto.

---

# Próximos Tópicos

O próximo capítulo apresenta as principais dúvidas relacionadas ao ecossistema SmartPOS e aos dispositivos suportados pela plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [FAQ SmartPOS](03-FAQ-SMARTPOS.md)
---
**Navegação:** [Anterior](01-FAQ-GERAL.md) | [Início](../README.md) | [Próximo](03-FAQ-SMARTPOS.md)
<!-- NAVIGATION_FOOTER:END -->
