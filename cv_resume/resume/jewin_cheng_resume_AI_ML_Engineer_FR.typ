// ═══ INGÉNIEUR IA / ML — CV ciblé (FR) ═══════════════════════════════════
// Construit à partir de master/CV_master_FR.md et master/STAR_master_Jewin_CHENG_FR.md
// en utilisant le format master/resume_template_FR.typ (style CV_ISD).
// Positionnement : AI / ML Engineer · LLM · RAG · Systèmes Agentiques · MLOps
// ──────────────────────────────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 8mm, bottom: 8mm, left: 18mm, right: 18mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 10pt,
  lang: "fr",
)
#set par(leading: 5pt, spacing: 6pt, justify: false)

// ─── helpers ─────────────────────────────────────────────────────────────

#let section(title) = {
  v(5pt)
  text(weight: "bold", size: 11pt, upper(title))
  v(-3pt)
  line(length: 100%, stroke: 0.6pt + black)
  v(2pt)
}

#let entry(institution, location, role, dates, bullets: ()) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#institution],
    text(weight: "bold")[#location],
  )
  grid(
    columns: (1fr, auto),
    text(style: "italic")[#role],
    text[#dates],
  )
  v(1pt)
  for b in bullets {
    pad(left: 5mm, par[• #b])
  }
  v(3pt)
}

#let project(title, sub: none, bullets: ()) = {
  text(weight: "bold")[#title]
  if sub != none {
    linebreak()
    text(style: "italic")[#sub]
  }
  v(1pt)
  for b in bullets {
    pad(left: 5mm, par[• #b])
  }
  v(2pt)
}

#let skill-line(label, items) = {
  par[#text(weight: "bold")[#label :] #items]
}

// ─── en-tête ──────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 11pt, style: "italic")[AI / ML Engineer  ·  LLM  ·  RAG  ·  Systèmes Agentiques  ·  MLOps] \
  #v(2pt)
  #text(size: 22pt)[Jewin Cheng] \
  #v(1pt)
  #text(size: 10pt)[+33 7 82 91 25 67 #h(4pt) | #h(4pt) #link("mailto:jewin.cheng@gmail.com")[jewin.cheng\@gmail.com] #h(4pt) | #h(4pt) #link("https://linkedin.com/in/jewin-cheng")[linkedin.com/in/jewin-cheng] #h(4pt) | #h(4pt) #link("https://github.com/jewinc?tab=repositories")[github.com/jewinc]]
]

// ─── profil ──────────────────────────────────────────────────────────────

#section("Profil")

#text(weight: "bold")[Ingénieur IA depuis deux ans chez Malakoff Humanis, je conçois et mets en production des systèmes à forte valeur ajoutée exploitant des données non structurées — *LLM*, *RAG* et *systèmes agentiques*, avec une maîtrise bout-à-bout du *NLP*, de la *vision par ordinateur* et du *MLOps*. À l'aise pour relier la livraison technique aux besoins métier, je recherche ma prochaine mission en CDI comme AI Engineer / Data Scientist, orienté LLM et RAG.]

#v(2pt)

// ─── expérience professionnelle ──────────────────────────────────────────

#section("Expérience Professionnelle")

#entry(
  "Malakoff Humanis — MH Tech, Data Science",
  "Paris, France",
  "AI Engineer / Data Scientist (alternance)",
  "2024 – 2026 · 2 ans",
  bullets: (
    [Pilotage de l'ingestion du *service RAG* d'un *chatbot assistant RH interne* : chaîne *scraping → chunking → indexation* (*BeautifulSoup*, 180 articles → ~1 000 chunks) rendue autonome en job conteneurisé, *ré-ingestion incrémentale par hachage* ramenant une *ré-indexation complète de 2 h à quelques minutes*, correction d'un bug de *troncature silencieuse du LLM* — *OpenSearch* hybride (*BM25* + *k-NN*), *S3*, proxy *LiteLLM*, tests et couverture via un build d'image *Jenkins*.],
    [Conception et déploiement (en batch) d'un *pipeline de classification documentaire* (parsing PDF et OCR → labellisation → entraînement → inférence) atteignant *85 % de précision* sur un *corpus de 1,1 M de documents*, extrayant *200 K contrats critiques d'assurance santé* et débloquant un travail à l'arrêt depuis plusieurs années pour les gestionnaires de contrats (projet de 8 mois, 5 personnes).],
    [Entraînement et intégration d'un modèle de *vision par ordinateur R-CNN* dans un pipeline *NER* d'avis d'imposition (~100 K avis/an) : *+7 points* de performance bout-à-bout vs la baseline QR-code-only.],
    [Fine-tuning de *BERT* pour la *classification hiérarchique de mails* (3 niveaux, *200+ classes feuilles*, ~20 K mails/mois), *70 % de précision* en production ; revues métier hebdomadaires avec le project owner révélant cas particuliers et contournements de processus — jamais mesurables auparavant.],
  ),
)

#entry(
  "Laboratoire des Méthodes Formelles (LMF) — Université Paris-Saclay",
  "Orsay, France",
  "Stagiaire de recherche",
  "Juin 2024 – Août 2024 · 3 mois",
  bullets: (
    [Étude des *preuves à divulgation nulle* de Monero et *outil de visualisation* de chemins de transactions sur une base publique de transactions contaminées ; restitution à l'encadrant et à un officier en cyber criminalité.],
  ),
)

// ─── formation ───────────────────────────────────────────────────────────

#section("Formation")

#entry(
  "Université Paris-Saclay",
  "Orsay, France",
  "Master Informatique pour la Science des Données (Master ISD)",
  "2024 – 2026",
)

#entry(
  "Université Paris-Saclay",
  "Orsay, France",
  "Licence Informatique et Mathématiques — dernière année en parcours magistère (filière sélective)",
  "2021 – 2024",
)

// ─── projets académiques ─────────────────────────────────────────────────

#section("Projets Académiques")

#project(
  "Hackathon Gen AI 2026 — Système agentique de génération de code en extension VS Code",
  sub: "Paris-Saclay × Paris 8 × UQAC (équipe de 4) — 2026",
  bullets: (
    [Pipeline multi-agents *LangGraph* / *LangChain* transformant un besoin utilisateur en spécifications, validation, code et configuration CI/CD, livré en *extension VS Code*.],
  ),
)

#project(
  "Chatbot RAG pour la résolution de tickets",
  sub: "Projet école M2 (équipe de 4) — 2025",
  bullets: (
    [Système RAG *Snowflake Cortex* (Agent, Search, REST API) et *LangChain / LangGraph*, déployé en *Streamlit* sur Snowflake ; *70 % de faithfulness et groundedness jugées par LLM* sur 2 000 tickets.],
  ),
)

#project(
  "Assistant RAG pour la nutrition",
  sub: "Projet de cours M2 — chef d'équipe (5 personnes) — 2025",
  bullets: (
    [Pilotage d'une *équipe de 5* sur le *feature design* (nutri-score, substitution d'ingrédients, réécriture de recettes) et coordination avec les autres chefs d'équipe ; application web conversationnelle livrée en 2 mois.],
  ),
)

// ─── compétences ─────────────────────────────────────────────────────────

#section("Compétences")

#skill-line("Programmation", "Python, SQL, Java, OCaml, Rust, JavaScript / Node.js, C / C++")
#skill-line("IA / ML", "PyTorch, scikit-learn, Transformers (BERT), NER, vision par ordinateur, spaCy, NLTK, PyMuPDF, NumPy, Pandas")
#skill-line("LLM / Agentique", "LangChain, LangGraph, LiteLLM, RAG (chunking, embeddings, hybride BM25 + k-NN), multi-agents, prompt engineering, fine-tuning, évaluation LLM (faithfulness / groundedness), Snowflake Cortex")
#skill-line("Data / MLOps", "MLflow, Docker / ECR, Kubernetes, Jenkins, CI/CD, Airflow, Spark, pipelines ETL / ingestion, AWS S3, AWS OpenSearch, Dataiku")
#skill-line("Outils", "Git / GitHub / GitLab, Linux, JupyterLab, Visual Studio Code, IntelliJ IDEA, Tableau")
#skill-line("Certifications", "Dataiku Core Designer ; Dataiku ML Practitioner")
#skill-line("Langues", "Français, chinois mandarin (langues maternelles) ; anglais (TOEIC 925/990, Linguaskill 177/180, EUGLOH)")
