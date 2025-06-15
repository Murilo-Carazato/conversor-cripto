
## - Integração Contínua (CI)

### Segurança e Análise de Código
* **SLSA Generic generator (OpenSSF):** Gera procedência SLSA3 para fluxos de trabalho de lançamento, garantindo a integridade da cadeia de suprimentos de software.
* **Super Linter:** Executa linters para diversas linguagens, verificando arquivos alterados para manter a qualidade e a consistência do código.
* **Pylint:** Realiza análise estática de código (lint) para aplicações em Python.

### JavaScript / Node.js
* **Node.js:** Constrói e testa um projeto Node.js com npm.
* **Grunt:** Constrói um projeto Node.js utilizando npm e Grunt.
* **Gulp:** Constrói um projeto Node.js utilizando npm e Gulp.
* **Webpack:** Constrói um projeto Node.js utilizando npm e webpack.
* **Deno:** Testa projetos desenvolvidos com Deno.
* **Publish Node.js Package:** Publica um pacote Node.js no npm.
* **Publish Node.js Package to GitHub Packages:** Publica um pacote Node.js no GitHub Packages.
* **Datadog Synthetics:** Permite executar testes sintéticos da Datadog dentro do seu fluxo de trabalho no GitHub Actions.

### Python
* **Python application:** Cria e testa uma aplicação em Python.
* **Python package:** Cria e testa um pacote Python em múltiplas versões da linguagem.
* **Python Package using Anaconda:** Cria e testa um pacote Python em múltiplas versões, utilizando Anaconda para o gerenciamento de pacotes.
* **Django:** Constrói e testa um projeto Django.
* **Publish Python Package:** Publica um pacote Python no PyPI (Python Package Index) durante um lançamento.

### Java
* **Java with Maven:** Constrói e testa um projeto Java com Apache Maven.
* **Java with Gradle:** Constrói e testa um projeto Java utilizando um script wrapper do Gradle.
* **Java with Ant:** Constrói e testa um projeto Java com Apache Ant.
* **Publish Java Package with Maven:** Compila um pacote Java com Maven e o publica no GitHub Packages.
* **Publish Java Package with Gradle:** Compila um pacote Java com Gradle e o publica no GitHub Packages.
* **Android CI:** Constrói um projeto Android com Gradle.

### C/C++ e .NET
* **.NET:** Constrói e testa um projeto .NET ou ASP.NET Core.
* **.NET Desktop:** Constrói, testa, assina e publica uma aplicação desktop desenvolvida em .NET.
* **C/C++ with Make:** Constrói e testa um projeto C/C++ utilizando Make.
* **CMake based, single-platform projects:** Constrói e testa um projeto baseado em CMake em uma única plataforma.
* **CMake based, multi-platform projects:** Constrói e testa um projeto baseado em CMake em múltiplas plataformas.
* **MSBuild based projects:** Constrói um projeto baseado em MSBuild.

### PHP
* **PHP:** Constrói e testa uma aplicação PHP utilizando Composer.
* **Symfony:** Testa um projeto desenvolvido com o framework Symfony.
* **Laravel:** Testa um projeto desenvolvido com o framework Laravel.

### Ruby
* **Ruby:** Constrói e testa um projeto Ruby com Rake.
* **Ruby on Rails:** Constrói, analisa (lint) e testa uma aplicação Rails.
* **Ruby Gem:** Publica uma Gem Ruby no RubyGems e no GitHub Package Registry.

### Go
* **Go:** Constrói um projeto em Go.
* **SLSA Go releaser (OpenSSF):** Compila seu projeto Go usando um construtor compatível com SLSA3.

### Containers e Build Genérico
* **Docker image:** Constrói uma imagem Docker para implantar, executar ou enviar para um registro de contêineres.
* **Publish Docker Container:** Constrói, testa e envia uma imagem Docker para o GitHub Packages.
* **Build projects with Make:** Constrói e testa um projeto utilizando Make.
* **Jekyll using Docker image:** Empacota um site Jekyll utilizando a imagem Docker `jekyll/builder`.

