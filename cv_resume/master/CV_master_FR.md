# Jewin CHENG

**Data Scientist · Étudiant en Master Informatique pour la Science des Données — Université Paris-Saclay**

📧 jewin.cheng@gmail.com · 📱 +33 7 82 91 25 67
🔗 [LinkedIn](http://www.linkedin.com/in/jewin-cheng) · [GitHub](https://github.com/jewinc)

> *Ce document est mon CV maître : un enregistrement exhaustif de mon parcours, de mes expériences et de mes projets. Les candidatures s'appuient sur des CV ciblés dérivés de ce document.*

---

## 🎯 Profil

Ingénieur IA / ML en dernière année de Master Informatique pour la Science des Données (Paris-Saclay), avec deux ans d'expérience à concevoir et déployer des systèmes d'IA en production en tant que Data Scientist chez Malakoff Humanis. Spécialité : rendre exploitables des données peu structurées — NLP, vision par ordinateur, MLOps et systèmes d'IA modernes (LLM, RAG, systèmes agentiques, fine-tuning, prompt engineering, évaluation LLM). À l'aise pour relier livraison technique et besoins métier. Également intéressé par les langages de programmation, la recherche opérationnelle et la sécurité informatique.

---

## 💼 Expérience professionnelle

### Data Scientist (Alternance)
**Malakoff Humanis — Direction MH Tech, équipe Data Science · Paris** · *2024 – 2026*

Membre de l'équipe Data Science au sein de la direction MH Tech, en environnement Agile. Conception et livraison de modèles ML / NLP / Vision par Ordinateur sur des cas d'usage métier de traitement documentaire, de l'exploration à l'industrialisation en batch.

- Pilotage de la partie ingestion d'un **service RAG** alimentant un **chatbot assistant RH interne** : intégration dans le service d'un script de scraping jusque-là lancé à la main (`requests` / BeautifulSoup sur ~180 articles HTML internes → ~1 000 chunks générés par LLM), rendant toute la chaîne **scraping → chunking → indexation** autonome sous forme de job conteneurisé en production. Ajout d'une **ré-ingestion incrémentale par hachage de contenu** sur toutes les étapes, faisant passer une ré-indexation complète de tous les articles de ~2 heures à quelques minutes ; correction d'un **bug de troncature silencieuse du LLM** qui faisait disparaître du contenu d'article (reprise du prompt + changement de modèle). **AWS OpenSearch** en recherche hybride (BM25 + k-NN approximatif), **AWS S3** pour le HTML brut / images / pièces jointes / chunks, appels LLM via un proxy **LiteLLM** (Cohere embed-large, GPT-5.1), tests et couverture contrôlés par une pipeline CI **Jenkins** qui construit et pousse l'image sur un ECR Docker interne. *(Mai 2026 – en cours ; déploiement Airflow réalisé par le Tech Lead.)*
- Conception et déploiement (en batch) d'un **modèle de classification ML** (85 % de précision) suivant les bonnes pratiques **MLOps**, qualifiant un million de documents contractuels clients et débloquant un stock accumulé depuis plusieurs années pour les gestionnaires de contrats.
- Ajout d'une fonctionnalité de **vision par ordinateur (R-CNN)** améliorant de **+7 %** les performances d'un pipeline d'extraction d'information par **reconnaissance d'entités nommées (NER)** appliqué aux avis d'imposition français.
- **Fine-tuning d'un modèle BERT** pour la classification hiérarchique (3 niveaux) des courriers entrants, en appui aux équipes métier dans le traitement des demandes clients.

**Stack & outils :** Dataiku · AWS S3 · AWS OpenSearch · Snowflake · Airflow · Jenkins · Docker / ECR · Kubernetes · GitHub · MLflow · LiteLLM · embeddings Cohere · GPT-5.1 · PyTorch · scikit-learn · spaCy · NLTK · PyMuPDF · requests / BeautifulSoup.

### Stagiaire de recherche
**Laboratoire des Méthodes Formelles (LMF), Orsay, France** · *Juin – Août 2024*

- Étude de la **traçabilité et de la sécurité de la cryptomonnaie Monero** dans le contexte du blanchiment d'argent.
- Présentation des conclusions à l'encadrant universitaire et à un officier en cyber criminalité, contribuant au pistage et au démantèlement de réseaux criminels.

### Standardiste — Service général
**Agence nationale de sécurité du médicament et des produits de santé (ANSM), Paris** · *Juin – Août 2021*

- Gestion d'environ 200 appels téléphoniques entrants et sortants par jour, avec routage vers les 14 directions de l'agence ; accueil et orientation des visiteurs.
- Soutien opérationnel transverse aux 14 directions de l'ANSM ; application des protocoles de pharmacovigilance, des exigences de sécurité et des processus d'autorisation et d'enregistrement.
- Analyse des flux d'appels pour optimiser les services du standard.
- Compétences développées : gestion du stress, confidentialité, communication transverse.

---

## 🎓 Formation

### Master Informatique pour la Science des Données (*Master ISD*)
**Université Paris-Saclay, Orsay, France** · *2024 – 2026*
Rapport d'activité final basé sur le travail d'alternance.

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
- **RAG pour la nutrition** *(projet de cours de 2 mois · responsable d'équipe · ~25 étudiants)* — Application web conversationnelle pour la recherche / génération de recettes et des questions sur les ingrédients ; encadrement de l'équipe feature design (calcul du nutri-score, substitution d'ingrédients, réécriture des étapes de recette) et coordination avec les autres responsables d'équipe.
- **Hackathon Gen AI 2026 — Système agentique de génération de code** *(Paris-Saclay × Paris 8 × UQAC · équipe de 4)* — Pipeline agentique LangGraph + LangChain transformant un besoin utilisateur en spécifications, validation, code et fichiers CI/CD ; livré en extension VS Code.
- **Chatbot d'assurance santé (IBM Cloud)** *(projet de cours en solo)* — Assistant conversationnel IBM Watson Assistant accompagnant les clients d'une assurance santé dans leurs demandes de remboursement (intentions, entités, arbre de dialogue) ; prototype fonctionnel non déployé.

*Data Engineering & Visualisation*
- **Pipeline ETL & système d'aide à la décision** *(duo · base IGN)* — ETL Python → PostgreSQL → requêtes d'aide à la décision.
- **Dashboard — Criminalité en France depuis 2016** *(solo)* — Dashboard Tableau sur les données ouvertes de `data.gouv.fr` ; trois vues interactives (national, région, commune).
- **Dashboard — Données financières (NASDAQ)** *(solo · code public)* — Application Streamlit sur données Yahoo Finance NASDAQ, deux vues interactives.

*Blockchain & Web*
- **Smart contract Ethereum — mini-jeu TUI** *(duo · code public)* — Mini-jeu interactif TUI à deux joueurs sur le testnet Ethereum, en Python avec `web3`.

### Licence Informatique et Mathématiques
**Université Paris-Saclay, Orsay, France** · *2021 – 2024*
Dernière année (L3) suivie en *parcours magistère* (filière sélective d'excellence).

**Programme :** modèles de classification et de régression, traitement d'images, NLP, traitement de données biomédicales, probabilités, statistiques, algèbre linéaire, paradigmes de programmation (impératif, objet, fonctionnel).

**Projets de cours :**

*Recherche & académique*
- **Réseaux de neurones de graphes appliqués à la blockchain — TER** *(Travail d'Étude et de Recherche · Encadrant : Sylvain Conchon · LMF · Février – Mai 2024 · équipe de 2)* — Implémentation de pipelines GCN / GAT en PyTorch sur des données blockchain réelles extraites de nœuds publics ; objectif : désanonymisation. Soutenance finale devant l'encadrant.
- **Étude — Cryptographie et traçabilité de Bitcoin / Monero** *(2023 – 2024)* — Étude approfondie des fondements cryptographiques et des problématiques de traçabilité de Bitcoin et Monero (préalable au stage 2024 au LMF).
- **Projet conjoint EUGLOH — Université Paris-Saclay × Université de Novi Sad** — Projet collaboratif et présentation conjointe avec des étudiants de l'Université de Novi Sad (Serbie), dans le cadre de l'alliance européenne EUGLOH — environnement entièrement anglophone.

*IA / ML / NLP*
- **Pipeline NLP — Articles de recherche en biologie** *(duo · code public)* — Pipeline de préparation de corpus et classification multi-classes avec `scispacy` et `scikit-learn` sur JupyterLab.
- **Pipeline ML — Survie de patients & classification d'images de plantes** *(duo)* — Analyse de données, prétraitement et entraînement de modèles d'apprentissage avec `scikit-learn` sur JupyterLab.

*Langages de programmation, compilateurs & systèmes*
- **Interpréteur Lua (sous-ensemble)** *(projet de cours en solo)* — Implémentation des variables, fonctions et coroutines en OCaml, puis portage en Rust.
- **Interpréteur d'un langage objet inspiré de Java** *(projet de cours en solo)* — Conception en OCaml : analyseur lexical, syntaxique, vérificateur de types et évaluateur ; classes, héritage, vérification statique.
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

**Langages de programmation :** Python · SQL · Java · OCaml · Rust · JavaScript / Node.js · C++ / C · HTML / CSS · Processing · Solidity (notions).

**Data Science & ML :** PyTorch · scikit-learn · Transformers (BERT) · spaCy · scispaCy · NLTK · Gensim · PyMuPDF · NumPy · Pandas · Matplotlib.

**LLM / Agentique :** LangChain · LangGraph · RAG · systèmes multi-agents · prompt engineering · fine-tuning · évaluation LLM (faithfulness / groundedness) · Snowflake Cortex (Agent, Search, REST API).

**Data Engineering & Plateformes :** Dataiku · AWS S3 · Snowflake · Airflow · Spark · HDFS · pipelines ETL · OLAP SQL · Tableau.

**MLOps & DevOps :** MLflow · Docker · Kubernetes · CI/CD · Git / GitHub / GitLab · Linux.

**Méthodologies :** Agile · MLOps · Cascade · MVC.

**Outils :** JupyterLab / Jupyter Notebook · Google Colab · VS Code · IntelliJ IDEA.

**Création numérique :** Cinema 4D · Unity · Logic Pro · Adobe Illustrator · p5.js.

---

## 📜 Certifications

- **Dataiku Core Designer**
- **Dataiku ML Practitioner**

---

## 🌍 Langues

- **Français** — langue maternelle
- **Chinois (Mandarin)** — langue maternelle
- **Anglais** — TOEIC 925/990 · Linguaskill 177/180 · participant au programme EUGLOH

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
- **Badminton** — Médaille d'or au niveau départemental, participation aux compétitions régionales.
- **Échecs** — Champion d'école au collège.
- **Modélisation 3D & création numérique** — Programme TUMO, projets personnels.
- **Évènements tech** — Participation au salon *VivaTech* (Paris) pour découvrir des solutions innovantes et le métier d'ingénieur.
- **Musique, jeux vidéo.**

---

*Dernière mise à jour : mai 2026.*
