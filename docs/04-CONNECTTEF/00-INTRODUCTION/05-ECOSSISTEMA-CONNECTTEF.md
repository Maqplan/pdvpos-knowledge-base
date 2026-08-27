---
title: Ecossistema ConnectTEF
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
[README ConnectTEF](../README.md) | [Índice da Seção](README.md) | [Anterior](04-ARQUITETURA-GERAL.md) | [Próximo](06-PRIMEIROS-PASSOS.md)
---

> **Caminho:** [Início](../README.md) / Introdução / Ecossistema ConnectTEF
<!-- NAVIGATION:END -->

# Ecossistema ConnectTEF

O ConnectTEF não é apenas uma plataforma para processamento de pagamentos.

Ele faz parte de um ecossistema desenvolvido para conectar sistemas de gestão, dispositivos SmartPOS e meios de pagamento através de uma arquitetura única, preparada para evolução contínua.

Esse ecossistema permite que diferentes tecnologias trabalhem em conjunto utilizando uma única plataforma de integração.

---

# Objetivo

Apresentar os componentes que fazem parte do ecossistema ConnectTEF e demonstrar como eles se relacionam para oferecer uma plataforma única de integração para pagamentos e automação comercial.

---

# Visão Geral

```text
                    ERP

                     │

                     ▼

               ConnectTEF

     ┌──────────┼──────────┬──────────┐

     ▼          ▼          ▼          ▼

 SmartPOS   APIs     Recursos     Monitoramento

     │

     ▼

Adquirentes / Gateways

     │

     ▼

Consumidor Final
```

O ConnectTEF centraliza toda a comunicação entre o sistema de gestão e o ecossistema de pagamentos.

---

# Sistemas Integrados

O ConnectTEF pode ser utilizado por diferentes tipos de aplicações.

Entre elas:

- ERP
- PDV Desktop
- PDV Android
- Aplicações Mobile
- Plataformas Web
- Sistemas de Delivery
- Sistemas para Restaurantes
- Sistemas de Frente de Caixa
- Sistemas de Gestão Comercial

Todos utilizam exatamente a mesma plataforma.

---

# SmartPOS

Os SmartPOS representam a camada operacional da solução.

São responsáveis pela interação com o operador e com o consumidor.

Entre suas funções estão:

- Receber pagamentos
- Exibir mensagens
- Imprimir comprovantes
- Capturar informações
- Executar campanhas
- Operar offline
- Ler códigos de barras

Novos equipamentos podem ser incorporados continuamente ao ecossistema sem necessidade de alterar o ERP.

---

# Adquirentes

O ConnectTEF permite operar com diferentes adquirentes homologadas.

A plataforma abstrai as diferenças existentes entre elas.

Isso permite que o sistema permaneça independente das particularidades de cada adquirente.

---

# Fabricantes

Cada fabricante possui características próprias.

O ConnectTEF centraliza essas diferenças oferecendo uma interface padronizada para o sistema integrado.

Conforme novos fabricantes são homologados, eles passam a fazer parte do ecossistema da plataforma.

---

# Recursos Compartilhados

Todos os sistemas integrados podem utilizar os recursos disponibilizados pelo ConnectTEF.

Entre eles:

- Pagamentos
- Cancelamentos
- Reimpressão
- Operação Offline
- Marketing na SmartPOS
- Captura de CPF
- Captura de Telefone
- Captura de E-mail
- Pesquisa NPS
- Impressão
- Leitor de Código de Barras
- Fila de Cobranças

Esses recursos fazem parte da plataforma e não dependem do fabricante do SmartPOS.

---

# Formas de Integração

O ecossistema foi desenvolvido para atender diferentes arquiteturas.

São suportadas integrações através de:

- API REST
- API Local
- Android Provider
- Android Intent
- Gerenciador Padrão (INTPOS)
- Compatibilidade com SiTef
- Compatibilidade com integrações Elgin

Essa flexibilidade permite atender tanto sistemas modernos quanto aplicações legadas.

---

# Evolução Contínua

Um dos principais objetivos do ecossistema ConnectTEF é permitir evolução contínua.

Sempre que novos fabricantes, SmartPOS ou funcionalidades forem homologados, eles passam a integrar a plataforma sem exigir alterações na integração existente.

Isso reduz o custo de evolução do software e protege o investimento realizado pelos parceiros.

---

# Ecossistema White Label

O ConnectTEF também pode ser disponibilizado através do modelo White Label.

Nesse cenário:

- a tecnologia continua sendo desenvolvida pela PDVPOS;
- o parceiro comercializa utilizando sua própria marca;
- as integrações permanecem compatíveis com a plataforma.

Essa arquitetura permite expansão nacional através de canais especializados.

---

# Benefícios do Ecossistema

O modelo adotado pelo ConnectTEF oferece vantagens para todos os envolvidos.

### Para desenvolvedores

- Uma única integração.
- APIs padronizadas.
- Menor débito técnico.
- Evolução transparente.

### Para revendas

- Mais opções de equipamentos.
- Menor necessidade de suporte.
- Atualizações contínuas.

### Para clientes finais

- Maior liberdade de escolha.
- Plataforma sempre atualizada.
- Compatibilidade com novos dispositivos.

---

# Filosofia do Ecossistema

O ecossistema ConnectTEF foi projetado para que a evolução aconteça dentro da plataforma, e não dentro do ERP.

Enquanto fabricantes, adquirentes e dispositivos evoluem constantemente, o sistema integrado continua utilizando exatamente a mesma interface de comunicação.

Esse modelo protege o investimento realizado na integração e reduz significativamente o custo de manutenção ao longo do tempo.

---

# Resumo

O ConnectTEF conecta sistemas, SmartPOS, fabricantes, adquirentes e recursos operacionais através de uma única plataforma.

Essa arquitetura cria um ecossistema preparado para evolução contínua, permitindo que novas tecnologias sejam incorporadas sem alterar a integração realizada pelo sistema de gestão.

---

# Próximo capítulo

Agora que você conhece o ecossistema ConnectTEF, veremos como iniciar uma nova integração e quais são os primeiros passos recomendados para utilizar a plataforma.

<!-- NAVIGATION_FOOTER:START -->
---
### Veja também
- [README ConnectTEF](../README.md)
- [Índice da Seção](README.md)
- [Primeiros Passos](06-PRIMEIROS-PASSOS.md)
---
**Navegação:** [Anterior](04-ARQUITETURA-GERAL.md) | [Início](../README.md) | [Próximo](06-PRIMEIROS-PASSOS.md)
<!-- NAVIGATION_FOOTER:END -->