### Outras Linguagens e Plataformas
* **Ada:** Constrói um projeto Ada com GPRbuild.
* **Clojure:** Constrói e testa um projeto Clojure com Leiningen.
* **Crystal:** Constrói e testa um projeto Crystal.
* **D:** Constrói e testa um projeto D com dub.
* **Dart:** Constrói e testa um projeto Dart com Pub.
* **Elixir:** Constrói e testa um projeto Elixir com Mix.
* **Erlang:** Constrói e testa um projeto Erlang com rebar.
* **Haskell:** Constrói e testa um projeto Haskell com Cabal.
* **R package:** Cria e testa um pacote R em múltiplas versões do R.
* **Rust:** Constrói e testa um projeto Rust com Cargo.
* **Scala:** Constrói e testa um projeto Scala com SBT.
* **Swift:** Constrói e testa um Pacote Swift.
* **Xcode - Build and Analyze:** Constrói um projeto Xcode utilizando `xcodebuild`.
* **iOS:** Constrói e testa uma aplicação iOS utilizando `xcodebuild` e qualquer simulador de iPhone disponível.

---

## - Implantação (Deployment)

### Microsoft Azure
A Azure oferece uma vasta gama de workflows para diferentes serviços e linguagens:
* **Azure Web App:**
    * **Node.js:** Compila um projeto Node.js e o implanta em um Azure Web App.
    * **Python:** Compila um aplicativo Python e o implanta em um Azure Web App.
    * **Java (.jar):** Compila um projeto Java e o implanta em um Azure Web App.
    * **.NET Core:** Compila um projeto .NET Core e o implanta em um Azure Web App.
    * **PHP:** Compila um aplicativo PHP e o implanta em um Azure Web App.
    * **Contêiner:** Compila uma imagem de contêiner e a implanta em um Azure Web App.
* **Azure Functions App:**
    * **Node.js:** Compila um projeto Node.js e o implanta em um Azure Functions App (Windows ou Linux).
    * **Java:** Compila um projeto Java e o implanta em um Azure Functions App (Windows ou Linux).
    * **.NET Core:** Compila um projeto .NET Core e o implanta em um Azure Functions App (Windows ou Linux).
    * **Python:** Compila um aplicativo Python e o implanta em um Azure Functions App (Linux).
    * **PowerShell:** Implanta um projeto PowerShell em um Azure Functions App (Windows ou Linux).
    * **Contêiner:** Compila uma imagem de contêiner e a implanta em um Azure Functions App (Linux).
* **Azure Kubernetes Service (AKS):**
    * **Implantação geral:** Implanta uma aplicação em um cluster AKS.
    * **Com Helm:** Implanta uma aplicação em um cluster AKS usando Helm.
    * **Com Kompose:** Implanta uma aplicação em um cluster AKS usando Kompose.
    * **Com Kustomize:** Implanta uma aplicação em um cluster AKS usando Kustomize.
* **Azure Static Web Apps:** Compila e implanta uma aplicação web em um Azure Static Web App.

### Google Cloud
A Google Cloud disponibiliza workflows para seus principais serviços de contêineres:
* **Google Kubernetes Engine (GKE):** Cria uma imagem Docker, a publica no Google Container Registry e a implanta no GKE.
* **Google Cloud Run:**
    * **A partir do código-fonte:** Implanta diretamente do código-fonte no Google Cloud Run.
    * **Build e Deploy:** Cria uma imagem Docker, a publica no Google Artifact Registry e a implanta no Google Cloud Run.

### Amazon Web Services (AWS)
A AWS foca em seu serviço de orquestração de contêineres:
* **Amazon Elastic Container Service (ECS):** Implanta um contêiner em um serviço Amazon ECS, utilizando AWS Fargate ou Amazon EC2.

