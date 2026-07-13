<!-- NAVIGATION:START -->
---
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](09-O-QUE-E-INTENT.md) | [Próximo](11-O-QUE-E-API-REST.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / O que é API Local
<!-- NAVIGATION:END -->

# O que é a API Local?

A API Local é uma interface de comunicação disponibilizada pelo ConnectTEF que permite que aplicações executadas no mesmo computador ou na mesma rede local se comuniquem com a plataforma utilizando requisições HTTP.

Ela foi projetada para simplificar a integração de sistemas Desktop, aplicações legadas e ambientes locais, oferecendo uma interface moderna sem exigir comunicação direta com os SmartPOS.

---

# Objetivo

Compreender o conceito da API Local, seu funcionamento e os cenários em que ela representa a melhor alternativa de integração com o ConnectTEF.

---

# O problema

Muitos sistemas comerciais ainda executam localmente.

É comum encontrar:

- ERPs Desktop
- PDVs Windows
- Aplicações Delphi
- Sistemas C#
- Aplicações Java
- Sistemas legados

Esses sistemas normalmente precisam conversar com dispositivos presentes na mesma loja.

Criar integrações específicas para cada fabricante aumenta significativamente o custo de desenvolvimento.

A API Local foi criada para resolver esse problema.

---

# Como funciona?

O ConnectTEF disponibiliza um serviço HTTP executando localmente.

O ERP envia requisições para esse serviço.

A plataforma interpreta os comandos e realiza toda a comunicação com o SmartPOS.

```text
ERP / PDV

      │

HTTP Local

      │

      ▼

API Local ConnectTEF

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

Para o ERP, a integração acontece através de uma API HTTP convencional.

Toda a complexidade permanece encapsulada na plataforma.

---

# Por que utilizar uma API Local?

A API Local oferece uma forma simples de modernizar sistemas existentes.

Em vez de implementar protocolos específicos para cada equipamento, o ERP passa a utilizar uma interface HTTP padronizada.

Essa abordagem facilita o desenvolvimento, reduz o acoplamento e simplifica futuras evoluções da plataforma.

---

# Quando utilizar?

A API Local é recomendada quando:

- o sistema é Desktop;
- o ERP e o ConnectTEF executam no mesmo computador;
- os equipamentos estão na mesma rede local;
- deseja-se comunicação HTTP sem depender de serviços externos;
- busca-se uma integração simples e padronizada.

---

# API Local x API REST

Embora ambas utilizem HTTP, elas atendem cenários diferentes.

| API Local | API REST |
|------------|----------|
| Comunicação local | Comunicação remota |
| Executa no ambiente do cliente | Executa através da infraestrutura da plataforma |
| Ideal para sistemas Desktop | Ideal para aplicações Web e SaaS |
| Baixa latência | Maior flexibilidade |
| Não depende de acesso externo | Pode ser acessada pela Internet |

A escolha depende da arquitetura da aplicação.

---

# API Local x Provider Android

| API Local | Provider Android |
|------------|------------------|
| HTTP | Comunicação nativa Android |
| Desktop e aplicações locais | Aplicações Android |
| Multiplataforma | Exclusivo para Android |
| Integração via rede local | Integração dentro do dispositivo |

---

# Benefícios

A utilização da API Local proporciona:

- integração simples através de HTTP;
- menor acoplamento entre ERP e SmartPOS;
- baixo impacto em sistemas legados;
- arquitetura padronizada;
- evolução transparente da plataforma;
- menor custo de manutenção.

---

# O papel do ConnectTEF

A API Local é apenas uma das portas de entrada da plataforma.

Independentemente da tecnologia utilizada pelo ERP, o ConnectTEF continua responsável por:

- interpretar as requisições;
- comunicar-se com os SmartPOS;
- controlar o fluxo das transações;
- padronizar os retornos;
- disponibilizar novos recursos da plataforma.

Isso permite que diferentes tecnologias utilizem exatamente a mesma infraestrutura.

---

# Quando NÃO utilizar?

A API Local normalmente não é indicada quando:

- a aplicação está hospedada na nuvem;
- o sistema é um SaaS acessado remotamente;
- o ERP não possui acesso ao ambiente local;
- a comunicação precisa ocorrer através da Internet.

Nesses cenários, recomenda-se utilizar a **API REST** do ConnectTEF.

---

# Resumo

A API Local é uma interface HTTP executada localmente que permite integrar aplicações Desktop e sistemas locais ao ConnectTEF utilizando uma arquitetura moderna, simples e padronizada.

Ela reduz a complexidade da integração e permite que o ERP utilize uma única interface para acessar todo o ecossistema de pagamentos.

---

# Próximo capítulo

Agora conheceremos a **API REST**, a principal interface de integração do ConnectTEF para aplicações Web, SaaS e sistemas distribuídos.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [O que é API REST](11-O-QUE-E-API-REST.md)
---
**Navegação:** [Anterior](09-O-QUE-E-INTENT.md) | [Início](../README.md) | [Próximo](11-O-QUE-E-API-REST.md)
<!-- NAVIGATION_FOOTER:END -->