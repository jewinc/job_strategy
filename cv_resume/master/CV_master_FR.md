# Jewin CHENG

**Ingénieur IA / ML · Master Informatique pour la Science des Données (Université Paris-Saclay, diplômé en 2026) · 2 ans d'expérience en production chez Malakoff Humanis**

📧 jewin.cheng@gmail.com · 📱 +33 7 82 91 25 67
🔗 [LinkedIn](http://www.linkedin.com/in/jewin-cheng) · [GitHub](https://github.com/jewinc)
📍 Crosne (région parisienne) · **Disponible immédiatement**

> *Ce document est mon CV maître : un enregistrement exhaustif de mon parcours, de mes expériences et de mes projets. Les candidatures s'appuient sur des CV ciblés dérivés de ce document.*

---

## 🎯 Profil

Ingénieur IA / ML avec deux ans d'expérience en production chez Malakoff Humanis (alternance, septembre 2024 – septembre 2026, menée en parallèle du Master Informatique pour la Science des Données de l'Université Paris-Saclay). Je conçois et mets en production des systèmes d'IA qui rendent exploitables les données non structurées — LLM, RAG, systèmes agentiques, NLP, vision par ordinateur et MLOps — du parsing de documents jusqu'au déploiement. À l'aise pour relier livraison technique et besoins métier grâce à des points réguliers avec les responsables métier. Disponible immédiatement pour un CDI en tant qu'AI Engineer / Data Scientist orienté LLM et RAG.

---

## 🔎 Recherche

- **Situation :** alternance terminée le 11 septembre 2026 — disponible immédiatement.
- **Contrat :** CDI.
- **Postes visés :** AI Engineer · ML Engineer · Data Scientist (LLM / RAG) — ouvert plus largement, de Software Engineer à AI Engineer.
- **Sujets prioritaires :** systèmes agentiques, RAG, LLM, ML.
- **Secteurs d'intérêt :** technologie, finance, santé, jeu vidéo, alimentation.
- **Localisation :** toute la France ; télétravail apprécié.
- **Entreprise idéale :** culture d'apprentissage et de développement personnel, bienveillante et orientée croissance.

---

## 💼 Expérience professionnelle

### AI Engineer / Data Scientist (Alternance)

**Malakoff Humanis — Direction MH Tech, équipe Data Science · Paris** · *Septembre 2024 – septembre 2026 · 2 ans*

Membre d'une équipe Data Science d'environ 30 personnes au sein de la direction MH Tech, en environnement Agile, accompagné par un tuteur d'alternance. Conception et livraison de modèles ML / NLP / Vision par Ordinateur sur des cas d'usage métier de traitement documentaire, de l'exploration à l'industrialisation en batch. Travail réalisé sur une plateforme encadrée par Dataiku (les données clients doivent y rester pour des raisons de confidentialité) avec du code Python sur mesure (PyTorch, scikit-learn, Transformers).