### Outros Provedores e Ferramentas
* **Alibaba Cloud (ACK):** Implanta um contêiner no Alibaba Cloud Container Service for Kubernetes (ACK).
* **IBM Cloud (Kubernetes Service):** Cria uma imagem Docker, a publica no IBM Cloud Container Registry e a implanta no IBM Cloud Kubernetes Service.
* **Tencent Cloud (TKE):** Cria uma imagem Docker, a publica e a implanta no Tencent Kubernetes Engine (TKE).
* **Red Hat (OpenShift):** Compila um projeto baseado em Docker e o implanta no OpenShift.
* **HashiCorp (Terraform):** Configura a CLI do Terraform para ser usada em seu workflow do GitHub Actions.
* **Octopus Deploy:** Cria uma imagem Docker, cria uma release no Octopus Deploy e a implanta em seu ambiente.

---

## - Segurança (Security)

### Análise de Código Estática (SAST)
* **CodeQL Analysis (GitHub):** Análise de segurança para C, C++, C#, Go, Java, JavaScript, TypeScript, Python, Ruby, Kotlin e Swift.
* **Bearer (Bearer):** Ferramenta de varredura (SAST) que descobre, filtra e prioriza riscos de segurança e privacidade.
* **Codacy Security Scan (Codacy):** Análise de segurança gratuita fornecida por várias ferramentas de análise estática de código aberto.
* **DevSkim (Microsoft CST-E):** Linter de segurança que destaca problemas comuns de segurança no código-fonte.
* **ESLint (GitHub Actions):** Ferramenta para identificar e relatar problemas encontrados em código ECMAScript/JavaScript.
* **Fortify Scan (OpenText):** Integra a análise de código estática do Fortify para mais de 33 linguagens nos fluxos de trabalho DevSecOps.
* **JFrog SAST (JFrog):** Verifica vulnerabilidades de segurança no código-fonte usando o JFrog SAST.
* **njsscan (NodeJSScan):** Scanner estático que encontra padrões de código inseguros em aplicações Node.js.
* **Semgrep (Returntocorp):** Executa o Semgrep para encontrar bugs e aplicar padrões de código seguro.
* **SonarCloud (Sonar):** Análise estática para detecção de vulnerabilidades, cobrindo mais de 26 linguagens.
* **SonarQube (Sonar):** Análise estática para detecção de vulnerabilidades, cobrindo mais de 26 linguagens.
* **Xanitizer (RIGS IT):** Analisa o código em busca de vulnerabilidades e gera relatórios de conformidade.
* **Checkmarx (Checkmarx):** Analisa seu código com o Checkmarx One e exibe os resultados na verificação de código do GitHub.
* **CxSAST (Checkmarx):** Analisa seu código com o Checkmarx CxSAST e exibe os resultados na guia de segurança do GitHub.
* **CodeScan (CodeScan Enterprises, LLC):** Permite maior visibilidade em suas verificações de qualidade de código com base em conjuntos de regras personalizados.
* **pmd (pmd):** Analisador de código-fonte estático para Java, JavaScript, Apex, Visualforce, Modelica, PLSQL, Velocity, XML, XSL e Scala.
* **clj-holmes (Matheus Bernardes):** Ferramenta SAST para encontrar código Clojure vulnerável.
* **rust-clippy (GitHub Actions):** Coleção de lints para capturar erros comuns e melhorar seu código Rust.
* **Psalm Security Scan (psalm):** Ferramenta de análise estática para encontrar erros em aplicações PHP.
* **Credo Scan (Credo):** Ferramenta de análise de código estático para Elixir com foco em ensino e consistência.
* **Bandit Scan (abirismyname):** Software gratuito para encontrar problemas comuns de segurança em código Python.
* **PHPMD (GitHub Actions):** Equivalente em PHP da ferramenta Java PMD para análise de código.
* **RuboCop Linting (arthurnn):** Analisador de código estático e formatador de Ruby.
* **Brakeman (Brakeman):** Scanner de vulnerabilidade de análise estática para aplicações Ruby on Rails.
* **Microsoft C++ Code Analysis (Microsoft):** Análise de código com o compilador Microsoft C/C++ para projetos CMake.
* **Flawfinder (David A. Wheeler):** Programa que varre código C/C++ e relata possíveis falhas de segurança.
* **Detekt (Detekt):** Análise de código estática para Kotlin.
* **PSScriptAnalyzer (Microsoft Corporation):** Verificador de código estático para módulos e scripts do PowerShell.
* **Pyre (Meta):** Verificador de tipos performático para Python (PEP 484).
* **Pysa (Meta):** Ferramenta de análise estática focada em segurança que rastreia fluxos de dados.
* **SecurityCodeScan (@security-code-scan):** Detector de padrões de vulnerabilidade para C# e VB.NET.
* **puppet-lint (GitHub Actions):** Testa o código Puppet em relação ao guia de estilo recomendado.
* **Sobelow (nccgroup):** Ferramenta de análise estática focada em segurança para o framework Phoenix.

