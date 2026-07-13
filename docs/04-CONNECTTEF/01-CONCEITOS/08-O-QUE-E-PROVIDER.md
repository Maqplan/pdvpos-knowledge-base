<!-- NAVIGATION:START -->
---
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](07-O-QUE-E-SITEF.md) | [Próximo](09-O-QUE-E-INTENT.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / O que é Provider
<!-- NAVIGATION:END -->

# O que é o Provider Android?

O Provider Android é um mecanismo de comunicação entre aplicações que permite compartilhar dados e funcionalidades de forma padronizada dentro do sistema operacional Android.

No ConnectTEF, ele é utilizado como uma das formas de integração entre aplicações Android e a plataforma, permitindo que o sistema solicite operações de pagamento utilizando recursos nativos do próprio Android.

---

# Objetivo

Apresentar o conceito de Provider Android e explicar como ele é utilizado pelo ConnectTEF para integrar aplicações Android aos SmartPOS.

---

# O problema

Aplicações Android podem se comunicar de diversas maneiras.

Entre elas:

- APIs REST
- Intents
- Services
- Sockets
- Content Providers

Cada abordagem possui vantagens dependendo da arquitetura da aplicação.

Quando a integração acontece entre aplicações executando no mesmo dispositivo Android, normalmente é desejável utilizar mecanismos nativos do sistema operacional.

É nesse cenário que o Provider se torna uma excelente alternativa.

---

# O que é um Provider?

Um Provider (Content Provider) é um componente do Android responsável por disponibilizar informações ou serviços para outras aplicações.

Ele funciona como uma interface padronizada para troca de informações entre aplicativos.

No contexto do ConnectTEF, essa interface é utilizada para solicitar operações de pagamento sem necessidade de comunicação via rede.

---

# Como funciona?

```text
Aplicação Android

        │

        ▼

Provider Android

        │

        ▼

ConnectTEF

        │

        ▼

SmartPOS

        │

        ▼

Pagamento
```

Toda a comunicação acontece localmente dentro do dispositivo.

---

# Quando utilizar?

O Provider é recomendado quando:

- a aplicação é Android;
- o ConnectTEF está instalado no mesmo SmartPOS;
- deseja-se utilizar comunicação nativa;
- busca-se menor latência;
- não há necessidade de chamadas REST.

---

# Vantagens

A integração via Provider oferece diversos benefícios.

Entre eles:

- comunicação local;
- menor latência;
- integração nativa com Android;
- menor dependência da rede;
- arquitetura desacoplada;
- melhor experiência para o usuário.

---

# Provider x API REST

| Provider Android | API REST |
|------------------|----------|
| Comunicação local | Comunicação via HTTP |
| Android | Multiplataforma |
| Menor latência | Maior flexibilidade |
| Não depende de servidor local | Pode acessar serviços remotos |
| Ideal para SmartPOS Android | Ideal para Web, Desktop e integrações externas |

As duas abordagens são suportadas pelo ConnectTEF.

A escolha depende da arquitetura da aplicação.

---

# Provider x Intent

Embora ambos sejam mecanismos nativos do Android, eles possuem objetivos diferentes.

| Provider | Intent |
|----------|--------|
| Compartilha dados e serviços | Solicita execução de ações |
| Comunicação estruturada | Comunicação orientada a eventos |
| Ideal para integração contínua | Ideal para chamadas pontuais |
| Maior controle sobre a troca de informações | Implementação geralmente mais simples |

O ConnectTEF oferece suporte às duas modalidades.

---

# O papel do ConnectTEF

O ConnectTEF abstrai toda a complexidade da comunicação com o SmartPOS.

Independentemente de a aplicação utilizar Provider, Intent ou API REST, o fluxo operacional da plataforma permanece o mesmo.

Isso permite que diferentes arquiteturas utilizem o ConnectTEF sem alterar a lógica de negócio do sistema.

---

# Quando NÃO utilizar

O Provider normalmente não é recomendado quando:

- a aplicação é Web;
- o sistema é Desktop;
- a integração ocorre entre servidores;
- deseja-se acessar a plataforma remotamente.

Nesses cenários, normalmente recomenda-se utilizar a API REST do ConnectTEF.

---

# Resumo

O Provider Android é um mecanismo nativo do Android utilizado pelo ConnectTEF para integrar aplicações executadas no mesmo dispositivo.

Essa abordagem oferece comunicação local, menor latência e uma integração transparente com o ecossistema da plataforma, sendo especialmente indicada para aplicações Android executadas em SmartPOS.

---

# Próximo capítulo

Agora conhecercemos o **Android Intent**, outro mecanismo de comunicação suportado pelo ConnectTEF para integração entre aplicações Android.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é Intent](09-O-QUE-E-INTENT.md)
---
**Navegação:** [Anterior](07-O-QUE-E-SITEF.md) | [Início](../README.md) | [Próximo](09-O-QUE-E-INTENT.md)
<!-- NAVIGATION_FOOTER:END -->