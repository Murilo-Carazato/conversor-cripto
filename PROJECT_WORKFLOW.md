# 🚀 Guia de Gestão e Workflow do Projeto

Este documento detalha a metodologia de gestão e o fluxo de trabalho de desenvolvimento adotados para este projeto, utilizando o `GitHub Projects` como ferramenta central. O objetivo é garantir um processo organizado, rastreável e profissional do início ao fim.

## 1. Estrutura e Configuração Inicial

Para garantir a organização desde o começo, a seguinte estrutura foi implementada:

#### Template de Projeto

Foi utilizado o template **"Iterative development"**, que foca no planeamento e execução de trabalho em ciclos curtos e definidos (iterações/sprints).

#### Templates de Issues

Para padronizar a criação de tarefas, foram criados templates customizados na pasta `.github/ISSUE_TEMPLATE` do repositório para:

* **✨ Solicitação de Funcionalidade:** Para novas features e endpoints.
* **🐛 Relato de Bug:** Para reportar comportamentos inesperados.
* **🔧 Tarefa Técnica:** Para configurações, refatorações, débitos técnicos e outras tarefas não funcionais.

## 2. Convenções e Padrões do Projeto

Para manter a consistência em todo o projeto, seguimos um conjunto de convenções para nomenclatura e classificação.

### Padrão de Nomenclatura de Issues

Cada issue deve seguir um padrão claro para identificação rápida.

* **Formato:** `CATEGORIA-ID: [TIPO] Descrição da Tarefa`
* **`CATEGORIA-ID`:** Um prefixo para agrupar tarefas relacionadas (ex: `AUTH-1`, `SETUP-2`).
* **`[TIPO]`:** O tipo de trabalho, derivado do template utilizado (ex: `[FEAT]`, `[TASK]`, `[BUG]`).
* **Exemplo:** `AUTH-1: [FEAT]: Implementar endpoint POST /auth/register`

### Padrão de Nomenclatura de Branches

As branches criadas a partir de uma issue devem seguir o padrão sugerido pelo GitHub para manter a rastreabilidade.

* **Formato:** `id-da-issue-descrição-da-tarefa`
* **Exemplo:** `1-feat-implementar-endpoint-post-auth-register`

### Padrão para Mensagens de Commit

Utilizamos o padrão **Conventional Commits** para tornar as mensagens de commit mais informativas e preparadas para automação.

* **Formato:** `tipo(escopo): mensagem do commit`
* **`tipo`:** `feat` (nova funcionalidade), `fix` (correção de bug), `chore` (manutenção, config), `docs` (documentação), `refactor` (refatoração de código).
* **`(escopo)`:** A parte da aplicação que foi modificada (ex: `auth`, `prisma`, `conversions`).
* **Exemplo:** `feat(auth): adiciona criptografia de senha no serviço de registro`

### Padrão de Uso de Labels

As labels são usadas para categorizar e filtrar issues rapidamente.

* `feature`, `enhancement`: Para novas funcionalidades visíveis ao usuário.
* `bug`: Para correções de comportamento inesperado.
* `chore`: Para tarefas de manutenção que não adicionam novas funcionalidades (ex: setup, deploy, atualização de dependências).
* `documentation`: Para qualquer tarefa relacionada à documentação do projeto.

## 3. Conceitos de Planeamento

Para planeamento e priorização, utilizamos campos customizados no quadro do projeto:

* **Priority (Prioridade):** Define a urgência de uma tarefa (`P0` - Crítica, `P1` - Alta, `P2` - Média).
* **Size (Tamanho):** Mede a complexidade e o esforço relativo da tarefa.
* **Estimate (Estimativa):** Mede o tempo de trabalho estimado para a conclusão da tarefa. A relação entre `Size` e `Estimate` segue a tabela abaixo:

| Size (Tamanho) | Estimate (Estimativa de Tempo Sugerida) | Descrição                                                           |
| :------------- | :-------------------------------------- | :------------------------------------------------------------------ |
| **S** (Pequeno) | 1-2h                                    | Tarefa rápida, geralmente de configuração ou um ajuste simples.     |
| **M** (Médio)   | 3-5h                                    | Tarefa que leva uma boa parte de um dia, como um endpoint completo. |
| **L** (Grande)  | 6-8h                                    | Tarefa complexa que pode levar um dia inteiro de trabalho focado.   |