- Pilotage de la partie ingestion d'un **service RAG** alimentant un **chatbot assistant RH interne** : intégration dans le service d'un script de scraping jusque-là lancé à la main (`requests` / BeautifulSoup sur ~180 articles HTML internes → ~1 000 chunks générés par LLM), rendant toute la chaîne **scraping → chunking → indexation** autonome sous forme de job conteneurisé en production. Ajout d'une **ré-ingestion incrémentale par hachage de contenu** sur toutes les étapes, faisant passer une ré-indexation complète de tous les articles de ~2 heures à quelques minutes ; correction d'un **bug de troncature silencieuse du LLM** qui faisait disparaître du contenu d'article (reprise du prompt + changement de modèle). **AWS OpenSearch** en recherche hybride (BM25 + k-NN approximatif), **AWS S3** pour le HTML brut / images / pièces jointes / chunks, appels LLM via un proxy **LiteLLM** (Cohere embed-large, GPT-5.1), tests et couverture contrôlés par une pipeline CI **Jenkins** qui construit et pousse l'image sur un ECR Docker interne. *(Mai – septembre 2026 ; déploiement Airflow réalisé par le Tech Lead.)*
- Construction du cœur du pipeline d'un **système de classification documentaire en batch** (**85 % de précision**) sur des documents contractuels d'assurance santé : **parsing PDF ou OCR** selon le fichier (PDF / images scannées), **échantillonnage pour la labellisation**, **entraînement** du modèle, puis **prédiction en batch** sur l'ensemble du corpus. Appliqué à un **corpus d'environ 1,1 M de documents** (traités en deux lots d'environ 500 K, livrés en 6 puis 2 mois), **extrayant environ 200 K contrats critiques** (conditions particulières) pour les gestionnaires de contrats. Projet de 8 mois, équipe de 5 (3 Data Scientists seniors + 2 alternants). *(Le périmètre initial couvrait aussi la NER et la détection de signature ; seule la classification a été conservée, selon les besoins du sponsor.)*
- Entraînement (sous Dataiku) et intégration d'un modèle de **vision par ordinateur (R-CNN)** dans un pipeline d'extraction d'information par **reconnaissance d'entités nommées (NER)** appliqué aux avis d'imposition français (environ 100 K avis par an, estimation), améliorant la performance globale de **+8 points** par rapport à la baseline précédente basée uniquement sur le QR code (80 %).
- **Fine-tuning d'un modèle BERT** pour la **classification hiérarchique** (3 niveaux, **plus de 200 classes feuilles**) des courriers entrants (environ 20 K mails par mois), atteignant **70 % de précision** en fin d'alternance (modèle encore en itération). Points hebdomadaires avec le project owner métier pour ajuster la cible et restituer l'avancement ; les résultats lui ont permis de détecter des cas particuliers dans le processus courrier et de quantifier les erreurs et contournements de processus par les collaborateurs — jusque-là non mesurables.
- Mise en place du **versioning de modèles, du monitoring et d'un pipeline de prédiction avec MLflow**.

**Stack & outils :** Python · Dataiku · AWS S3 · AWS OpenSearch · Snowflake · Airflow · Jenkins · Docker / ECR · Kubernetes · GitHub · MLflow · LiteLLM · embeddings Cohere · GPT-5.1 · PyTorch · scikit-learn · Transformers (BERT) · R-CNN · OCR · spaCy · NLTK · PyMuPDF · requests / BeautifulSoup · Claude Code (développement assisté par IA : code, débogage, tests et compréhension du code).

### Stagiaire de recherche (rémunéré · en solo)

**Laboratoire des Méthodes Formelles (LMF), Université Paris-Saclay, Orsay, France** · *Juin – août 2024 · 3 mois*

- Étude de la **traçabilité et de la sécurité de la cryptomonnaie Monero** dans le contexte du blanchiment d'argent, centrée sur les **preuves à divulgation nulle de connaissance** qui garantissent sa confidentialité, et explication de ces mécanismes à l'encadrant.
- Développement d'un petit **outil de visualisation des chemins de transactions** traçables, à partir d'une base publique de transactions contaminées.
- Présentation des conclusions à l'encadrant universitaire et à un officier de la gendarmerie spécialisé en cybercriminalité.

### Standardiste — Service général

**Agence nationale de sécurité du médicament et des produits de santé (ANSM), Paris** · *Août 2021 · 1 mois*

- Gestion d'environ 200 appels téléphoniques entrants et sortants par jour, avec routage vers les 14 directions de l'agence ; accueil et orientation des visiteurs.
- Soutien opérationnel transverse aux 14 directions de l'ANSM ; application des protocoles de pharmacovigilance, des exigences de sécurité et des processus d'autorisation et d'enregistrement.
- Analyse des flux d'appels pour optimiser les services du standard.
- Compétences développées : gestion du stress, confidentialité, communication transverse.

---

## 🎓 Formation

### Master Informatique pour la Science des Données (*Master ISD*)

**Université Paris-Saclay, Orsay, France** · *2024 – 2026 · diplômé*
En alternance chez Malakoff Humanis ; rapport d'activité final basé sur le travail d'alternance.

**Programme :**

- **IA & Machine Learning :** Deep Learning (feature engineering, réduction de dimension, clustering, réseaux de neurones, Transformers), LLM, RAG, systèmes agentiques.
- **Data Engineering :** modélisation de bases de données, Data Lake (HDFS, Spark), Data Warehouse (modélisation, OLAP SQL).
- **Visualisation :** Tableau, conception de Dashboards.
- **Algorithmique :** graphes, flots dans les réseaux, preuves d'algorithmes.
- **Mathématiques :** probabilités, statistiques, ACP, SVD.
- **Développement logiciel :** JavaScript, Node.js.

**Projets de cours :**

*IA / ML / LLM*

- **RAG pour la résolution de tickets** *(projet école · équipe de 4)* — Chatbot RAG construit avec LangChain + LangGraph et Snowflake Cortex (Agent, Search, REST API, Threads, Data Warehouse), déployé sur Snowflake en application Streamlit ; ~70 % de faithfullness et de groundedness mesurés par LLM sur 2 000 tickets de test.
- **RAG pour la nutrition** *(projet de cours de 2 mois · chef d'une équipe de 5, l'une des 5 sous-équipes · ~25 étudiants au total)* — Application web où l'utilisateur discute avec un agent pour rechercher ou générer des recettes et poser des questions sur les ingrédients. Pilotage de l'équipe feature design (calcul du nutri-score, substitution ou suppression d'ingrédients, réécriture des étapes de recette) : répartition des tâches, choix des prochaines fonctionnalités et coordination avec les autres chefs d'équipe.
- **Hackathon Gen AI 2026 — Système agentique de génération de code** *(Paris-Saclay × Paris 8 × UQAC · équipe de 4 · avril 2026)* — Pipeline agentique LangGraph + LangChain transformant un besoin utilisateur en spécifications, validation, code et fichiers CI/CD ; livré en extension VS Code.
- **Chatbot d'assurance santé (IBM Cloud)** *(projet de cours en solo)* — Assistant conversationnel IBM Watson Assistant accompagnant les clients d'une assurance santé dans leurs demandes de remboursement (intentions, entités, arbre de dialogue) ; prototype fonctionnel non déployé.

*Data Engineering & Visualisation*

- **Fouille de données — recherche d'itemsets** — Pipeline interactif de recherche d'itemsets fréquents en Java (Choco-Mining / SPMF).
- **Data warehousing** — Conception de schémas en étoile / flocon et implémentation de jobs ETL / ELT.
- **Pipeline ETL & système d'aide à la décision** *(duo · base IGN)* — ETL Python → PostgreSQL → requêtes d'aide à la décision.
- **Dashboard — Criminalité en France depuis 2016** *(solo)* — Dashboard Tableau sur les données ouvertes de `data.gouv.fr` ; trois vues interactives (national, région, commune).
- **Dashboard — Données financières (NASDAQ)** *(solo · code public)* — Application Streamlit avec un back-end FastAPI, sur données Yahoo Finance NASDAQ, deux vues interactives.

*Blockchain & Web*

- **Smart contract Ethereum — mini-jeu TUI** *(duo · code public)* — Mini-jeu interactif TUI à deux joueurs sur le testnet Ethereum, en Python avec `web3`.

### Licence Informatique et Mathématiques

**Université Paris-Saclay, Orsay, France** · *2021 – 2024*
Dernière année (L3) suivie en *parcours magistère* (filière sélective d'excellence).

**Programme :** modèles de classification et de régression, traitement d'images, NLP, traitement de données biomédicales, probabilités, statistiques, algèbre linéaire, paradigmes de programmation (impératif, objet, fonctionnel).

**Projets de cours :**

*Recherche & académique*

- **Réseaux de neurones de graphes appliqués à la blockchain — TER** *(Travail d'Étude et de Recherche · Encadrant : Sylvain Conchon · LMF · Février – Mai 2024 · équipe de 2)* — Implémentation de pipelines GCN / GAT en PyTorch sur des données blockchain réelles extraites de nœuds publics ; objectif : désanonymisation. Mon rôle : écriture du code, mon binôme couvrant la compréhension de l'architecture et les mathématiques sous-jacentes. Travail non mené jusqu'aux résultats finaux. Soutenance finale devant l'encadrant.
- **Étude — Cryptographie et traçabilité de Bitcoin / Monero** *(2023 – 2024)* — Étude approfondie des fondements cryptographiques et des problématiques de traçabilité de Bitcoin et Monero (préalable au stage 2024 au LMF).
- **Projet conjoint EUGLOH — Université Paris-Saclay × Université de Novi Sad** — Projet collaboratif et présentation conjointe avec des étudiants de l'Université de Novi Sad (Serbie), dans le cadre de l'alliance européenne EUGLOH — environnement entièrement anglophone.

*IA / ML / NLP*

- **Pipeline NLP — Articles de recherche en biologie** *(duo · code public)* — Pipeline de préparation de corpus et classification multi-classes avec `scispacy` et `scikit-learn` sur JupyterLab.
- **Pipeline ML — Survie de patients & classification d'images de plantes** *(duo)* — Classification tabulaire et d'images : analyse de données, prétraitement, modèles Perceptron / Random Forest / XGBoost, validation croisée et évaluation accuracy / recall / F1, avec `scikit-learn` sur JupyterLab.

*Langages de programmation, compilateurs & systèmes*

- **Interpréteur Lua (sous-ensemble)** *(projet de cours en solo)* — Implémentation des variables, fonctions et coroutines en OCaml, puis portage en Rust.
- **Kawa — interpréteur d'un langage objet inspiré de Java** *(projet de cours en solo)* — Conception en OCaml : analyseur lexical, syntaxique, vérificateur de types et évaluateur ; classes, héritage, vérification statique.
- **Simulateur d'écosystème lapin / renard (C++)** — Programmation impérative et modulaire avec un Makefile multi-fichiers.
- **Jeu type 2048 (C++)** — Implémentation modulaire.

*Génie logiciel & programmation orientée objet*

- **Logiciel Java en méthodologie cascade** — Rédaction d'une documentation technique conforme à un cahier des charges, puis implémentation en Java en petite équipe (GitHub, IntelliJ IDEA).
- **Jeu de plateau et jeu de labyrinthe (Java / JPanel)** — Architecture MVC, gestion de versions et de conflits avec Git.

*Création numérique*

- **Paysage 3D interactif (Processing)** — Labyrinthe avec textures importées, personnage 3D et caméra à la première personne.

### Baccalauréat général

**Lycée Charlemagne, Paris** · *2018 – 2021*
Mention assez bien.

### TUMO — École de création numérique

**Paris** · *2017 – 2022*
Programme extrascolaire de création numérique : modélisation 3D, jeux vidéo, production musicale, design graphique. Conception des mécaniques de base et de l'histoire d'un jeu sous contraintes temporelles, avec présentation d'une démo à des investisseurs potentiels et intervenants TUMO.

**Projets :** modélisation 3D, jeux vidéo, production musicale, affiches.
Portfolio : [Projets de fin de module](https://drive.google.com/drive/folders/1cY6NnvAhWvOPK17Jikc0ceNIRTRl8PUM?usp=share_link)

---

## 💻 Compétences techniques

**Langages de programmation :** Python · SQL · Java · OCaml · Rust · JavaScript / Node.js · C++ / C · HTML / CSS · Processing · Bash / Shell · Solidity (notions).

**Data Science & ML :** PyTorch · scikit-learn · XGBoost · Hugging Face Transformers (BERT, fine-tuning) · NLP · NER · vision par ordinateur (R-CNN) · OCR / parsing PDF · GNN (GCN, GAT) · spaCy · scispaCy · NLTK · Gensim · PyMuPDF · NumPy · Pandas · Matplotlib.

**LLM / Agentique :** LangChain · LangGraph · LiteLLM · RAG (scraping, chunking, embeddings, recherche hybride BM25 + k-NN, ré-ingestion incrémentale) · systèmes multi-agents · prompt engineering · fine-tuning · évaluation LLM (faithfulness / groundedness) · Snowflake Cortex (Agent, Search, REST API) · IBM Watson Assistant.

**Data Engineering & Plateformes :** AWS S3 · AWS OpenSearch · Snowflake · Airflow · Spark · HDFS · PostgreSQL · pipelines ETL / ingestion · web scraping (requests / BeautifulSoup) · OLAP SQL · data warehousing (schémas en étoile / flocon) · qualité des données · Dataiku · Tableau · Streamlit · FastAPI.

**MLOps & DevOps :** MLflow (versioning, monitoring, pipeline de prédiction) · Docker / ECR · Jenkins · GitHub Actions · Kubernetes · CI/CD · tests unitaires & couverture · Git / GitHub / GitLab · Linux.

**Méthodologies :** Agile · MLOps · Cascade · MVC.

**Outils :** Claude Code (assistant de code IA — usage quotidien pour coder, déboguer, tester et comprendre du code) · JupyterLab / Jupyter Notebook · Google Colab · VS Code · IntelliJ IDEA.

**Création numérique :** Cinema 4D · Unity · Logic Pro · Adobe Illustrator · p5.js.

---

## 📜 Certifications

- **Dataiku Core Designer** — octobre 2024
- **Dataiku ML Practitioner** — janvier 2025

---

## 🌍 Langues

- **Français** — langue maternelle
- **Chinois (Mandarin)** — langue maternelle
- **Anglais** — TOEIC 925/990 (janvier 2025, valide jusqu'en janvier 2027) · Linguaskill 177/180 · participant au programme EUGLOH

---

## 🤝 Associations étudiantes

### APOIL — Université Paris-Saclay · *2021*

Membre durant la première année de licence.

- Animation hebdomadaire de sessions de jeux vidéo sur diverses consoles (rotation des titres et des plateformes).
- Stands d'art ouverts à tous les étudiants (peinture, fabrication de résine).

### Cul'd'jap — Université Paris-Saclay · *L2, 2022 – 2023*

Membre de l'association dédiée à la culture japonaise.

- Promotion des jeux de plateau asiatiques — Go et Shogi — via des sessions d'initiation et des soirées libres.
- Animation d'un atelier cuisine autour de la fabrication de mochi.

---

## 🎯 Centres d'intérêt

- **Programmation & langages** — Intérêt pour les paradigmes de programmation (fonctionnel, objet, impératif), la compilation et les systèmes.
- **Badminton** — Médaille d'or au niveau départemental, participation aux compétitions régionales (au collège, association sportive scolaire).
- **Échecs** — Champion d'école au collège.
- **Modélisation 3D & création numérique** — Programme TUMO, projets personnels.
- **Évènements tech** — Participation au salon *VivaTech* (Paris) pour découvrir des solutions innovantes et le métier d'ingénieur.
- **Musique, jeux vidéo.**

---

*Dernière mise à jour : octobre 2026.*