### Análise de Dependências (SCA)
* **Dependency Review (GitHub Actions):** Verifica Pull Requests em busca de dependências vulneráveis.
* **OSV Scanner (Google):** Scanner de vulnerabilidades para dependências usando dados do osv.dev.
* **Debricked Scan (OpenText):** Integra-se à Análise de Composição de Software da Debricked, alimentada por IA.
* **Endor Labs scan (Endor Labs):** Identifica e prioriza problemas de código aberto e governança de código.
* **Red Hat CodeReady Dependency Analytics (Red Hat):** Analisa as dependências do seu projeto.
* **clj-watson (GitHub Actions):** Verifica projetos Clojure/Clojurescript em busca de dependências vulneráveis.

### Segurança de Infraestrutura como Código (IaC)
* **Snyk Infrastructure as Code (Snyk):** Detecta vulnerabilidades em seus arquivos de IaC.
* **Policy Validator for CloudFormation (Amazon Web Services):** Valida políticas do AWS IAM em modelos do CloudFormation.
* **tfsec (tfsec):** Scanner de segurança de análise estática para seu código Terraform.
* **Policy Validator for Terraform (Amazon Web Services):** Valida políticas do AWS IAM em modelos do Terraform.
* **Zscaler IaC Scan (Zscaler CWP):** Analisa seus arquivos de IaC em busca de problemas de segurança.
* **cloudrail (Indeni Cloudrail):** Verifica seus arquivos de IaC em busca de problemas de segurança e conformidade.
* **Prisma Cloud IaC Scan (Palo Alto Prisma Cloud):** Analisa seus arquivos de IaC com o Prisma Cloud.

### Segurança de Contêineres e Imagens
* **Sysdig Inline Scan (Sysdig):** Realiza análise em imagens de contêiner e gera relatórios SARIF.
* **Snyk Container (Snyk):** Detecta vulnerabilidades em suas imagens de contêiner.
* **Trivy (Aqua Security):** Verifica imagens de contêiner em busca de vulnerabilidades.
* **Haskell Dockerfile Linter (GitHub Actions):** Linter de Dockerfile para ajudar a construir imagens com as melhores práticas.

### Teste de Segurança Dinâmica (DAST) e de API
* **APIsec Scan (APIsec):** Plataforma de teste de API automatizada que descobre vulnerabilidades e falhas lógicas.
* **EthicalCheck (APIsec):** Serviço de teste de segurança de API gratuito e automatizado (baseado na lista OWASP API).
* **Mayhem for API (ForAllSecure):** Testa automaticamente APIs REST com especificações OpenAPI e coleções do Postman.
* **NeuraLegion (NeuraLegion):** Verifica Web Apps, APIs e mobile, fornecendo relatórios acionáveis.
* **StackHawk (StackHawk):** Integra testes DAST e de segurança de API em seu pipeline de CI.
* **42Crunch API Security Audit (42Crunch):** Realiza testes SAST em arquivos OpenAPI/Swagger.
* **SOOS DAST Scan (SOOS):** Scanner de vulnerabilidades web de fácil integração.