### Visão Geral do Projeto (Status e Prazos)

Além das tarefas individuais, o projeto como um todo possui um status e prazos definidos para uma visão macro do progresso.

* **Project Status (Status do Projeto):** Define a saúde geral do projeto.
    * `On track` (No caminho certo): O estado atual. O projeto segue o planeado sem riscos ou desafios inesperados.
    * `At risk` (Em risco): O projeto encontrou alguns desafios.
    * `Off track` (Fora do rumo): O projeto está atrasado e precisa de atenção.
* **Project Dates (Datas do Projeto):**
    * **Data de Início:** 11 de Junho de 2025.
    * **Data Alvo:** 18 de Junho de 2025 (considerando o prazo de 7 dias do desafio).

### Status Update (Diário de Bordo)

Utilizado para comunicar o progresso diário. É uma forma de manter um registo do desenvolvimento.
> **Exemplo de Update:** _"12 de Junho: Finalizada a configuração inicial do projeto e a estruturação dos módulos. A próxima etapa é focar na implementação do módulo de autenticação."_

## 4. Organização do Trabalho no Quadro

A gestão do trabalho é feita através de diferentes quadros (vistas) e colunas, cada um com um propósito específico.

#### Hierarquia dos Quadros

* **`Prioritized Backlog` (Visão Mestra):** Contém **todas as 14 issues** do projeto. É a fonte única da verdade para tudo o que precisa ser feito.
* **`Current Iteration` (Visão de Foco):** Contém apenas as 8 issues da **Iteração 1**. Representa o trabalho a ser feito no ciclo atual.
* **`Next Iteration` (Visão de Futuro):** Contém as 6 issues da **Iteração 2**, prontas para o próximo ciclo.

#### O Fluxo das Colunas

As tarefas movem-se pelas colunas da esquerda para a direita à medida que progridem:

1.  **`Backlog`**: Onde todas as tarefas começam.
2.  **`Ready`**: Tarefas prontas para serem desenvolvidas.
3.  **`In Progress`**: A tarefa que está sendo ativamente codificada.
4.  **`In Review`**: Para tarefas cujo Pull Request foi aberto e aguarda revisão.
5.  **`Done`**: Tarefas concluídas e mescladas na branch principal.

#### Vistas de Apoio (`In Review` e `My Items`)

Além dos quadros principais, existem vistas filtradas que servem como atalhos:

* **Tabela `In Review`**: Mostra apenas os itens cujo `Status` é "In Review". É útil para ter uma visão rápida de todos os Pull Requests que precisam de atenção.
* **Tabela `My Items`**: Mostra apenas as issues que estão atribuídas a você (`Assignees`). Em um projeto solo, ela espelha o quadro geral, mas em equipas, é fundamental para o foco individual.

**Conclusão:** O foco do trabalho diário deve ser nos quadros `Prioritized Backlog` e `Current Iteration`. As outras tabelas são vistas de apoio para situações específicas.

## 5. Estratégias Avançadas de Planeamento

#### Sub-issues (Sub-tarefas)

* **Quando usar:** Para quebrar tarefas grandes (L ou XL) em partes menores e gerenciáveis.
* **Exemplo:** A issue `CONV-1` (tamanho L) pode ser dividida em sub-tarefas como "Criar DTO", "Implementar cálculo no service" e "Integrar API externa".
* **Vantagem:** Permite um acompanhamento de progresso mais granular.

#### Drafts (Rascunhos)

* **Quando usar:** Para anotar rapidamente uma ideia ou lembrete sem a formalidade de uma issue completa.
* **Exemplo:** Anotar "Refatorar UsersService" como um rascunho para ser convertido em uma issue formal mais tarde.

## 6. Visão Estratégica com o Roadmap

O `Roadmap` é uma ferramenta de visualização de alto nível e de longo prazo. Enquanto os quadros de `Iteration` mostram os detalhes do *que* você está fazendo semana a semana, o `Roadmap` mostra *quando* as grandes entregas acontecerão ao longo do tempo.

#### Para que serve neste projeto?

* **Visualizar o Cronograma Geral:** Ele coloca as `Iterations` (com suas datas de início e fim) em uma linha do tempo, fornecendo uma visão clara do cronograma de desenvolvimento.
* **Acompanhar Grandes Funcionalidades ("Epics"):** Permite visualizar como os grandes blocos de trabalho (ex: `AUTH-*`, `CONV-*`) se distribuem ao longo das iterações.
* **Comunicar o Planeamento:** Para um avaliador, o `Roadmap` é a forma mais rápida de entender o plano de ataque do projeto, demonstrando planeamento lógico e consciência de prazos.

