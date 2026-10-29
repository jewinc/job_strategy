# STAR Master — Jewin CHENG

> Internal interview-prep document. Each professional experience and major academic project is written in STAR format (Situation · Task · Action · Result). Reuse for behavioral interviews, motivation letters, and as the source for any targeted CV.
> *Last updated: October 2026.*

---

## 1. Professional experience

### 1.1 AI Engineer / Data Scientist (Apprenticeship) — Malakoff Humanis · MH Tech, Data Science · Paris · *Sept 2024 – Sept 2026 · 2 years*

Apprenticeship ended on 11 September 2026. Apprentice in the Data Science team (~30 people) within the MH Tech division. Worked in an Agile environment, mostly assigned core tasks under a tutor's guidance. Direct exposure to business stakeholders (contract managers, mail-classification project owner).

#### 1.1.a — ML document classification pipeline (1.1M-document corpus)

**Situation.** The MH Tech Data Science team faced a long-standing backlog of ~1.1M unclassified customer contractual documents. Contract managers had to manually search the corpus for specific document types (conditions particulières, conditions générales, notice d'information, tableau de garantie, avenant), creating recurring delays. Original sponsor scope was triple: classification, named-entity recognition (NER), and signature detection.

**Task.** As one of two apprentices alongside three senior data scientists, I was assigned the document-parsing layer (PDF and OCR), the training-data and labeling-sample pipeline, and the prediction pipeline that would run on the full corpus.

**Action.** Implemented PDF parsing with PyMuPDF and OCR fallback for scanned/image documents inside Dataiku (custom Python, no low-code), built the data-prep and label-sampling workflow, trained an ML classification model, and orchestrated the prediction phase. Applied MLOps practices using MLflow (model versioning, monitoring, prediction-pipeline tracking). The project ran across two batches of 500K documents — six months for the first, two months for the second. NER and signature-detection objectives were dropped mid-project after the sponsor reprioritized.

**Result.** Classification model reached 85% accuracy and extracted ~200K critical "conditions particulières" contracts from the 1.1M-document corpus, surfacing the highest-priority documents for contract managers and unlocking work that had been blocked for years. Total project duration: 8 months end-to-end. Backlog was not fully cleared, but the targeted extraction delivered the sponsor-defined value.

#### 1.1.b — R-CNN + NER pipeline for French tax notices

**Situation.** An existing NER pipeline extracting structured information from French tax notices (~100K notices/year) relied solely on QR-code scanning, capping accuracy at ~80% because many tax notices had unreadable codes or none at all.

**Task.** Add a computer-vision component capable of locating informational regions on the document image directly, removing the QR-code dependency.

**Action.** Trained a Region-CNN (R-CNN) model using Dataiku's CV stack to detect bounding regions on tax-notice scans, integrated the detected regions into the upstream NER pipeline, and re-evaluated end-to-end accuracy.

**Result.** End-to-end pipeline performance improved by +8 percentage points over the QR-only baseline (~80%), making extraction robust on documents where QR-code scanning previously failed.

#### 1.1.c — BERT fine-tuning for hierarchical email classification

**Situation.** The customer-relations business team manually triaged ~20K incoming customer emails per month into a 3-level hierarchical taxonomy of 200+ leaf categories — slow, inconsistent, and hard to audit.

**Task.** Build an automated classifier and partner with the project owner to refine the taxonomy and surface mis-routing cases.

**Action.** Fine-tuned a BERT model on a labeled email corpus, ran weekly planning meetings with the project owner to align on target labels, reported model behavior to expose edge cases and label inconsistencies, and iterated on the taxonomy based on business feedback. Model still being iterated when my apprenticeship ended (September 2026).

**Result.** Reached 70% classification accuracy across 200+ leaf classes. Beyond the model, the iterative business review allowed the project owner to (1) quantify error rates in the existing manual process, (2) identify edge cases his team hadn't previously characterized, and (3) detect process-evasion patterns by employees — outcomes the business had no way of measuring before.

#### 1.1.d — RAG ingestion service for the internal HR assistant (May – September 2026)

**Situation.** The HR teams field a constant stream of repetitive questions from employees across the company. The answer content already exists as ~180 HTML "articles" on an internal website. A RAG chatbot was being built on top of it, and the chunking and indexing services already existed — but the data was downloaded by a *separate script run by hand*, then ingestion had to be launched as a second manual step. A full chunking + indexing pass re-processed *every* article and took ~2 hours regardless of how little had changed.

**Task.** I led the ingestion part of the project within a small team: absorb the scraping step into the ingestion service, make the whole scraping → chunking → indexing chain autonomous and production-deployable, and make updates targeted instead of full-corpus.

**Action.**
- Wrote the scraping layer (`requests` + BeautifulSoup) against the internal site (~180 HTML articles) and connected it directly to the existing chunking and indexing services — removing both manual launch steps.
- Implemented **incremental re-ingestion**: hashing the relevant content of each article to detect real changes, and propagating that targeting across all stages so only changed articles are re-scraped, re-chunked and re-indexed.
- Fixed a **silent LLM truncation bug** where part of each article's content was being dropped during chunk generation — resolved by clarifying the prompt responsible for it and switching the model.
- Routed all LLM calls through a **LiteLLM proxy** (Cohere embed-large for embeddings, GPT-5.1 for generation). Stored raw HTML, images and attached files plus the generated chunks in **AWS S3**; indexed to **AWS OpenSearch** with **hybrid search (BM25 + approximate k-NN)**.
- Wrote the complete test suite (plus lint fixes to existing code) to pass the **Jenkins CI pipeline**, which enforces test coverage then builds and pushes the container image to the internal Docker **ECR**. The Tech Lead handled the Airflow deployment itself — I did not do that part.

**Result.** Ingestion runs unattended as a containerized Airflow job in the production environment, with no manual scraping or launch step. A full re-index that previously took ~2 hours for all articles now takes a few minutes, scaled to the size of the change set. ~1,000 chunks from 180 articles are served to the chatbot, restricted to the HR teams for validation before company-wide rollout as of the end of my apprenticeship (September 2026).

---

### 1.2 Research Intern (paid, solo) — Formal Methods Laboratory (LMF), Université Paris-Saclay · *Jun–Aug 2024 · 3 months*

**Situation.** LMF was investigating the traceability and security of the Monero cryptocurrency in the context of money-laundering investigations, with engagement from the French gendarmerie's cybercrime unit.

**Task.** Study the cryptographic foundations of Monero (zero-knowledge proofs, ring signatures, stealth addresses), explain the security model to my supervisor, and prototype a small visualization tool to display traceable-transaction paths.

**Action.** Reviewed the cryptographic literature on Monero's privacy primitives, used a public database of contaminated transactions (transactions known to be linked across the chain) to identify traceable paths, and built a visualization tool to render those paths as transaction graphs.

**Result.** Presented findings and the visualization tool to the academic supervisor and an officer from the French gendarmerie's cybercrime unit. No formal report deliverable.

---

### 1.3 Switchboard Operator — ANSM, Paris · *Aug 2021 · 1 month*

**Situation.** Summer general-services role at the French National Agency for Medicines and Health Products Safety (ANSM), a regulated public agency.

**Task.** Handle ~200 daily inbound and outbound calls, route them to the agency's 14 directorates, and welcome/orient visitors at the entrance.

**Action.** Applied pharmacovigilance protocols, security requirements and authorisation/registration processes; provided cross-functional operational support across the 14 directorates; analysed call-flow demand to help optimise switchboard service delivery; managed peak-hour call volume and confidentiality requirements.

**Result.** One-month role demonstrating stress management, cross-team communication, and confidentiality discipline — baseline soft skills for any role with regulated/sensitive data exposure.

---

## 2. Education

### 2.1 MSc in Computer Science for Data Science (*Master ISD*) — *Université Paris-Saclay, Orsay* — *2024–2026 · graduated*

Work-study program; final activity report based on apprenticeship work at Malakoff Humanis.

**Coursework.** AI & ML (Deep Learning, feature engineering, dimensionality reduction, clustering, neural networks, Transformers, LLMs, RAG, agentic systems) · Data Engineering (database modeling, Data Lake on HDFS/Spark, Data Warehouse, OLAP SQL) · Visualization (Tableau, dashboard design) · Algorithms (graphs, network flows, algorithm proofs) · Mathematics (probability, statistics, PCA, SVD) · Software Development (JavaScript, Node.js).

#### Major course projects (STAR)

##### a. RAG for ticket resolution — *MSc school project · team of 4*

**Situation.** Build and evaluate a retrieval-augmented generation system for support-ticket resolution, with quantitative LLM-judged evaluation.

**Task.** Design, build, and deploy a RAG chatbot capable of resolving support tickets, evaluated on a 2K-ticket benchmark.

**Action.** Designed the architecture with LangChain + LangGraph and Snowflake Cortex (Cortex Agent, Cortex Search, Cortex REST API, Threads, Data Warehouse) for retrieval, generation, and chat handling. Deployed the chatbot as a Streamlit application on Snowflake. Ran evaluation using LLM-judged faithfulness and groundedness metrics on 2K sample tickets.

**Result.** Achieved ~70% on faithfulness and groundedness. Working deployed Streamlit demo on Snowflake.

##### b. RAG for nutrition — *2-month course project · lead of a 5-person sub-team (one of 5) · ~25 students total*

**Situation.** Two-month course project organized as a 25-student collaborative initiative to build a nutrition-domain RAG system, structured into multiple feature sub-teams.

**Task.** Lead the feature-design sub-team — nutri-score computation, ingredient substitution/removal, and recipe-step rewriting — and coordinate with other sub-team leads to align dependencies.

**Action.** As sub-team lead, assigned tasks to teammates, made feature-prioritization decisions, communicated weekly with other sub-team leaders to resolve cross-team dependencies, and contributed development on the feature layer. Final deliverable: a chatbot web application enabling users to retrieve/generate recipes and ask ingredient-level questions.

**Result.** Delivered a working web application within the 2-month deadline. Cross-team coordination experience across a 25-person student project — rare leadership signal at MSc level.

##### c. Hackathon Gen AI 2026 — Multi-agent code-generation system — *Paris-Saclay × Paris 8 × UQAC · team of 4 · April 2026*

**Situation.** Hackathon Gen AI 2026, co-organized by Université Paris-Saclay, Université Paris 8, and UQAC (Chicoutimi). Challenge: build an end-to-end multi-agent generative-AI system addressing a real engineering workflow.

**Task.** As one of 4 developers, contribute to a multi-agent system that takes a user need as input and generates the full project scaffold (specifications, validation, code, CI/CD configuration files).

**Action.** Built agentic workflows with LangGraph + LangChain, contributed to agent-orchestration logic and project-scaffold generation, and integrated the system as a VS Code extension so it could be triggered directly from a developer's IDE. Practiced CI capability building as part of the system's output.

**Result.** Working VS Code extension demoed at the hackathon. Did not qualify for round 2. Hands-on experience with multi-agent orchestration, IDE-integrated tooling, and CI capability — directly transferable to AI/ML engineering.

##### d. ETL pipeline & decision-support system — *duo · IGN database*

**Situation / Task.** Course project on data engineering: build an ETL pipeline feeding a decision-support system on top of the IGN (French national geographic institute) database.

**Action.** Two-person team. Built the ETL pipeline in Python, loaded into PostgreSQL, designed the decision-support queries.

**Result.** Working ETL → PostgreSQL → decision-support flow.

##### e. Tableau dashboard — Crime in France since 2016 — *solo*

Solo Tableau project on `data.gouv.fr` open data. Three interactive views (country, region, town levels). Tableau Desktop deliverable.

##### f. Streamlit dashboard — Financial data (NASDAQ) — *solo · code public on GitHub*

Solo Streamlit front-end with a FastAPI back-end on Yahoo Finance NASDAQ data, two-view interactive dashboard.

##### g. Health-Insurance Chatbot (IBM Watson Assistant) — *solo course project*

Solo course project on IBM Cloud — designed and configured an IBM Watson Assistant chatbot covering an insurance reimbursement flow (intents, entities, dialog tree). Functional course prototype, not deployed; no real users.

##### h. Ethereum smart-contract mini-game — *duo · code public*

Built an interactive TUI two-player mini-game on the Ethereum testnet using the Python `web3` library.

##### i. Data mining — itemset mining pipeline

Interactive frequent-itemset mining pipeline in Java (Choco-Mining / SPMF).

##### j. Data warehousing

Star / snowflake schema design and implementation of ETL / ELT jobs.

---

### 2.2 BSc in Computer Science and Mathematics — *Université Paris-Saclay, Orsay* — *2021–2024*

Final year (L3) completed in the *parcours magistère* (selective honors track).

**Coursework.** Classification and regression models · image processing · NLP · biomedical data processing · probability · statistics · linear algebra · programming paradigms (imperative, object-oriented, functional).

#### Major course projects (STAR)

##### a. GNN + Blockchain TER — *Travail d'Étude et de Recherche · LMF · February–May 2024 · team of 2*

**Situation.** Final-year BSc research project (TER) at LMF, building on the lab's prior work on cryptocurrency traceability. Goal: explore Graph Neural Networks for blockchain de-anonymization. Final defense before the supervisor.

**Task.** In a team of 2, evaluate GNN architectures (GCN, GAT) on real blockchain data extracted from public daemon nodes.

**Action.** I owned the implementation track — wrote the data pipeline, GCN/GAT model code, and training/inference scripts in PyTorch. My teammate handled architecture comprehension and the underlying graph-learning math.

**Result.** Exploration phase did not yield final accuracy/F1 metrics within the 4-month window. Delivered a PyTorch codebase and a working understanding of GCN / GAT on blockchain data — and led directly to the LMF research internship in summer 2024.

##### b. Lua interpreter (OCaml → ported to Rust) — *solo course project · code can be made public*

Compiler / programming-languages course. Implemented a Lua subset (variables, functions, coroutines) in OCaml, then ported the same subset to Rust as a follow-up exercise. Hands-on experience with lexer/parser/evaluator design and idiomatic Rust.

##### c. Kawa — Java-like OOP language interpreter (OCaml) — *solo course project · code can be made public*

Compiler / PL course project. Solo. Designed lexer, parser, static type-checker, and evaluator in OCaml. Supported classes, inheritance, and static type checking. Strong systems-level signal that complements the AI/ML profile.

##### d. NLP pipeline — Biology research articles — *duo · code public*

Duo course project. Built a corpus-preparation pipeline and trained models for multi-class classification on biology articles using `scispacy` and `scikit-learn` in JupyterLab. Notebook-based deliverable.

##### e. ML pipeline — Patient survival & plant-image classification — *duo*

Duo course project. Tabular and image classification: data analysis, preprocessing, Perceptron / Random Forest / XGBoost models, cross-validation and accuracy / recall / F1 evaluation, in JupyterLab using `scikit-learn`. Notebook-based deliverable.

##### f. Research study — Cryptography and traceability of Bitcoin / Monero — *2023–2024*

In-depth study of the cryptographic foundations and traceability issues of Bitcoin and Monero. Direct precursor to the 2024 LMF internship — established the theoretical baseline that made the internship application credible.

##### g. EUGLOH joint project — Université Paris-Saclay × University of Novi Sad

Collaborative project and joint presentation with students from the University of Novi Sad (Serbia), as part of the European EUGLOH alliance — fully English-speaking environment.

##### h. Other projects

- **Rabbit / fox ecosystem simulator (C++).** Imperative and modular programming, multi-file Makefile.
- **2048-style game (C++).** Modular implementation.
- **Java software in waterfall methodology.** Wrote technical documentation aligned with formal requirements, then implemented the software in Java with a small team (GitHub, IntelliJ IDEA).
- **Digital board game and maze game (Java / JPanel).** MVC architecture, version control with Git.
- **Interactive 3D landscape (Processing).** Maze with imported textures, 3D character, first-person camera.

---

### 2.3 French Baccalauréat — *Lycée Charlemagne, Paris* — *2018–2021*

Awarded with honors (*Mention Assez Bien*).

---

### 2.4 TUMO — School of Digital Creation — *Paris* — *2017–2022*

Extracurricular program in digital creation: 3D modeling, video games, music production, graphic design. Designed the core mechanics and storyline of a time-constrained video game and pitched a demo to potential investors and TUMO stakeholders.
Portfolio: [End-of-module projects](https://drive.google.com/drive/folders/1cY6NnvAhWvOPK17Jikc0ceNIRTRl8PUM?usp=share_link)

---

## 3. Technical skills

- **Programming languages.** Python · SQL · Java · OCaml · Rust · JavaScript / Node.js · C++ / C · HTML / CSS · Processing · Bash / Shell · Solidity (basics).
- **AI / ML.** PyTorch · scikit-learn · XGBoost · Hugging Face Transformers (BERT, fine-tuning) · NLP · NER · computer vision (R-CNN) · OCR / PDF parsing · GNN (GCN, GAT) · spaCy · scispaCy · NLTK · Gensim · PyMuPDF · NumPy · Pandas · Matplotlib.
- **LLM / Agentic.** LangChain · LangGraph · LiteLLM · RAG (scraping, chunking, embeddings, hybrid BM25 + k-NN retrieval, incremental re-ingestion) · multi-agent systems · prompt engineering · fine-tuning · LLM evaluation (faithfulness / groundedness) · Snowflake Cortex (Agent, Search, REST API) · IBM Watson Assistant.
- **Data engineering & platforms.** AWS S3 · AWS OpenSearch · Snowflake · Airflow · Spark · HDFS · PostgreSQL · ETL / ingestion pipelines · web scraping (requests / BeautifulSoup) · OLAP SQL · data warehousing (star / snowflake schemas) · data quality · Dataiku · Tableau · Streamlit · FastAPI.
- **MLOps & DevOps.** MLflow (versioning, monitoring, prediction pipeline) · Docker / ECR · Jenkins · GitHub Actions · Kubernetes · CI/CD · unit tests & coverage · Git / GitHub / GitLab · Linux.
- **Methodologies.** Agile · MLOps · Waterfall · MVC.
- **Tools.** Claude Code (AI coding assistant — daily use for coding, debugging, testing and code understanding) · JupyterLab / Jupyter Notebook · Google Colab · VS Code · IntelliJ IDEA.
- **Digital creation.** Cinema 4D · Unity · Logic Pro · Adobe Illustrator · p5.js.

---

## 4. Certifications

- **Dataiku Core Designer** — October 2024
- **Dataiku ML Practitioner** — January 2025

---

## 5. Languages

- **French** — native speaker
- **Mandarin Chinese** — native speaker
- **English** — TOEIC 925/990 (January 2025, valid until January 2027) · Linguaskill 177/180 · participant in the EUGLOH program

---

## 6. Student associations

### APOIL — Université Paris-Saclay · *2021*

Member during the first year of BSc. Promoted weekly video-game sessions on various consoles (managing title rotation and platform setup) and hosted free art-creation stands open to all students (painting, resin making).

### Cul'd'jap — Université Paris-Saclay · *2nd year of BSc, 2022 – 2023*

Member of the association dedicated to Japanese culture. Promoted Asian board games — Go and Shogi — through introductory sessions and informal play events; hosted a cooking workshop on mochi making.

---

## 7. Interests

- **Programming languages & systems** — interest in programming paradigms (functional, object-oriented, imperative), compilation, language design.
- **Badminton** — gold medal at department level, regional competitions (middle-school era).
- **Chess** — school champion in middle school.
- **3D modeling & digital creation** — TUMO program, personal projects.
- **Tech events** — attended *VivaTech* (Paris) to explore innovative engineering solutions and the engineering profession.
- **Music, video games.**
