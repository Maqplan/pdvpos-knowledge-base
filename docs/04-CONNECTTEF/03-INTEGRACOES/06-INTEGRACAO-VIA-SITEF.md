<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](05-INTEGRACAO-VIA-INTPOS.md) | [Próximo](07-INTEGRACAO-VIA-ELGIN.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 06 - Integração via SiTef
<!-- NAVIGATION:END -->

# 06 - Integração via SiTef

O ConnectTEF oferece um mecanismo de compatibilidade para aplicações que já utilizam integração com o **SiTef**, permitindo que software houses migrem para a plataforma com o mínimo de impacto possível.

O objetivo não é substituir completamente a arquitetura da aplicação, mas preservar o investimento realizado ao longo dos anos, reduzindo o esforço necessário para incorporar novos dispositivos SmartPOS, adquirentes e funcionalidades disponibilizadas pelo ConnectTEF.

Essa estratégia acelera o processo de migração e reduz significativamente o risco de implantação.

---

## Objetivo

Apresentar como o ConnectTEF permite aproveitar integrações já existentes com o SiTef, facilitando a adoção da plataforma sem exigir a reescrita completa da camada de pagamentos.

---

# Filosofia de Compatibilidade

Muitas software houses possuem anos de investimento em integrações SiTef.

Reescrever toda essa camada representa um alto custo, além de riscos operacionais e necessidade de novas homologações.

O ConnectTEF foi desenvolvido para minimizar esse impacto.

Ao oferecer mecanismos de compatibilidade, permite que a aplicação continue utilizando grande parte da lógica já existente enquanto passa a utilizar toda a infraestrutura da plataforma ConnectTEF.

---

# Como Funciona

A aplicação comercial continua operando utilizando sua arquitetura baseada no SiTef.

O ConnectTEF interpreta essa comunicação, realiza as adaptações necessárias e assume toda a comunicação com SmartPOS, adquirentes e demais serviços da plataforma.

```text
ERP / PDV

        │

        │ Integração SiTef

        ▼

ConnectTEF

        │

        ├── SmartPOS
        ├── Adquirentes
        ├── Serviços da Plataforma
        └── Recursos Operacionais
```

A complexidade permanece encapsulada dentro do ConnectTEF.

---

# Principais Características

- Compatibilidade com integrações existentes.
- Redução do esforço de migração.
- Preservação da arquitetura do ERP.
- Menor impacto na aplicação comercial.
- Evolução contínua da plataforma.
- Independência do fabricante do SmartPOS.
- Redução do tempo de implantação.

---

# Cenários Recomendados

A integração via SiTef é indicada para:

- ERP já integrados ao SiTef.
- PDVs Desktop.
- Sistemas comerciais consolidados.
- Software Houses.
- Projetos de migração para SmartPOS.
- Empresas que desejam modernizar sua solução preservando investimentos existentes.

---

# Benefícios

## Preservação do Investimento

Grande parte da integração existente pode ser mantida.

Isso reduz tempo de desenvolvimento e evita reescrever uma camada crítica da aplicação.

---

## Migração Gradual

A adoção do ConnectTEF pode ocorrer de forma progressiva.

O ERP continua operando enquanto novas funcionalidades são incorporadas ao ambiente.

---

## Redução de Custos

Menor esforço de desenvolvimento significa:

- menor custo de implantação;
- menor necessidade de homologações;
- menor risco operacional;
- menor impacto sobre clientes existentes.

---

## Evolução Tecnológica

Mesmo mantendo a compatibilidade com integrações existentes, a aplicação passa a usufruir dos recursos modernos disponibilizados pelo ConnectTEF.

Entre eles:

- suporte a múltiplos fabricantes de SmartPOS;
- integração com diferentes adquirentes;
- novas funcionalidades operacionais;
- evolução contínua da plataforma.

---

# Quando Utilizar

A integração via SiTef é recomendada quando:

- Existe uma integração SiTef consolidada.
- O objetivo é preservar investimentos anteriores.
- Busca-se reduzir riscos durante a migração.
- Não há interesse em reescrever toda a camada de pagamentos.
- A empresa deseja modernizar sua solução gradualmente.

---

# Comparativo com Outros Modelos

| Tecnologia | Melhor Aplicação |
|------------|------------------|
| REST API | Novos projetos Web e SaaS |
| REST API Local | Novos projetos Desktop |
| Windows DLL | Aplicações Windows existentes |
| INTPOS | Integrações baseadas em arquivos |
| SiTef | Migração de aplicações já integradas ao SiTef |
| Provider | Aplicações Android |
| Intent | Aplicações Android |

---

# Diferencial do ConnectTEF

O suporte ao SiTef faz parte da filosofia da plataforma de **preservar investimentos**.

Ao invés de obrigar parceiros a desenvolver uma nova integração do zero, o ConnectTEF oferece mecanismos que facilitam a migração para uma arquitetura moderna, reduzindo custos e acelerando a adoção da plataforma.

Essa estratégia permite que software houses evoluam suas soluções sem comprometer a estabilidade das aplicações já utilizadas por seus clientes.

---

# Próximos Tópicos

O próximo capítulo apresenta os mecanismos de compatibilidade disponibilizados para aplicações que utilizam integrações baseadas na plataforma Elgin.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [05 - Integração via INTPOS](05-INTEGRACAO-VIA-INTPOS.md)
- [07 - Integração via Elgin](07-INTEGRACAO-VIA-ELGIN.md)
- [09 - Integração Desktop](09-INTEGRACAO-DESKTOP.md)

---
**Navegação:** [Anterior](05-INTEGRACAO-VIA-INTPOS.md) | [README](../README.md) | [Próximo](07-INTEGRACAO-VIA-ELGIN.md)
<!-- NAVIGATION_FOOTER:END -->