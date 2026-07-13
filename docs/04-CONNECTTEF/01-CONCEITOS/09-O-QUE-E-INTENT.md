<!-- NAVIGATION:START -->
---
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](08-O-QUE-E-PROVIDER.md) | [Próximo](10-O-QUE-E-API-LOCAL.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / O que é Intent
<!-- NAVIGATION:END -->

# O que é Android Intent?

O Android Intent é um mecanismo nativo do sistema operacional Android utilizado para permitir que uma aplicação solicite a execução de uma ação em outra aplicação.

No ConnectTEF, esse mecanismo permite que um aplicativo comercial solicite operações de pagamento ao aplicativo responsável pela integração com o SmartPOS de forma simples, segura e utilizando recursos nativos do Android.

---

# Objetivo

Compreender o conceito de Android Intent e entender quando essa forma de integração é a mais indicada para aplicações Android.

---

# O problema

Aplicações Android frequentemente precisam compartilhar funcionalidades.

Por exemplo:

- solicitar um pagamento;
- imprimir um comprovante;
- abrir uma tela específica;
- capturar informações do usuário;
- executar um serviço externo.

Sem um mecanismo padronizado, cada aplicação precisaria implementar sua própria forma de comunicação.

O Android Intent resolve esse problema.

---

# O que é um Intent?

Um Intent é uma mensagem enviada de uma aplicação para outra solicitando que uma determinada ação seja executada.

O Android identifica qual aplicação é responsável por aquela ação e realiza a comunicação automaticamente.

Essa abordagem reduz o acoplamento entre os aplicativos.

---

# Como funciona?

```text
Aplicação Comercial

        │

        ▼

Android Intent

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

A aplicação comercial apenas solicita a operação.

O ConnectTEF assume toda a comunicação com o SmartPOS e retorna o resultado ao aplicativo de origem.

---

# Quando utilizar?

A integração via Intent é recomendada quando:

- a aplicação é Android;
- o ConnectTEF está instalado no mesmo dispositivo;
- deseja-se uma integração simples;
- as operações são pontuais;
- pretende-se utilizar mecanismos nativos do Android.

---

# Vantagens

A utilização de Intents oferece diversas vantagens.

Entre elas:

- integração simples;
- baixo acoplamento;
- comunicação nativa do Android;
- menor esforço de desenvolvimento;
- fácil manutenção;
- compatibilidade com SmartPOS Android.

---

# Intent x Provider

Embora ambos sejam mecanismos nativos do Android, possuem características diferentes.

| Android Intent | Provider Android |
|----------------|------------------|
| Comunicação baseada em ações | Comunicação baseada em dados e serviços |
| Implementação simples | Maior flexibilidade |
| Ideal para operações pontuais | Ideal para integrações contínuas |
| Baixo acoplamento | Compartilhamento estruturado de informações |

O ConnectTEF oferece suporte às duas abordagens.

A escolha depende da arquitetura da aplicação.

---

# Intent x API REST

| Android Intent | API REST |
|----------------|----------|
| Comunicação local | Comunicação via HTTP |
| Apenas Android | Multiplataforma |
| Não depende de servidor | Pode ser utilizada remotamente |
| Ideal para SmartPOS | Ideal para Web e Desktop |

---

# O papel do ConnectTEF

Independentemente da forma de integração utilizada, o ConnectTEF mantém exatamente o mesmo fluxo operacional.

Após receber a solicitação através do Intent, a plataforma:

- interpreta a operação;
- comunica-se com o SmartPOS;
- acompanha a transação;
- devolve o resultado ao aplicativo.

Toda a complexidade permanece encapsulada na plataforma.

---

# Quando NÃO utilizar?

O Android Intent normalmente não é recomendado quando:

- a aplicação não é Android;
- ERP e SmartPOS executam em dispositivos diferentes;
- deseja-se integração remota;
- o sistema precisa atender aplicações Web ou Desktop.

Nesses cenários, normalmente recomenda-se utilizar a API REST do ConnectTEF.

---

# Benefícios

Ao utilizar Android Intent com o ConnectTEF:

- a integração permanece desacoplada;
- a comunicação é nativa do Android;
- reduz-se o esforço de desenvolvimento;
- a manutenção torna-se mais simples;
- o sistema permanece preparado para futuras evoluções da plataforma.

---

# Resumo

O Android Intent é um mecanismo nativo utilizado para comunicação entre aplicações Android.

No ConnectTEF, ele permite que aplicações comerciais solicitem operações de pagamento de forma simples, utilizando recursos do próprio sistema operacional, enquanto toda a lógica de comunicação com o SmartPOS permanece centralizada na plataforma.

---

# Próximo capítulo

Agora conheceremos a **API Local**, uma das formas de integração disponibilizadas pelo ConnectTEF para comunicação entre aplicações executadas no mesmo ambiente.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é API Local](10-O-QUE-E-API-LOCAL.md)
---
**Navegação:** [Anterior](08-O-QUE-E-PROVIDER.md) | [Início](../README.md) | [Próximo](10-O-QUE-E-API-LOCAL.md)
<!-- NAVIGATION_FOOTER:END -->