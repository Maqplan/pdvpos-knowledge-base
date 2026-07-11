<!-- NAVIGATION:START -->
---
[README Principal](../README.md) | [Índice da Documentação](../README.md) | [Anterior](01-INTEGRACAO-VIA-API-REST.md) | [Próximo](03-INTEGRACAO-VIA-WINDOWS-DLL.md)
---
> **Caminho:** [Início](../README.md) / **03 - Integrações** / 02 - Integração via API Local
<!-- NAVIGATION:END -->

# 02 - Integração via API Local

A **API Local** permite que aplicações Desktop ou sistemas executados na mesma rede se comuniquem diretamente com o ConnectTEF instalado no computador ou servidor local.

Diferentemente da API REST em nuvem, essa comunicação ocorre inteiramente dentro da infraestrutura do cliente, eliminando a necessidade de acesso à Internet durante a troca de mensagens entre o ERP e o ConnectTEF.

Essa arquitetura oferece maior desempenho, menor latência e mantém a operação disponível mesmo em ambientes sem conexão com a Internet.

---

## Objetivo

Apresentar o funcionamento da API Local, seus benefícios e os cenários em que ela representa a melhor alternativa de integração.

---

# Como Funciona

O ERP comunica-se diretamente com o serviço do ConnectTEF instalado na máquina ou na rede local.

Toda a comunicação ocorre utilizando protocolos HTTP através da rede interna.

```text
ERP / PDV
      │
      │ HTTP (Rede Local)
      ▼
ConnectTEF Local
      │
      ├── SmartPOS
      ├── Adquirentes
      └── Serviços da Plataforma
```

A Internet somente será utilizada quando necessária para comunicação com serviços externos, como adquirentes ou recursos hospedados em nuvem.

---

# Principais Características

- Comunicação via HTTP na rede local.
- Não depende da Internet entre ERP e ConnectTEF.
- Baixíssima latência.
- Alto desempenho.
- Fácil integração.
- Independente da linguagem de programação.
- Arquitetura desacoplada.

---

# Cenários Recomendados

A API Local é indicada para:

- ERP Desktop.
- PDV Desktop.
- Servidores locais.
- Redes corporativas.
- Ambientes com operação Offline.
- Filiais com infraestrutura própria.
- Operações que exigem resposta imediata.

---

# Vantagens

## Independência da Internet

A comunicação entre ERP e ConnectTEF permanece disponível mesmo durante falhas na conexão externa.

Isso garante continuidade operacional e reduz interrupções causadas por problemas de conectividade.

---

## Alto Desempenho

Como toda a comunicação ocorre dentro da rede local, o tempo de resposta é significativamente menor quando comparado às integrações que dependem da Internet.

---

## Facilidade de Implantação

A integração utiliza chamadas HTTP tradicionais.

Não há necessidade de DLLs específicas ou protocolos proprietários para comunicação com a aplicação comercial.

---

## Baixo Acoplamento

O ERP permanece independente dos fabricantes de SmartPOS e dos protocolos utilizados por cada equipamento.

Toda essa complexidade permanece encapsulada no ConnectTEF.

---

# Linguagens Compatíveis

Por utilizar HTTP, praticamente qualquer tecnologia pode integrar-se utilizando a API Local.

Exemplos:

- Delphi
- C#
- Java
- Kotlin
- PHP
- Python
- JavaScript
- Node.js
- Go
- Rust
- C++
- Flutter
- React Native

---

# Recursos Disponíveis

A API Local disponibiliza acesso aos mesmos serviços oferecidos pela plataforma, incluindo:

- Pagamentos.
- Cancelamentos.
- Consulta de transações.
- Consulta de dispositivos.
- Status operacional.
- Gerenciamento de sessões.
- Recursos SmartPOS.
- Comunicação com equipamentos.

A disponibilidade de recursos depende da versão instalada do ConnectTEF.

---

# Segurança

Embora a comunicação ocorra dentro da rede local, continuam sendo aplicados mecanismos de segurança, como:

- Controle de autenticação.
- Tokens de acesso.
- Controle de sessão.
- Restrição de acesso à API.
- Validação das requisições.

---

# Quando Utilizar

A API Local deve ser utilizada quando:

- O ERP estiver instalado localmente.
- A comunicação ocorrer dentro da rede da empresa.
- A prioridade for desempenho.
- A operação precisar continuar disponível independentemente da conexão com a Internet.
- Houver necessidade de integração com sistemas Desktop existentes.

---

# Comparativo com a API REST

| API REST | API Local |
|----------|-----------|
| Comunicação via Internet | Comunicação pela rede local |
| Ideal para aplicações Web e SaaS | Ideal para aplicações Desktop |
| Pode operar remotamente | Opera dentro da infraestrutura local |
| Integração desacoplada | Integração desacoplada |
| HTTP/HTTPS | HTTP Local |

Ambas utilizam os mesmos conceitos arquiteturais, diferenciando-se apenas pelo ambiente onde ocorre a comunicação.

---

# Próximos Tópicos

Nos próximos capítulos serão apresentados outros modelos de integração, incluindo bibliotecas nativas para Windows, SDK Android e mecanismos de compatibilidade com aplicações legadas.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também

- [01 - Integração via API REST](01-INTEGRACAO-VIA-API-REST.md)
- [03 - Integração via Windows DLL](03-INTEGRACAO-VIA-WINDOWS-DLL.md)
- [11 - Autenticação](11-AUTENTICACAO.md)

---
**Navegação:** [Anterior](01-INTEGRACAO-VIA-API-REST.md) | [README](../README.md) | [Próximo](03-INTEGRACAO-VIA-WINDOWS-DLL.md)
<!-- NAVIGATION_FOOTER:END -->