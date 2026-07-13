<!-- NAVIGATION:START -->
---
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](10-O-QUE-E-API-LOCAL.md) | [Próximo](12-GLOSSARIO.md)
---
> **Caminho:** [Início](../README.md) / Conceitos / O que é API REST
<!-- NAVIGATION:END -->

# O que é a API REST?

A API REST é a principal interface de integração do ConnectTEF para aplicações modernas.

Ela permite que sistemas ERP, PDVs, aplicações Web, aplicativos móveis e serviços em nuvem se comuniquem com a plataforma utilizando o protocolo HTTP e formatos padronizados como JSON.

Por meio dessa interface, o sistema realiza solicitações ao ConnectTEF, que assume toda a responsabilidade pela comunicação com o ecossistema de pagamentos.

---

# Objetivo

Apresentar o conceito de API REST, explicar seu funcionamento e demonstrar por que essa é a principal forma de integração recomendada para novos projetos.

---

# O problema

À medida que os sistemas evoluíram para arquiteturas distribuídas, aplicações Web e plataformas SaaS, tornou-se necessário um modelo de comunicação simples, padronizado e independente da linguagem de programação utilizada.

Criar bibliotecas específicas para cada plataforma ou fabricante aumentaria significativamente o esforço de desenvolvimento e manutenção.

A API REST resolve esse problema utilizando protocolos amplamente adotados pela indústria.

---

# Como funciona?

O sistema realiza requisições HTTP para a API do ConnectTEF.

A plataforma interpreta a solicitação, executa a operação necessária e retorna uma resposta estruturada.

```text
ERP / PDV / Aplicação

          │

          ▼

     HTTP + JSON

          │

          ▼

      API REST

          │

          ▼

     ConnectTEF

          │

          ▼

      SmartPOS

          │

          ▼

Ecossistema de Pagamentos
```

Para a aplicação, toda a comunicação ocorre através de chamadas HTTP.

---

# Por que utilizar uma API REST?

A API REST foi projetada para oferecer uma integração moderna, independente da tecnologia utilizada pelo sistema.

Ela pode ser consumida por aplicações desenvolvidas em diferentes linguagens e plataformas, permitindo que o ConnectTEF seja integrado a diversos tipos de solução.

---

# Quando utilizar?

A API REST é recomendada quando:

- o sistema é Web;
- a aplicação é SaaS;
- existem múltiplas lojas ou filiais;
- a arquitetura é baseada em serviços;
- deseja-se integração multiplataforma;
- o sistema utiliza HTTP como padrão de comunicação.

Também pode ser utilizada por aplicações Desktop e Mobile, conforme a arquitetura adotada.

---

# API REST x API Local

| API REST | API Local |
|-----------|-----------|
| Comunicação via HTTP | Comunicação HTTP local |
| Pode operar em ambientes distribuídos | Indicada para ambientes locais |
| Ideal para SaaS e aplicações Web | Ideal para sistemas Desktop |
| Escalável | Baixa latência em redes locais |
| Acessível por diferentes plataformas | Voltada para integrações no ambiente do cliente |

Ambas utilizam conceitos semelhantes, mas atendem necessidades distintas.

---

# API REST x Provider Android

| API REST | Provider Android |
|-----------|------------------|
| Multiplataforma | Exclusivo para Android |
| Comunicação HTTP | Comunicação nativa do Android |
| Aplicações Web, Desktop e Mobile | Aplicações Android no mesmo dispositivo |
| Maior flexibilidade | Menor latência local |

---

# Benefícios

Ao utilizar a API REST do ConnectTEF, sua aplicação obtém:

- integração padronizada;
- independência da linguagem de programação;
- arquitetura escalável;
- comunicação baseada em HTTP e JSON;
- evolução contínua da plataforma;
- compatibilidade com diferentes ambientes de execução.

---

# O papel do ConnectTEF

A API REST é apenas uma das interfaces de entrada da plataforma.

Após receber a solicitação, o ConnectTEF:

- interpreta a operação;
- valida os dados recebidos;
- comunica-se com os SmartPOS homologados;
- acompanha a transação;
- retorna uma resposta padronizada.

Toda a complexidade permanece encapsulada na plataforma.

---

# Quando NÃO utilizar?

A API REST pode não ser a melhor escolha quando:

- a comunicação ocorre exclusivamente dentro de um SmartPOS Android;
- deseja-se integração totalmente local entre aplicações Android;
- existe um cenário onde Provider ou Intent oferecem melhor desempenho e menor acoplamento.

Nesses casos, recomenda-se avaliar as demais formas de integração disponibilizadas pelo ConnectTEF.

---

# Filosofia da API REST

A API REST do ConnectTEF não foi criada apenas para processar pagamentos.

Ela foi projetada para ser a porta de entrada da plataforma, permitindo acesso padronizado aos recursos do ecossistema, como pagamentos, cancelamentos, impressão, marketing, operação offline, captura de dados e demais funcionalidades disponibilizadas pelo ConnectTEF.

Essa abordagem permite que novas funcionalidades sejam incorporadas à plataforma sem alterar o modelo de integração utilizado pelo sistema.

---

# Resumo

A API REST é a principal interface de integração do ConnectTEF para aplicações modernas.

Baseada em HTTP e JSON, ela permite integrar sistemas de diferentes tecnologias a uma plataforma única, desacoplando o ERP da complexidade do ecossistema de pagamentos e oferecendo uma arquitetura preparada para evolução contínua.

---

# Próximo capítulo

Agora que você conhece os principais conceitos utilizados pelo ConnectTEF, consulte o **Glossário** para compreender os termos utilizados ao longo da documentação e facilitar a navegação pelos próximos módulos.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Glossário](12-GLOSSARIO.md)
---
**Navegação:** [Anterior](10-O-QUE-E-API-LOCAL.md) | [Início](../README.md) | [Próximo](12-GLOSSARIO.md)
<!-- NAVIGATION_FOOTER:END -->