### **Lista Definitiva de Workflows Recomendados**

A combinação dos workflows abaixo cria um ambiente de desenvolvimento automatizado, seguro e profissional, cobrindo todo o ciclo de vida da aplicação. Eles foram selecionados para demonstrar as melhores práticas em qualidade de código, segurança (DevSecOps), automação e implantação, formando um pipeline de CI/CD robusto e coeso.

---

### **1. Qualidade e Integração Contínua (CI)**

A base de um pipeline de CI/CD, garantindo que todo código novo segue os padrões de qualidade e não quebra funcionalidades existentes.

| Workflow | Descrição | Arquivo |
| :--- | :--- | :--- |
| **Testes e Lint** | A cada Pull Request, instala as dependências, verifica o estilo do código (lint) e executa os testes automatizados (E2E). | `.github/workflows/ci.yml` |

---

### **2. Segurança (DevSecOps)**

Esses workflows demonstram uma abordagem proativa à segurança em todas as etapas do desenvolvimento.

| Workflow | Descrição | Arquivo |
| :--- | :--- | :--- |
| **Análise de Código (CodeQL)** | Escaneia o código-fonte em busca de vulnerabilidades de segurança conhecidas. É a ferramenta de SAST (Static Application Security Testing) padrão do GitHub. | Gerado pela aba "Security" |
| **Revisão de Dependências** | Previne a adição de novas dependências com vulnerabilidades conhecidas em Pull Requests, complementando a ação do Dependabot. | `.github/workflows/dependency-review.yml` |
| **Linter de Dockerfile (Hadolint)** | Analisa o Dockerfile em busca de más práticas, garantindo que ele seja seguro e eficiente antes mesmo de construir a imagem. | `.github/workflows/docker-linter.yml` |
| **Scanner de Imagem (Trivy)** | Após o build, escaneia a imagem Docker final em busca de vulnerabilidades nos pacotes do sistema, um passo crucial na segurança de contêineres. | Adicionado como um passo no `deploy.yml` |
| **OSSF Scorecard** | Avalia a "saúde" geral das práticas de segurança do repositório, como a proteção de branches e outras configurações importantes. | `.github/workflows/scorecard.yml` |

--- 

### **3. Automação do Repositório**

Mostram profissionalismo na gestão e manutenção do projeto, automatizando tarefas repetitivas.

| Workflow | Descrição | Arquivo |
| :--- | :--- | :--- |
| **Rotulador de PRs (Labeler)** | Aplica labels (ex: `auth`, `database`) automaticamente a um Pull Request com base nos arquivos modificados, facilitando a organização. | `.github/workflows/labeler.yml` |
| **Gerenciador de Itens Inativos (Stale)** | Marca, comenta e eventualmente fecha issues e Pull Requests que estão inativos há muito tempo para manter o backlog limpo. | `.github/workflows/stale.yml` |
| **Criação de Releases** | Automatiza a criação de releases no GitHub, com notas geradas a partir dos commits, sempre que uma nova tag de versão é criada. | `.github/workflows/release.yml` |

---

### **4. Implantação Contínua (CD)**

O passo final que demonstra a capacidade de levar um projeto do código à produção de forma automatizada.

| Workflow | Descrição | Arquivo |
| :--- | :--- | :--- |
| **Deploy na Nuvem** | A cada merge na branch `main`, constrói a imagem Docker da aplicação e a implanta em um provedor de nuvem (ex: Google Cloud Run). | `.github/workflows/deploy.yml` |

***

### **Conclusão**

Esta seleção de workflows é mais do que suficiente para demonstrar um altíssimo nível de conhecimento em práticas de DevOps e DevSecOps. Eles cobrem todas as etapas essenciais:

* **Garantia de Qualidade**: CI, Linters.
* **Segurança em Múltiplas Camadas**: Código, dependências e contêineres.
* **Gestão Automatizada**: Labels, releases e itens inativos.
* **Entrega Contínua**: Deploy automatizado.

Implementar estes workflows contará uma história coesa e profissional, muito mais impactante do que ter dezenas de automações genéricas ou irrelevantes.