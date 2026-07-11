<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](07-COMPATIBILIDADE-ELGIN.md) | [Próximo](09-INTEGRACAO-DESKTOP.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 08 - Integração via Windows DLL
<!-- NAVIGATION:END -->

# 08 - Integração via Windows DLL

A integração via **Windows DLL** foi desenvolvida para aplicações Desktop que necessitam integrar-se ao ConnectTEF utilizando bibliotecas nativas do Windows.

Este modelo é especialmente indicado para sistemas legados ou aplicações que já possuem arquitetura baseada em DLLs, permitindo incorporar o ConnectTEF com o mínimo de impacto na aplicação existente.

O objetivo é preservar investimentos realizados ao longo dos anos, oferecendo uma camada de compatibilidade moderna sem exigir reestruturações significativas no ERP ou PDV.

---

## Objetivo

Apresentar o modelo de integração via Windows DLL, suas características, benefícios e os cenários em que essa tecnologia representa a melhor alternativa.

---

# Como Funciona

A aplicação comercial realiza chamadas para a DLL disponibilizada pelo ConnectTEF.

A DLL atua como uma camada de abstração responsável por toda a comunicação com a plataforma, eliminando a necessidade de que o ERP conheça detalhes sobre SmartPOS, adquirentes ou protocolos proprietários.

```text
ERP / PDV Desktop

        │

        │ Windows DLL

        ▼

ConnectTEF

        │

        ├── SmartPOS
        ├── Adquirentes
        ├── Serviços da Plataforma
        └── Recursos Operacionais
```

A aplicação continua utilizando chamadas nativas, enquanto o ConnectTEF gerencia toda a complexidade da operação.

---

# Principais Características

- Biblioteca nativa para Windows.
- Fácil integração.
- Baixo impacto na arquitetura existente.
- Compatível com aplicações legadas.
- Independente do fabricante do SmartPOS.
- Evolução contínua da plataforma.
- Preservação do investimento realizado pelo parceiro.

---

# Cenários Recomendados

A integração via Windows DLL é indicada para:

- ERP Desktop.
- PDVs Desktop.
- Sistemas escritos em Delphi.
- Aplicações C++.
- Aplicações C#.
- Sistemas VB.NET.
- Aplicações comerciais tradicionais.
- Projetos de migração.

---

# Vantagens

## Integração Simplificada

A DLL encapsula toda a comunicação com o ConnectTEF.

O ERP continua utilizando chamadas simples para executar operações.

---

## Preservação da Arquitetura

Não é necessário alterar significativamente a estrutura da aplicação.

Grande parte da lógica existente permanece inalterada.

---

## Compatibilidade

Permite que aplicações já desenvolvidas continuem evoluindo sem abandonar sua arquitetura original.

---

## Evolução da Plataforma

Novas funcionalidades disponibilizadas pelo ConnectTEF podem ser incorporadas sem exigir alterações profundas na aplicação comercial.

---

# Recursos Disponíveis

Através da DLL, a aplicação pode acessar recursos como:

- Pagamentos.
- Cancelamentos.
- Consulta de transações.
- Consulta de status.
- Recursos SmartPOS.
- Comunicação com adquirentes.
- Operações disponibilizadas pela plataforma.

Os recursos evoluem continuamente conforme novas versões do ConnectTEF são disponibilizadas.

---

# Linguagens Compatíveis

A DLL pode ser utilizada por diversas tecnologias Windows, incluindo:

- Delphi
- C#
- VB.NET
- C++
- Visual FoxPro
- PowerBuilder
- Outras linguagens compatíveis com DLLs Windows

---

# Quando Utilizar

A integração via Windows DLL é recomendada quando:

- O sistema já utiliza bibliotecas nativas.
- Existe uma arquitetura consolidada baseada em DLLs.
- Busca-se reduzir o esforço de migração.
- O objetivo é preservar a compatibilidade com aplicações existentes.
- O ERP é executado exclusivamente em ambiente Windows.

---

# Comparativo com Outros Modelos

| Tecnologia | Melhor Aplicação |
|------------|------------------|
| REST API | Aplicações Web, Cloud e SaaS |
| REST API Local | Novos projetos Desktop |
| Windows DLL | Aplicações Windows legadas |
| INTPOS | Sistemas baseados em troca de arquivos |
| Provider | Aplicações Android |
| Intent | Aplicações Android |

Cada tecnologia foi desenvolvida para atender diferentes cenários de integração, permitindo que o ConnectTEF adapte-se à realidade tecnológica de cada parceiro.

---

# Diferencial do ConnectTEF

A DLL não representa uma tecnologia proprietária isolada.

Ela faz parte da estratégia do ConnectTEF de oferecer múltiplos modelos de integração para diferentes arquiteturas.

Isso permite que software houses escolham o modelo mais adequado ao seu ambiente, sem necessidade de reescrever aplicações maduras ou abandonar investimentos já realizados.

---

# Próximos Tópicos

No próximo capítulo serão apresentadas as recomendações para integração de aplicações Desktop, incluindo a escolha da tecnologia mais adequada para cada cenário.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [02 - Integração via API Local](02-INTEGRACAO-VIA-API-LOCAL.md)
- [05 - Integração via INTPOS](05-INTEGRACAO-VIA-INTPOS.md)
- [09 - Integração Desktop](09-INTEGRACAO-DESKTOP.md)

---
**Navegação:** [Anterior](07-COMPATIBILIDADE-ELGIN.md) | [README](../README.md) | [Próximo](09-INTEGRACAO-DESKTOP.md)
<!-- NAVIGATION_FOOTER:END -->