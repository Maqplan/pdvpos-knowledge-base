<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](06-INTEGRACAO-VIA-SITEF.md) | [Próximo](08-INTEGRACAO-VIA-DLL.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 07 - Integração via Elgin
<!-- NAVIGATION:END -->

# 07 - Integração via Elgin

O ConnectTEF oferece compatibilidade com aplicações que já utilizam bibliotecas e componentes de integração da **Elgin**, permitindo migrar para a plataforma com o mínimo de alterações na aplicação existente.

Essa abordagem foi desenvolvida para preservar o investimento realizado pelas software houses ao longo dos anos, reduzindo o tempo de implantação e evitando a necessidade de reescrever toda a camada responsável pela comunicação com os meios de pagamento.

Ao utilizar o ConnectTEF, a aplicação continua operando praticamente da mesma forma, enquanto passa a usufruir de uma plataforma moderna, preparada para múltiplos fabricantes, adquirentes e futuras evoluções tecnológicas.

---

## Objetivo

Apresentar como funciona a compatibilidade do ConnectTEF com integrações baseadas na tecnologia Elgin e demonstrar os benefícios desse modelo para projetos de migração.

---

# Filosofia da Plataforma

Um dos princípios do ConnectTEF é **proteger o investimento realizado pelos parceiros**.

Muitas software houses possuem aplicações consolidadas utilizando integrações fornecidas pela Elgin.

Ao invés de exigir uma nova integração do zero, o ConnectTEF disponibiliza mecanismos de compatibilidade que permitem uma migração muito mais rápida, segura e econômica.

---

# Como Funciona

A aplicação comercial continua utilizando sua integração baseada na tecnologia Elgin.

O ConnectTEF interpreta essa comunicação e assume toda a responsabilidade pela comunicação com:

- SmartPOS.
- Adquirentes.
- Serviços em nuvem.
- Recursos operacionais da plataforma.

```text
ERP / PDV

        │

        │ Integração Elgin

        ▼

ConnectTEF

        │

        ├── SmartPOS
        ├── Adquirentes
        ├── Serviços da Plataforma
        └── Recursos Operacionais
```

Essa arquitetura reduz drasticamente o impacto da migração sobre a aplicação existente.

---

# Principais Características

- Compatibilidade com integrações Elgin.
- Preservação da arquitetura da aplicação.
- Baixo impacto na migração.
- Evolução contínua da plataforma.
- Independência de fabricantes.
- Redução do esforço de desenvolvimento.
- Menor tempo de implantação.

---

# Cenários Recomendados

A integração via Elgin é indicada para:

- ERP Desktop.
- PDVs Desktop.
- Sistemas comerciais consolidados.
- Software Houses.
- Projetos de modernização.
- Migração para SmartPOS.
- Aplicações que desejam preservar integrações existentes.

---

# Benefícios

## Preservação do Investimento

Grande parte da integração existente pode continuar sendo utilizada.

Isso reduz significativamente o esforço necessário para adoção do ConnectTEF.

---

## Migração Gradual

A evolução para o ConnectTEF pode ocorrer sem interromper a operação da aplicação comercial.

Essa abordagem reduz riscos e facilita a implantação em clientes já existentes.

---

## Redução de Custos

A compatibilidade com Elgin reduz:

- Tempo de desenvolvimento.
- Tempo de homologação.
- Custos de implantação.
- Custos de manutenção.
- Riscos operacionais.

---

## Evolução Tecnológica

Mesmo utilizando uma integração originalmente desenvolvida para a tecnologia Elgin, a aplicação passa a utilizar toda a infraestrutura disponibilizada pelo ConnectTEF.

Isso permite incorporar novos recursos sem alterar significativamente a aplicação.

---

# Recursos Disponíveis

Através da camada de compatibilidade, a aplicação poderá utilizar funcionalidades como:

- Pagamentos.
- Cancelamentos.
- Consulta de transações.
- Consulta de status.
- Comunicação com SmartPOS.
- Integração com adquirentes.
- Recursos operacionais disponibilizados pela plataforma.

Os recursos disponíveis evoluem continuamente conforme novas versões do ConnectTEF são disponibilizadas.

---

# Quando Utilizar

A integração via Elgin é recomendada quando:

- O ERP já possui integração baseada na tecnologia Elgin.
- Existe uma aplicação consolidada em produção.
- O objetivo é preservar investimentos.
- Busca-se reduzir o esforço de migração.
- Deseja-se evoluir para uma plataforma moderna sem reescrever a integração existente.

---

# Comparativo com Outros Modelos

| Tecnologia | Melhor Aplicação |
|------------|------------------|
| REST API | Novos projetos Web e SaaS |
| REST API Local | Novos projetos Desktop |
| Windows DLL | Aplicações Windows existentes |
| INTPOS | Sistemas baseados em troca de arquivos |
| SiTef | Migração de aplicações SiTef |
| Elgin | Migração de aplicações Elgin |
| Provider | Aplicações Android |
| Intent | Aplicações Android |

Cada tecnologia atende um perfil específico de aplicação, permitindo que o ConnectTEF adapte-se à realidade tecnológica de cada parceiro.

---

# Diferencial do ConnectTEF

A compatibilidade com integrações Elgin reforça um dos principais diferenciais da plataforma:

**Permitir que software houses evoluam suas aplicações sem abandonar anos de investimento em integrações já homologadas.**

Ao centralizar toda a comunicação com SmartPOS, adquirentes e novos recursos operacionais, o ConnectTEF reduz a complexidade da aplicação comercial e cria uma arquitetura preparada para futuras evoluções.

Essa estratégia acelera a adoção da plataforma, reduz custos de desenvolvimento e aumenta a longevidade da integração.

---

# Próximos Tópicos

O próximo capítulo apresenta a integração através de **Windows DLL**, indicada para aplicações Desktop que utilizam bibliotecas nativas do Windows.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [06 - Integração via SiTef](06-INTEGRACAO-VIA-SITEF.md)
- [08 - Integração via Windows DLL](08-INTEGRACAO-VIA-DLL.md)
- [09 - Integração Desktop](09-INTEGRACAO-DESKTOP.md)

---
**Navegação:** [Anterior](06-INTEGRACAO-VIA-SITEF.md) | [README](../README.md) | [Próximo](08-INTEGRACAO-VIA-DLL.md)
<!-- NAVIGATION_FOOTER:END -->