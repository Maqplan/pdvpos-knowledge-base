<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](04-INTEGRACAO-VIA-INTENT.md) | [Próximo](06-COMPATIBILIDADE-SITEF.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 05 - Integração via INTPOS
<!-- NAVIGATION:END -->

# 05 - Integração via INTPOS

A integração via **INTPOS** foi desenvolvida para permitir que sistemas comerciais já integrados a soluções TEF tradicionais possam migrar para o ConnectTEF com o mínimo de impacto possível.

Nesse modelo, a comunicação ocorre através da troca de arquivos, seguindo um padrão amplamente utilizado por soluções legadas de automação comercial.

O objetivo é preservar o investimento realizado pelo desenvolvedor, permitindo a reutilização da integração existente sem necessidade de reescrever toda a camada responsável pela comunicação com o TEF.

---

## Objetivo

Apresentar o modelo de integração via INTPOS, seus benefícios e os cenários em que ele representa a melhor alternativa para migração de sistemas existentes.

---

# Como Funciona

A aplicação comercial comunica-se com o ConnectTEF através da criação e leitura de arquivos em diretórios monitorados pela plataforma.

O ConnectTEF interpreta as solicitações, executa as operações necessárias e grava os arquivos de retorno contendo o resultado da transação.

```text
ERP / PDV

      │

      │ Arquivos INTPOS

      ▼

ConnectTEF

      │

      ├── SmartPOS
      ├── Adquirentes
      └── Serviços da Plataforma

      │

      ▼

Arquivos de Retorno
```

Essa arquitetura mantém a compatibilidade com sistemas que já utilizam comunicação baseada em arquivos.

---

# Principais Características

- Compatibilidade com integrações legadas.
- Comunicação baseada em arquivos.
- Baixo impacto na aplicação existente.
- Fácil processo de migração.
- Independente do fabricante do SmartPOS.
- Preserva a arquitetura do ERP.

---

# Cenários Recomendados

A integração via INTPOS é indicada para:

- Sistemas legados.
- ERP já integrados ao padrão INTPOS.
- PDVs tradicionais.
- Aplicações Desktop.
- Projetos de migração para SmartPOS.
- Empresas que desejam reduzir esforço de atualização.

---

# Vantagens

## Migração Simplificada

Grande parte da lógica existente pode ser reaproveitada.

Na maioria dos casos, basta redirecionar a comunicação para o ConnectTEF.

---

## Preservação do Investimento

O desenvolvedor mantém a arquitetura já existente, reduzindo custos de desenvolvimento e diminuindo riscos durante a migração.

---

## Redução do Tempo de Implantação

Como a integração já existe, o esforço necessário para disponibilizar o ConnectTEF costuma ser significativamente menor quando comparado ao desenvolvimento de uma nova integração.

---

## Evolução da Plataforma

Mesmo utilizando um modelo legado de comunicação, a aplicação passa a ter acesso às evoluções do ConnectTEF e ao ecossistema de SmartPOS suportado pela plataforma.

---

# Recursos Disponíveis

A integração via INTPOS permite utilizar os principais serviços disponibilizados pelo ConnectTEF, incluindo:

- Pagamentos.
- Cancelamentos.
- Consulta de transações.
- Consulta de status.
- Recursos SmartPOS compatíveis.
- Comunicação com adquirentes.

Os recursos disponíveis dependem da versão da plataforma e do nível de compatibilidade implementado.

---

# Compatibilidade

O ConnectTEF foi projetado para facilitar a migração de aplicações existentes.

Sempre que possível, busca manter compatibilidade com padrões amplamente utilizados no mercado, reduzindo alterações necessárias na aplicação comercial.

---

# Quando Utilizar

A integração via INTPOS é recomendada quando:

- O ERP já utiliza comunicação por arquivos.
- Existe uma integração TEF consolidada.
- O objetivo é minimizar alterações no software.
- O projeto prioriza rapidez na migração.
- Busca-se preservar investimentos anteriores.

---

# Comparativo com Outros Modelos

| Tecnologia | Melhor Aplicação |
|------------|------------------|
| REST API | Novos projetos e aplicações Web |
| REST API Local | Aplicações Desktop e redes locais |
| Provider | Aplicações Android |
| Intent | Aplicações Android |
| INTPOS | Sistemas legados |
| Windows DLL | Aplicações Windows |

Cada modelo atende diferentes necessidades arquiteturais, permitindo que o ConnectTEF adapte-se ao ambiente tecnológico de cada cliente.

---

# Diferencial Estratégico

O suporte ao padrão INTPOS demonstra o compromisso do ConnectTEF com a preservação dos investimentos realizados pelos parceiros.

Ao invés de exigir que o ERP seja completamente reescrito para suportar SmartPOS e novos meios de pagamento, o ConnectTEF oferece mecanismos de compatibilidade que tornam a migração muito mais simples, rápida e segura.

Essa abordagem reduz o custo de adoção da plataforma e acelera a entrada do parceiro no ecossistema ConnectTEF.

---

# Próximos Tópicos

Os próximos capítulos apresentam os mecanismos de compatibilidade disponibilizados pelo ConnectTEF para integrações existentes com SiTef e outras soluções tradicionais do mercado.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [04 - Integração via Intent](04-INTEGRACAO-VIA-INTENT.md)
- [06 - Compatibilidade SiTef](06-COMPATIBILIDADE-SITEF.md)
- [13 - Boas Práticas](13-BOAS-PRATICAS.md)

---
**Navegação:** [Anterior](04-INTEGRACAO-VIA-INTENT.md) | [README](../README.md) | [Próximo](06-COMPATIBILIDADE-SITEF.md)
<!-- NAVIGATION_FOOTER:END -->