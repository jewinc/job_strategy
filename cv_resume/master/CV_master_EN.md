# Jewin CHENG

**AI / ML Engineer · MSc in Computer Science for Data Science (Université Paris-Saclay, graduated 2026) · 2 years of production experience at Malakoff Humanis**

📧 jewin.cheng@gmail.com · 📱 +33 7 82 91 25 67
🔗 [LinkedIn](http://www.linkedin.com/in/jewin-cheng) · [GitHub](https://github.com/jewinc)
📍 Crosne (Paris area) · **Available immediately**

> *This document is my master CV: an exhaustive record of my background, experience and projects. Job applications are based on targeted resumes derived from this document.*

---

## 🎯 Profile

AI / ML Engineer with two years of production experience at Malakoff Humanis (apprenticeship, September 2024 – September 2026, completed alongside an MSc in Computer Science for Data Science at Université Paris-Saclay). I design and ship AI systems that make unstructured data usable — LLMs, RAG, agentic systems, NLP, computer vision and MLOps — from document parsing to production deployment. Comfortable bridging technical delivery and business needs through regular reviews with business owners. Available immediately for a permanent contract (CDI) as an AI Engineer / Data Scientist focused on LLMs and RAG.

---

## 🔎 Job search

- **Status:** apprenticeship ended on 11 September 2026 — available immediately.
- **Contract:** permanent (CDI).
- **Target roles:** AI Engineer · ML Engineer · Data Scientist (LLM / RAG) — open more broadly, from Software Engineer to AI Engineer.
- **Priority topics:** agentic systems, RAG, LLMs, ML.
- **Sectors of interest:** technology, finance, health, video games, food.
- **Location:** anywhere in France; remote preferred.
- **Ideal company:** learning and self-development culture, helpful and growth-focused.

---

## 💼 Professional experience

### AI Engineer / Data Scientist (Apprenticeship — work-study program)

**Malakoff Humanis — MH Tech Division, Data Science team · Paris** · *September 2024 – September 2026 · 2 years*

Member of a ~30-person Data Science team within the MH Tech division, working in an Agile environment and guided by an apprenticeship tutor. Designed and delivered ML / NLP / Computer Vision models for document-processing business use cases, from exploration to batch industrialization. Work carried out on a Dataiku-governed platform (client data must stay on it for confidentiality reasons) with custom Python code (PyTorch, scikit-learn, Transformers).

- Led the ingestion part of a **RAG service** powering an internal **HR assistant chatbot**: folded a manually-run scraping script into the service (`requests` / BeautifulSoup over ~180 internal HTML articles → ~1,000 LLM-generated chunks), making the whole **scraping → chunking → indexing** chain autonomous as a containerized production job. Added **content-hash incremental re-ingestion** across all stages, taking a ~2-hour full re-index of every article down to a few minutes; fixed a **silent LLM truncation bug** that dropped article content (prompt redesign + model change). **AWS OpenSearch** hybrid search (BM25 + approximate k-NN), **AWS S3** for raw HTML / images / attachments / chunks, LLM calls via a **LiteLLM** proxy (Cohere embed-large, GPT-5.1), tests + coverage gating a **Jenkins** CI pipeline that builds and pushes the image to an internal Docker ECR. *(May – September 2026; Airflow deployment handled by the Tech Lead.)*
- Built the core pipeline of a **batch document-classification system** (**85% accuracy**) for health-insurance contract documents: **PDF parsing or OCR** depending on the file (PDF / scanned images), **sampling for the labelling task**, model **training**, then **batch prediction** over the whole corpus. Applied to a **~1.1M-document corpus** (processed in two batches of ~500K, delivered in 6 then 2 months), **extracting ~200K critical contracts** (*conditions particulières*) for contract managers. 8-month project, team of 5 (3 senior Data Scientists + 2 apprentices). *(The initial scope also covered NER and signature detection; only classification was kept, per the sponsor's needs.)*
- Trained (in Dataiku) and integrated a **computer vision (R-CNN)** model into a **Named Entity Recognition (NER)** information-extraction pipeline for French tax notices (~100K notices/year, estimate), improving end-to-end performance by **+8 points** over the previous QR-code-only baseline (80%).
- **Fine-tuned a BERT model** for **hierarchical classification** (3 levels, **200+ leaf classes**) of incoming emails (~20K emails/month), reaching **70% accuracy** by the end of the apprenticeship (model still being iterated). Held weekly reviews with the business project owner to adjust targets and report progress; the results helped the project owner detect edge cases in the mail process and quantify errors and process workarounds by employees — something that could not be measured before.
- Implemented **model versioning, monitoring and a prediction pipeline with MLflow**.

**Stack & tools:** Python · Dataiku · AWS S3 · AWS OpenSearch · Snowflake · Airflow · Jenkins · Docker / ECR · Kubernetes · GitHub · MLflow · LiteLLM · Cohere embeddings · GPT-5.1 · PyTorch · scikit-learn · Transformers (BERT) · R-CNN · OCR · spaCy · NLTK · PyMuPDF · requests / BeautifulSoup · Claude Code (AI-assisted coding, debugging, testing and code understanding).

### Research intern (paid · solo)

**Formal Methods Laboratory (LMF), Université Paris-Saclay, Orsay, France** · *June – August 2024 · 3 months*

- Studied the **traceability and security of the Monero cryptocurrency** in the context of money laundering, focusing on the **zero-knowledge proofs** behind its privacy guarantees, and explained them to the supervisor.
- Built a small **transaction-path visualization tool** tracing traceable transactions, using a public database of contaminated transactions.
- Presented findings to the academic supervisor and to an officer from the French gendarmerie's cybercrime unit.

### Switchboard operator — General services

**French National Agency for Medicines and Health Products Safety (ANSM), Paris** · *August 2021 · 1 month*

- Handled around 200 daily inbound and outbound calls, routing them to the agency's 14 directorates; welcomed and oriented visitors.
- Provided cross-functional operational support across the 14 ANSM directorates; applied pharmacovigilance protocols, security requirements and authorisation/registration processes.
- Analysed call-flow demand to help optimise switchboard service delivery.
- Skills developed: stress management, confidentiality, cross-team communication.

---

## 🎓 Education

### MSc in Computer Science for Data Science (*Master ISD — Informatique pour la Science des Données*)

**Université Paris-Saclay, Orsay, France** · *2024 – 2026 · graduated*
Work-study program with Malakoff Humanis; final activity report based on the apprenticeship work.

**Coursework:**

- **AI & Machine Learning:** Deep Learning (feature engineering, dimensionality reduction, clustering, neural networks, Transformers), LLMs, RAG, agentic systems.
- **Data Engineering:** database modeling, Data Lake (HDFS, Spark), Data Warehouse (modeling, OLAP SQL).
- **Visualization:** Tableau, dashboard design.
- **Algorithms:** graphs, network flows, algorithm proofs.
- **Mathematics:** probability, statistics, PCA, SVD.
- **Software development:** JavaScript, Node.js.

**Course projects:**

*AI / ML / LLM*

- **RAG for ticket resolution** *(school project · team of 4)* — RAG chatbot built with LangChain + LangGraph and Snowflake Cortex (Agent, Search, REST API, Threads, Data Warehouse), deployed as a Streamlit app on Snowflake; ~70% LLM-judged faithfulness/groundedness on 2K sample tickets.
- **RAG for nutrition** *(2-month course project · lead of a 5-person sub-team, one of 5 sub-teams · ~25 students total)* — Conversational web app where users chat with an agent to retrieve or generate recipes and ask questions about ingredients. Led the feature-design sub-team (nutri-score computation, ingredient substitution or removal, recipe-step rewriting): assigned tasks, decided which features to build next and coordinated with the other sub-team leads.
- **Hackathon Gen AI 2026 — Multi-agent code-generation system** *(Paris-Saclay × Paris 8 × UQAC · team of 4 · April 2026)* — LangGraph + LangChain agentic pipeline that turns a user need into specs, validation, code and CI/CD configs; packaged as a VS Code extension.
- **Health-insurance chatbot (IBM Cloud)** *(solo course project)* — IBM Watson Assistant chatbot guiding insurance customers through reimbursement requests (intents, entities, dialog tree); functional course prototype, not deployed.	

*Data Engineering & Visualization*

- **Data mining — itemset mining pipeline** — Interactive frequent-itemset mining pipeline in Java (Choco-Mining / SPMF).
- **Data warehousing** — Star / snowflake schema design and implementation of ETL / ELT jobs.
- **ETL pipeline & decision-support system** *(duo · IGN database)* — Python ETL → PostgreSQL → decision-support queries.
- **Dashboard — Crime in France since 2016** *(solo)* — Tableau dashboard on `data.gouv.fr` open data; three interactive views (country, region, town).
- **Dashboard — Financial data (NASDAQ)** *(solo · code public)* — Streamlit front-end with a FastAPI back-end on Yahoo Finance NASDAQ data, two-view interactive dashboard.

*Blockchain & Web*

- **Ethereum smart contract — TUI mini-game** *(duo · code public)* — Two-player interactive TUI mini-game on Ethereum testnet using Python `web3`.

### BSc in Computer Science and Mathematics

**Université Paris-Saclay, Orsay, France** · *2021 – 2024*
Final year (L3) completed in the *parcours magistère* (selective honors track).

**Coursework:** classification and regression models, image processing, NLP, biomedical data processing, probability, statistics, linear algebra, programming paradigms (imperative, object-oriented, functional).

**Course projects:**

*Research & academic*

- **GNN applied to blockchain — TER** *(Travail d'Étude et de Recherche · Supervisor: Sylvain Conchon · LMF · February – May 2024 · team of 2)* — Implemented GCN / GAT pipelines in PyTorch on real blockchain data extracted from public daemon nodes; goal: de-anonymization. My role: wrote the code, while my teammate covered the architecture and the underlying maths. Work not carried through to final results. Final defense before the supervisor.
- **Research study — Cryptography and traceability of Bitcoin / Monero** *(2023 – 2024)* — In-depth study of the cryptographic foundations and traceability issues of Bitcoin and Monero (precursor to the 2024 internship at LMF).
- **EUGLOH joint project — Université Paris-Saclay × University of Novi Sad** — Collaborative project and joint presentation with students from the University of Novi Sad (Serbia), as part of the European EUGLOH alliance — fully English-speaking environment.

*AI / ML / NLP*

- **NLP pipeline — Biology research articles** *(duo · code public)* — Corpus-preparation pipeline and multi-class classification using `scispacy` and `scikit-learn` in JupyterLab.
- **ML pipeline — Patient survival & plant-image classification** *(duo)* — Tabular and image classification: data analysis, preprocessing, Perceptron / Random Forest / XGBoost models, cross-validation and accuracy / recall / F1 evaluation, using `scikit-learn` in JupyterLab.

*Programming languages, compilers & systems*

- **Lua interpreter (subset)** *(solo course project)* — Implemented variables, functions and coroutines in OCaml, then ported to Rust.
- **Kawa — Java-like object-oriented language interpreter** *(solo course project)* — Designed in OCaml: lexer, parser, static type checker and evaluator; supported classes, inheritance and static type checking.
- **Rabbit / fox ecosystem simulator (C++)** — Imperative and modular programming with a multi-file Makefile.
- **2048-style game (C++)** — Modular implementation.

*Software engineering & object-oriented programming*

- **Java software developed in waterfall methodology** — Wrote technical documentation aligned with formal requirements, then implemented the software in Java with a small team (GitHub, IntelliJ IDEA).
- **Digital board game and maze game (Java / JPanel)** — MVC architecture, version control and conflict management with Git.

*Digital creation*

- **Interactive 3D landscape (Processing)** — Maze with imported textures, 3D character and first-person camera.

### French Baccalauréat (High-school diploma)

**Lycée Charlemagne, Paris** · *2018 – 2021*
Awarded with honors (*Mention Assez Bien*).

### TUMO — School of Digital Creation

**Paris** · *2017 – 2022*
Extracurricular program in digital creation: 3D modeling, video games, music production, graphic design. Designed the core mechanics and storyline of a time-constrained video game and pitched a demo to potential investors and TUMO stakeholders.

**Projects:** 3D modeling, video games, music production, posters.
Portfolio: [End-of-module projects](https://drive.google.com/drive/folders/1cY6NnvAhWvOPK17Jikc0ceNIRTRl8PUM?usp=share_link)

---

## 💻 Technical skills

**Programming languages:** Python · SQL · Java · OCaml · Rust · JavaScript / Node.js · C++ / C · HTML / CSS · Processing · Bash / Shell · Solidity (basics).

**Data Science & ML:** PyTorch · scikit-learn · XGBoost · Hugging Face Transformers (BERT, fine-tuning) · NLP · NER · computer vision (R-CNN) · OCR / PDF parsing · GNN (GCN, GAT) · spaCy · scispaCy · NLTK · Gensim · PyMuPDF · NumPy · Pandas · Matplotlib.

**LLM / Agentic:** LangChain · LangGraph · LiteLLM · RAG (scraping, chunking, embeddings, hybrid BM25 + k-NN retrieval, incremental re-ingestion) · multi-agent systems · prompt engineering · fine-tuning · LLM evaluation (faithfulness / groundedness) · Snowflake Cortex (Agent, Search, REST API) · IBM Watson Assistant.

**Data Engineering & Platforms:** AWS S3 · AWS OpenSearch · Snowflake · Airflow · Spark · HDFS · PostgreSQL · ETL / ingestion pipelines · web scraping (requests / BeautifulSoup) · OLAP SQL · data warehousing (star / snowflake schemas) · data quality · Dataiku · Tableau · Streamlit · FastAPI.

**MLOps & DevOps:** MLflow (versioning, monitoring, prediction pipeline) · Docker / ECR · Jenkins · GitHub Actions · Kubernetes · CI/CD · unit tests & coverage · Git / GitHub / GitLab · Linux.

**Methodologies:** Agile · MLOps · Waterfall · MVC.

**Tools:** Claude Code (AI coding assistant — daily use for coding, debugging, testing and code understanding) · JupyterLab / Jupyter Notebook · Google Colab · VS Code · IntelliJ IDEA.

**Digital creation:** Cinema 4D · Unity · Logic Pro · Adobe Illustrator · p5.js.

---

## 📜 Certifications

- **Dataiku Core Designer** — October 2024
- **Dataiku ML Practitioner** — January 2025

---

## 🌍 Languages

- **French** — native speaker
- **Chinese (Mandarin)** — native speaker
- **English** — TOEIC 925/990 (January 2025, valid until January 2027) · Linguaskill 177/180 · participant in the EUGLOH program

---

## 🤝 Student associations

### APOIL — Université Paris-Saclay · *2021*

Member during the first year of BSc.

- Promoted weekly video-game sessions on various consoles, organising the rotation of titles and platforms.
- Hosted free art-creation stands open to all students (painting, resin making).

### Cul'd'jap — Université Paris-Saclay · *2nd year of BSc, 2022 – 2023*

Member of the association dedicated to Japanese culture.

- Promoted Asian board games — Go and Shogi — through introductory sessions and informal play events.
- Hosted a cooking workshop on mochi making.

---

## 🎯 Interests

- **Programming & languages** — Interest in programming paradigms (functional, object-oriented, imperative), compilation and systems.
- **Badminton** — Gold medal at department level, regional competitions (middle school, school sports association).
- **Chess** — School champion in middle school.
- **3D modeling & digital creation** — TUMO program, personal projects.
- **Tech events** — Attended *VivaTech* (Paris) to explore innovative engineering solutions and the engineering profession.
- **Music, video games.**

---

*Last updated: October 2026.*