### Segurança Mobile
* **Appknox (Appknox):** Avaliações de segurança rápidas e precisas para aplicativos iOS e Android.
* **NowSecure (NowSecure):** Análise de segurança automatizada, rápida e precisa de aplicativos iOS e Android.
* **zScan (Zimperium):** Analisa o binário do seu aplicativo móvel em busca de vulnerabilidades de segurança, privacidade e conformidade.
* **mobsf (mobsf):** Framework de teste de penetração, análise de malware e avaliação de segurança de aplicativos móveis.

### Utilitários e Outros
* **Microsoft Defender For DevOps Scan (Microsoft):** Integra várias ferramentas com o GitHub Advanced Security e envia resultados para o Defender for Cloud.
* **NowSecure Mobile SBOM (NowSecure):** Gera um SBOM (Software Bill of Materials) para um aplicativo móvel.
* **Black Duck Security Scan Workflow (Black Duck Software, Inc.):** Executa a Verificação de Segurança do Black Duck.
* **Jscrambler Code Integrity (Jscrambler):** Protege seu código JavaScript com ofuscação e técnicas de autodefesa.
* **OSSAR (GitHub):** Executa várias ferramentas de análise estática de segurança de código aberto.
* **Synopsys Action (Synopsys):** Configura o pipeline para executar testes de segurança da Synopsys.
* **Synopsys Intelligent Security Scan Action (Synopsys):** Realiza seletivamente varreduras SAST e SCA.
* **Anchore Syft SBOM Scan (Anchore):** Produz listas de materiais de software (SBOMs) com a ferramenta Syft.
* **Anchore Grype Vulnerability Scan (Anchore):** Produz relatórios de vulnerabilidade de código-fonte e contêiner com a ferramenta Grype.
* **Frogbot Scan and Fix (JFrog):** Cria automaticamente pull requests com correções para dependências vulneráveis.
* **Frogbot Scan Pull Request (JFrog):** Analisa novos pull requests em busca de vulnerabilidades.
* **lintr (GitHub Actions):** Fornece análise de código estático para R.
* **Kubesec (Controlplane):** Análise de risco de segurança para recursos do Kubernetes.
* **OSSF Scorecard (OpenSSF):** Avalia a postura de segurança do seu projeto.
* **Datree (Datree):** Detecta configurações incorretas em manifestos do Kubernetes.

---

## - Automação (Automation)

* **Manual workflow:** Um workflow básico acionado manualmente, permitindo a entrada de dados para personalizar a execução.
* **Summarize new issues:** Utiliza IA para resumir novas issues do GitHub e publica o resumo como um comentário.
* **Labeler:** Aplica automaticamente labels a pull requests com base nos caminhos dos arquivos modificados.
* **Greetings:** Envia uma mensagem de boas-vindas a usuários que estão criando sua primeira issue ou pull request.
* **Mark stale issues and pull requests:** Avisa e fecha issues e pull requests inativas por um período especificado.

---

## - GitHub Pages

* **Deploy static content to Pages:** Um workflow simples para implantar conteúdo estático no GitHub Pages.
* **Deploy Hugo site to Pages:** Constrói e implanta um site Hugo no GitHub Pages.
* **Deploy Gatsby site to Pages:** Constrói e implanta um site Gatsby no GitHub Pages.
* **Deploy Astro site to Pages:** Constrói e implanta um site Astro no GitHub Pages.
* **Deploy Next.js site to Pages:** Constrói e implanta um site Next.js no GitHub Pages.
* **Deploy Jekyll site to Pages:** Constrói e implanta um site Jekyll no GitHub Pages.
* **Deploy Jekyll with GitHub Pages dependencies preinstalled:** Constrói e implanta um site Jekyll usando uma ação que já contém as dependências necessárias.
* **Deploy Nuxt site to Pages:** Constrói e implanta um site Nuxt no GitHub Pages.
* **Deploy mdBook site to Pages:** Constrói e implanta um site mdBook no GitHub Pages.