**Conclusão:** O `Roadmap` é menos uma ferramenta de trabalho do dia a dia e mais uma ferramenta de **visualização e comunicação do planeamento estratégico**.

## 7. O Fluxo de Trabalho de Desenvolvimento

Este é o passo a passo para desenvolver qualquer tarefa no projeto, conectando o planeamento ao código.

#### Passo 1: Criar e Organizar a Issue
1.  Crie a **Issue** usando o template apropriado e seguindo o padrão de nomenclatura.
2.  Acesse o **Quadro do Projeto** para localizar a nova issue no `Backlog`.
3.  Defina os campos **`Priority`**, **`Size`**, **`Estimate`** e mova a issue para a **`Iteration`** correta.

#### Passo 2: Definir Relacionamentos e Dependências
* Se a tarefa "B" depende da "A", abra a issue "B" e, em `Relationships`, configure-a como **"Blocked by"** (Bloqueada por) "A".

#### Passo 3: Desenvolver a Tarefa
1.  **Criar uma Branch:** Na página da Issue, vá em `Development` e clique em **"Create a branch"**.
2.  **Codificar:** Desenvolva a funcionalidade na nova branch, seguindo os padrões de código.
3.  **Abrir um Pull Request (PR):** Ao enviar sua branch, abra um Pull Request. Ele será automaticamente vinculado à sua Issue.
4.  **Merge e Conclusão:** Após o PR ser aprovado e mesclado, a Issue será fechada, e o card no quadro moverá para **"Done"**.

## 8. Métricas e Automação

#### Gráficos (Aba Insights)
A aba "Insights" é usada para criar gráficos que fornecem uma visão quantitativa do progresso e do planeamento do projeto. Os seguintes gráficos foram configurados:

* **Progresso da Iteração Atual (Burn Up)**
    * **Finalidade:** Acompanhar o progresso da iteração atual ao longo do tempo, mostrando quanto trabalho (em horas estimadas) foi concluído em comparação com o escopo total. Ideal para identificar tendências e garantir que o ritmo de trabalho é adequado para cumprir a meta da iteração.
    * **Configuração:**
        * **Layout:** `Stacked Area`
        * **X-axis (Eixo X):** `Time`
        * **Y-axis (Eixo Y):** `Sum of a field` -> `Estimate`
        * **Group by (Agrupar por):** `Status`

* **Carga de Trabalho por Tamanho**
    * **Finalidade:** Entender rapidamente a distribuição de tarefas pequenas, médias e grandes no projeto, ajudando a identificar se o backlog está bem balanceado.
    * **Configuração:**
        * **Layout:** `Bar`
        * **X-axis (Eixo X):** `Size`
        * **Y-axis (Eixo Y):** `Count of items`
        * **Group by (Agrupar por):** `None`

#### Workflows (Automações)

Configure automações para que o quadro se atualize sozinho.

* **Item Fechado:** Quando uma Issue/PR é fechada, o `Status` muda para `Done`.
* **PR Aberto:** Quando um PR é aberto, o `Status` muda para `In Review`.
* **Arquivamento:** Itens em `Done` por mais de 14 dias são arquivados automaticamente.

===

PROMPT Q FALTA ANALISAR:

vc não documentou especificamente dos elementos que já existem atualmente no github projects

crie charts da aba Insights:
existem layouts como: column, bar, line, stacked area, stacked bar, stacked column
X-axis:Time,Assignees,Iteration,Labels,Milestone,Parent issue,riority,Repository,Size,Status
Group by (optional): Time,Assignees,Iteration,Labels,Milestone,Parent issue,riority,Repository,Size,Status
Y-axis: Count of items,Sum of a field,Average of a field,Minimum of a field,Maximum of a field
ex: The Burn up chart shows the progress of your project items over time, showing how much work has been completed and how much is left to do. Use this chart to view progress, spot trends, and identify bottlenecks to help move the project forward.

crie Workflows como códigos:
Item added to project
Item reopened
Item closed
Code changes requested
Code review approved
Pull request merged
Auto-archive items
Auto-add to project
Auto-close issue
Auto-add sub-issues to project
