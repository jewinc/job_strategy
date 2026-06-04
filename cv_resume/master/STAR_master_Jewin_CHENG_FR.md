# STAR Master — Jewin CHENG

> Document interne de préparation aux entretiens. Chaque expérience professionnelle et chaque projet académique majeur est rédigé au format STAR (Situation · Tâche · Action · Résultat). À réutiliser pour les entretiens comportementaux, les lettres de motivation, et comme source pour tout CV ciblé.
> *Dernière mise à jour : mai 2026.*

---

## 1. Expérience professionnelle

### 1.1 Data Scientist (Alternance) — Malakoff Humanis · MH Tech, Data Science · Paris · *2024–2026*

Apprenti au sein de l'équipe Data Science (~30 personnes) de la direction MH Tech. Travail en environnement Agile, principalement sur des tâches cœur sous l'accompagnement d'un tuteur. Exposition directe aux interlocuteurs métier (gestionnaires de contrats, project owner classification de mails).

#### 1.1.a — Pipeline ML de classification documentaire (1,1 M de contrats)

**Situation.** L'équipe Data Science de MH Tech faisait face à un stock historique d'environ 1,1 M de documents contractuels clients non qualifiés. Les gestionnaires de contrats devaient parcourir manuellement le corpus pour retrouver des types de documents spécifiques (conditions particulières, conditions générales, notice d'information, tableau de garantie, avenant), avec des délais récurrents. Le périmètre initial demandé par le sponsor était triple : classification, reconnaissance d'entités nommées (NER) et détection de signature.

**Tâche.** En tant qu'un des deux apprentis aux côtés de trois data scientists seniors, j'étais en charge de la couche de parsing documentaire (PDF et OCR), du pipeline d'entraînement et d'échantillonnage pour la labellisation, et du pipeline d'inférence sur l'ensemble du corpus.

**Action.** Implémentation du parsing PDF avec PyMuPDF et d'un fallback OCR pour les documents scannés/image dans Dataiku (Python sur-mesure, sans low-code), construction du workflow de préparation et d'échantillonnage pour la labellisation, entraînement d'un modèle ML de classification, et orchestration de la phase d'inférence. Application des bonnes pratiques MLOps avec MLflow (versioning de modèles, monitoring, suivi du pipeline d'inférence). Le projet s'est déroulé sur deux batchs de 500 K documents — six mois pour le premier, deux mois pour le second. Les objectifs NER et détection de signature ont été abandonnés en cours de route après réorientation du sponsor.

**Résultat.** Le modèle de classification a atteint 85 % de précision et a permis d'extraire ~200 K contrats critiques de type « conditions particulières » du corpus de 1,1 M de documents, surfaçant les pièces prioritaires pour les gestionnaires de contrats et débloquant un travail à l'arrêt depuis plusieurs années. Durée totale du projet : 8 mois bout-à-bout. Le stock n'a pas été entièrement résorbé, mais l'extraction ciblée a livré la valeur définie par le sponsor.

---

#### 1.1.b — Pipeline R-CNN + NER pour les avis d'imposition

**Situation.** Un pipeline NER existant extrayait des informations structurées d'avis d'imposition français (~100 K avis/an) en se basant uniquement sur la lecture de QR codes, plafonnant la précision à ~80 % car de nombreux avis avaient des codes illisibles ou absents.

**Tâche.** Ajouter un composant de vision par ordinateur capable de localiser directement les zones informatives sur l'image du document, sans dépendance au QR code.

**Action.** Entraînement d'un modèle Region-CNN (R-CNN) avec la stack CV de Dataiku pour détecter des zones (bounding boxes) sur les scans d'avis, intégration des zones détectées dans le pipeline NER amont, et réévaluation de la précision bout-à-bout.

**Résultat.** Performance globale du pipeline améliorée de +7 points par rapport à la baseline QR-code-only, rendant l'extraction robuste sur les documents où la lecture du QR code échouait.

---

#### 1.1.c — Fine-tuning de BERT pour la classification hiérarchique de mails

**Situation.** L'équipe métier en relation client triait manuellement ~20 K mails entrants par mois selon une taxonomie hiérarchique à 3 niveaux et plus de 200 catégories feuilles — lent, inconsistant et difficilement auditable.

**Tâche.** Construire un classifieur automatique et collaborer avec le project owner pour affiner la taxonomie et faire émerger les cas de mauvaise orientation.

**Action.** Fine-tuning d'un modèle BERT sur un corpus de mails labellisés, points hebdomadaires avec le project owner pour aligner les labels cibles, restitution du comportement du modèle pour exposer les cas particuliers et les incohérences de label, et itérations sur la taxonomie en fonction des retours métier. Projet toujours en cours en mai 2026.

**Résultat.** 70 % de précision atteinte sur 200+ classes feuilles. Au-delà du modèle, les revues métier itératives ont permis au project owner de (1) quantifier les taux d'erreur du processus manuel, (2) identifier des cas particuliers que son équipe n'avait jamais caractérisés, et (3) détecter des contournements de processus par les employés — des résultats que le métier ne pouvait pas mesurer auparavant.

---

### 1.2 Stagiaire de recherche (rémunéré, en solo) — Laboratoire des Méthodes Formelles (LMF), Université Paris-Saclay · *Juin – Août 2024*

**Situation.** Le LMF travaillait sur la traçabilité et la sécurité de la cryptomonnaie Monero dans le cadre d'enquêtes anti-blanchiment, en collaboration avec une unité de cyber criminalité.

**Tâche.** Étudier les fondements cryptographiques de Monero (preuves à divulgation nulle, signatures en anneau, adresses furtives), expliquer le modèle de sécurité à l'encadrant, et prototyper un petit outil de visualisation pour afficher des chemins de transactions traçables.

**Action.** Revue de la littérature cryptographique sur les primitives de confidentialité de Monero, exploitation d'une base publique de transactions contaminées (transactions connues comme liées à travers la chaîne) pour identifier des chemins traçables, et construction d'un outil de visualisation pour rendre ces chemins sous forme de graphes de transactions.

**Résultat.** Présentation des conclusions et de l'outil de visualisation à l'encadrant universitaire et à un officier en cyber criminalité. Contribution à la base de connaissance interne du laboratoire sur la traçabilité Monero. Pas de rapport formel livré.

---

### 1.3 Standardiste — ANSM, Paris · *Juin – Août 2021*

**Situation.** Poste estival au service général de l'Agence nationale de sécurité du médicament et des produits de santé (ANSM), agence publique à environnement régulé.

**Tâche.** Gérer ~200 appels entrants/sortants par jour, les router vers les 14 directions de l'agence, et accueillir/orienter les visiteurs à l'entrée.

**Action.** Application des protocoles de pharmacovigilance, des exigences de sécurité et des processus d'autorisation/enregistrement ; soutien opérationnel transverse aux 14 directions ; analyse des flux d'appels pour aider à optimiser le service du standard ; gestion du volume d'appels en heure de pointe et des exigences de confidentialité.

**Résultat.** Poste de 3 mois démontrant gestion du stress, communication transverse et discipline de confidentialité — socle de soft skills pertinent pour tout poste impliquant des données régulées ou sensibles.

---

## 2. Formation

### 2.1 Master Informatique pour la Science des Données (*Master ISD*) — *Université Paris-Saclay, Orsay* — *2024–2026*

Rapport d'activité final basé sur le travail d'alternance chez Malakoff Humanis.

**Programme.** IA & ML (Deep Learning, feature engineering, réduction de dimension, clustering, réseaux de neurones, Transformers, LLM, RAG, systèmes agentiques) · Data Engineering (modélisation de bases de données, Data Lake sur HDFS/Spark, Data Warehouse, OLAP SQL) · Visualisation (Tableau, conception de dashboards) · Algorithmique (graphes, flots dans les réseaux, preuves d'algorithmes) · Mathématiques (probabilités, statistiques, ACP, SVD) · Développement logiciel (JavaScript, Node.js).

#### Projets de cours majeurs (STAR)

##### a. RAG pour la résolution de tickets — *projet école M2 · équipe de 4*

**Situation.** Construire et évaluer un système de génération augmentée par récupération (RAG) pour la résolution de tickets de support, avec une évaluation quantitative jugée par LLM.

**Tâche.** Concevoir, construire et déployer un chatbot RAG capable de résoudre des tickets de support, évalué sur un benchmark de 2 000 tickets.

**Action.** Conception de l'architecture avec LangChain + LangGraph et Snowflake Cortex (Cortex Agent, Cortex Search, Cortex REST API, Threads, Data Warehouse) pour la récupération, la génération et la gestion de conversation. Déploiement du chatbot en application Streamlit sur Snowflake. Évaluation avec les métriques de faithfullness et de groundedness jugées par LLM sur 2 000 tickets de test.

**Résultat.** ~70 % de faithfullness et de groundedness atteints. Démo Streamlit fonctionnelle déployée sur Snowflake.

---

##### b. RAG pour la nutrition — *projet de cours de 2 mois · responsable d'équipe · ~25 étudiants*

**Situation.** Projet de cours sur 2 mois, organisé en initiative collaborative à 25 étudiants pour construire un système RAG dans le domaine de la nutrition, structuré en plusieurs équipes par fonctionnalité.

**Tâche.** Encadrer l'équipe feature design — calcul du nutri-score, substitution/suppression d'ingrédients, réécriture des étapes de recette — et coordonner avec les autres responsables d'équipe pour aligner les dépendances.

**Action.** En tant que responsable d'équipe, attribution des tâches aux coéquipiers, prise de décisions de priorisation des fonctionnalités, communication hebdomadaire avec les autres responsables d'équipe pour résoudre les dépendances transverses, et contribution au développement de la couche fonctionnelle. Livrable final : une application web conversationnelle permettant aux utilisateurs de retrouver/générer des recettes et de poser des questions sur les ingrédients.

**Résultat.** Application web livrée dans le délai de 2 mois. L'expérience de coordination transverse sur un projet étudiant à 25 personnes — un signal de leadership rare au niveau Master.

---

##### c. Hackathon Gen AI 2026 — Système agentique de génération de code — *Paris-Saclay × Paris 8 × UQAC · équipe de 4*

**Situation.** Hackathon Gen AI 2026, co-organisé par l'Université Paris-Saclay, l'Université Paris 8 et l'UQAC (Chicoutimi). Défi : construire un système d'IA générative multi-agents bout-à-bout traitant un véritable workflow d'ingénierie.

**Tâche.** En tant qu'un des 4 développeurs, contribuer à un système multi-agents qui prend un besoin utilisateur en entrée et génère le scaffold complet d'un projet (spécifications, validation, code, fichiers de configuration CI/CD).

**Action.** Construction de workflows agentiques avec LangGraph + LangChain, contribution à la logique d'orchestration des agents et à la génération du scaffold projet, et intégration du système en extension VS Code afin de pouvoir être déclenché directement depuis l'IDE du développeur. Pratique de la mise en place de capacité CI dans le périmètre de sortie du système.

**Résultat.** Extension VS Code fonctionnelle démonstrée au hackathon. Pas qualifié pour le second tour. Expérience pratique de l'orchestration multi-agents, du tooling intégré à l'IDE et de la mise en place de CI — directement transférable à un poste d'ingénieur IA / ML.

---

##### d. Pipeline ETL & système d'aide à la décision — *duo · base IGN*

**Situation / Tâche.** Projet de cours en data engineering : construire un pipeline ETL alimentant un système d'aide à la décision sur la base de l'IGN (Institut national de l'information géographique et forestière).

**Action.** Équipe de deux. Construction du pipeline ETL en Python, chargement vers PostgreSQL, conception des requêtes d'aide à la décision.

**Résultat.** Flux ETL → PostgreSQL → aide à la décision opérationnel.

---

##### e. Dashboard — Criminalité en France depuis 2016 — *solo*

Projet Tableau en solo sur les données ouvertes de `data.gouv.fr`. Trois vues interactives (national, région, commune). Livrable Tableau Desktop.

##### f. Dashboard Streamlit — Données financières (NASDAQ) — *solo · code public sur GitHub*

Application Streamlit en solo sur des données Yahoo Finance NASDAQ, deux vues interactives.

##### g. Chatbot d'assurance santé (IBM Watson Assistant) — *projet de cours en solo*

Projet de cours en solo sur IBM Cloud — conception et configuration d'un chatbot IBM Watson Assistant couvrant un parcours de demande de remboursement (intentions, entités, arbre de dialogue). Prototype fonctionnel pour le cours, non déployé ; pas d'utilisateurs réels.

##### h. Mini-jeu en smart contract Ethereum — *duo · code public*

Mini-jeu interactif TUI à deux joueurs sur le testnet Ethereum, en Python avec la librairie `web3`.

---

### 2.2 Licence Informatique et Mathématiques — *Université Paris-Saclay, Orsay* — *2021–2024*

Dernière année (L3) suivie en *parcours magistère* (filière sélective d'excellence).

**Programme.** Modèles de classification et de régression · traitement d'images · NLP · traitement de données biomédicales · probabilités · statistiques · algèbre linéaire · paradigmes de programmation (impératif, objet, fonctionnel).

#### Projets de cours majeurs (STAR)

##### a. TER GNN + Blockchain — *Travail d'Étude et de Recherche · LMF · Février – Mai 2024 · équipe de 2*

**Situation.** Projet de recherche de fin de licence (TER) au LMF, dans la continuité des travaux du laboratoire sur la traçabilité des cryptomonnaies. Objectif : explorer les Graph Neural Networks pour la désanonymisation blockchain. Soutenance finale devant l'encadrant.

**Tâche.** En équipe de 2, évaluer des architectures GNN (GCN, GAT) sur des données blockchain réelles extraites de nœuds publics.

**Action.** J'ai porté la partie implémentation — pipeline de données, code des modèles GCN/GAT, scripts d'entraînement et d'inférence en PyTorch. Mon coéquipier a pris en charge la compréhension des architectures et la théorie sous-jacente du graph learning.

**Résultat.** La phase d'exploration n'a pas produit de métriques finales (précision/F1) dans la fenêtre de 4 mois. Livraison d'une base de code PyTorch réutilisable et d'une compréhension architecturale qui sert de socle pour les travaux suivants du laboratoire — et a directement conduit au stage au LMF à l'été 2024.

---

##### b. Interpréteur Lua (OCaml → portage Rust) — *projet de cours en solo · code disponible sur demande*

Projet de cours en compilation / langages de programmation. Implémentation d'un sous-ensemble de Lua (variables, fonctions, coroutines) en OCaml, puis portage du même sous-ensemble en Rust en exercice de prolongement. Pratique concrète de la conception d'analyseur lexical/syntaxique/évaluateur et du Rust idiomatique.

##### c. Interpréteur d'un langage objet inspiré de Java (OCaml) — *projet de cours en solo · code disponible sur demande*

Projet de cours en compilation / langages. Solo. Conception en OCaml de l'analyseur lexical, syntaxique, du vérificateur de types statique et de l'évaluateur. Support des classes, de l'héritage et de la vérification statique. Signal systèmes solide qui complète le profil IA / ML.

##### d. Pipeline NLP — Articles de recherche en biologie — *duo · code public*

Projet de cours en duo. Construction d'un pipeline de préparation de corpus et entraînement de modèles de classification multi-classes sur des articles de biologie avec `scispacy` et `scikit-learn` sur JupyterLab. Livrable au format notebook.

##### e. Pipeline ML — Survie de patients & classification d'images de plantes — *duo*

Projet de cours en duo. Analyse de données, prétraitement et modèles d'apprentissage avec `scikit-learn` sur JupyterLab. Livrable au format notebook.

##### f. Étude de recherche — Cryptographie et traçabilité de Bitcoin / Monero — *2023–2024*

Étude approfondie des fondements cryptographiques et des problématiques de traçabilité de Bitcoin et Monero. Préalable direct au stage 2024 au LMF — a posé les bases théoriques rendant la candidature au stage crédible.

##### g. Projet conjoint EUGLOH — Université Paris-Saclay × Université de Novi Sad

Projet collaboratif et présentation conjointe avec des étudiants de l'Université de Novi Sad (Serbie), dans le cadre de l'alliance européenne EUGLOH — environnement entièrement anglophone.

##### h. Autres projets

- **Simulateur d'écosystème lapin / renard (C++).** Programmation impérative et modulaire, Makefile multi-fichiers.
- **Jeu type 2048 (C++).** Implémentation modulaire.
- **Logiciel Java en méthodologie cascade.** Rédaction de la documentation technique conforme au cahier des charges, puis implémentation en Java en petite équipe (GitHub, IntelliJ IDEA).
- **Jeu de plateau et jeu de labyrinthe (Java / JPanel).** Architecture MVC, gestion de versions avec Git.
- **Paysage 3D interactif (Processing).** Labyrinthe avec textures importées, personnage 3D et caméra à la première personne.

---

### 2.3 Baccalauréat général — *Lycée Charlemagne, Paris* — *2018–2021*

Mention assez bien.

---

### 2.4 TUMO — École de création numérique — *Paris* — *2017–2022*

Programme extrascolaire en création numérique : modélisation 3D, jeux vidéo, production musicale, design graphique. Conception des mécaniques de base et de l'histoire d'un jeu sous contraintes temporelles, et présentation d'une démo à des investisseurs potentiels et intervenants TUMO.
Portfolio : [Projets de fin de module](https://drive.google.com/drive/folders/1cY6NnvAhWvOPK17Jikc0ceNIRTRl8PUM?usp=share_link)

---

## 3. Compétences techniques

- **Langages de programmation.** Python · SQL · Java · OCaml · Rust · JavaScript / Node.js · C++ / C · HTML / CSS · Processing · Solidity (notions).
- **IA / ML.** PyTorch · scikit-learn · Transformers (BERT) · spaCy · scispaCy · NLTK · Gensim · PyMuPDF · NumPy · Pandas · Matplotlib.
- **LLM / Agentique.** LangChain · LangGraph · Snowflake Cortex (Agent, Search, REST API) · RAG · systèmes multi-agents.
- **Data engineering & plateformes.** Dataiku · AWS S3 · Snowflake · Airflow · Spark · HDFS · OLAP SQL · Tableau.
- **MLOps & DevOps.** MLflow · Docker · Kubernetes · Git / GitHub / GitLab · Linux.
- **Méthodologies.** Agile · MLOps · Cascade · MVC.
- **Outils.** JupyterLab / Jupyter Notebook · Google Colab · VS Code · IntelliJ IDEA.
- **Création numérique.** Cinema 4D · Unity · Logic Pro · Adobe Illustrator · p5.js.

---

## 4. Certifications

- **Dataiku Core Designer**
- **Dataiku ML Practitioner**

---

## 5. Langues

- **Français** — langue maternelle
- **Chinois (Mandarin)** — langue maternelle
- **Anglais** — TOEIC 925/990 · Linguaskill 177/180 · participant au programme EUGLOH

---

## 6. Associations étudiantes

### APOIL — Université Paris-Saclay · *2021*

Membre durant la première année de licence. Animation hebdomadaire de sessions de jeux vidéo sur diverses consoles (gestion de la rotation des titres et des plateformes) et tenue de stands d'art ouverts à tous les étudiants (peinture, fabrication de résine).

### Cul'd'jap — Université Paris-Saclay · *L2, 2022 – 2023*

Membre de l'association dédiée à la culture japonaise. Promotion des jeux de plateau asiatiques — Go et Shogi — via des sessions d'initiation et des soirées libres ; animation d'un atelier cuisine autour de la fabrication de mochi.

---

## 7. Centres d'intérêt

- **Programmation & langages** — intérêt pour les paradigmes de programmation (fonctionnel, objet, impératif), la compilation et la conception de langages.
- **Badminton** — médaille d'or au niveau départemental, compétitions régionales (au collège).
- **Échecs** — champion d'école au collège.
- **Modélisation 3D & création numérique** — programme TUMO, projets personnels.
- **Évènements tech** — participation au salon *VivaTech* (Paris) pour découvrir des solutions d'ingénierie innovantes et le métier d'ingénieur.
- **Musique, jeux vidéo.**
