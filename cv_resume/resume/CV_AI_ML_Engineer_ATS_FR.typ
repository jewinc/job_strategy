// ═══ INGÉNIEUR IA / ML — CV ciblé (FR) ═══════════════════════════════════
// Construit à partir de master/CV_master_FR.md et master/STAR_master_Jewin_CHENG_FR.md
// en utilisant le format master/resume_template_FR.typ (style CV_ISD).
// Positionnement : AI / ML Engineer · LLM · RAG · Systèmes Agentiques · MLOps
// ──────────────────────────────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 10mm, bottom: 10mm, left: 18mm, right: 18mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 10pt,
  lang: "fr",
)
#set par(leading: 5pt, spacing: 6pt, justify: false)

// ─── helpers ─────────────────────────────────────────────────────────────

#let section(title) = {
  v(4pt)
  text(weight: "bold", size: 11pt, upper(title))
  v(-3pt)
  line(length: 100%, stroke: 0.6pt + black)
  v(1pt)
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
  v(5pt)
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
  v(4pt)
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
  #text(size: 10pt)[+33 7 82 91 25 67 #h(4pt) | #h(4pt) #link("mailto:jewin.cheng@gmail.com")[jewin.cheng\@gmail.com] #h(4pt) | #h(4pt) #link("https://linkedin.com/in/chgjewin-lkd")[linkedin.com/in/chgjewin-lkd] #h(4pt) | #h(4pt) #link("https://github.com/jewinc?tab=repositories")[github.com/jewinc]]
]

// ─── profil ──────────────────────────────────────────────────────────────

#section("Profil")

#text(weight: "bold")[Étudiant en dernière année de Master ISD, avec 2 ans d'expérience opérationnelle en Data Science chez Malakoff Humanis. Spécialisé en *LLM*, *RAG* et *systèmes agentiques*, avec une expérience bout-à-bout en mise en production de modèles *NLP*, *vision par ordinateur* et *MLOps*. À la recherche d'un CDI d'AI / ML Engineer dans une scale-up à culture d'apprentissage et de croissance.]

// ─── expérience professionnelle ──────────────────────────────────────────

#section("Expérience Professionnelle")

#entry(
  "Malakoff Humanis — MH Tech, Data Science",
  "Paris, France",
  "AI Engineer/Data Scientist",
  "2024 – 2026",
  bullets: (
    [Conception et déploiement (en batch) d'un *pipeline de classification documentaire* (parsing PDF et OCR → labellisation → entraînement → inférence) atteignant *85 % de précision* sur un *corpus de 1,1 M de documents*, extrayant *200 K contrats critiques d'assurance santé* et débloquant un travail à l'arrêt depuis plusieurs années pour les gestionnaires de contrats (projet de 8 mois, 5 personnes).],
    [Entraînement et intégration d'un modèle de *vision par ordinateur R-CNN* dans un pipeline *NER* d'avis d'imposition français (~100 K avis/an), améliorant la performance bout-à-bout de *+7 points* par rapport à la baseline QR-code-only.],
    [Fine-tuning de *BERT* pour la *classification hiérarchique de mails* (3 niveaux, *200+ classes feuilles*, ~20 K mails/mois) atteignant *70 % de précision* en production ; remontée des cas particuliers et des contournements de processus au project owner via des revues métier hebdomadaires — des résultats que l'équipe ne pouvait pas mesurer auparavant.],
  ),
)

#entry(
  "Laboratoire des Méthodes Formelles (LMF) — Université Paris-Saclay",
  "Orsay, France",
  "Stagiaire de recherche (rémunéré, en solo)",
  "Juin 2024 – Août 2024",
  bullets: (
    [Étude des *preuves à divulgation nulle* de Monero et construction d'un *outil de visualisation* de chemins de transactions à partir d'une base publique de transactions contaminées ; restitution à l'encadrant universitaire et à un officier en cyber criminalité.],
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
    [Construction d'un pipeline multi-agents *LangGraph* et *LangChain* transformant un besoin utilisateur en spécifications, validation, code et fichiers de configuration CI/CD, livré en *extension VS Code*.],
  ),
)

#project(
  "Chatbot RAG pour la résolution de tickets",
  sub: "Projet école M2 (équipe de 4) — 2025",
  bullets: (
    [Conception d'un système RAG *Snowflake Cortex* (Agent, Search, REST API) et *LangChain / LangGraph*, déployé en application *Streamlit* sur Snowflake ; *70 % de faithfullness et de groundedness jugées par LLM* sur 2 000 tickets de test.],
  ),
)

#project(
  "Assistant RAG pour la nutrition",
  sub: "Projet de cours M2 — responsable d'équipe (~25 étudiants) — 2025",
  bullets: (
    [Encadrement de l'*équipe feature design* (calcul du nutri-score, substitution d'ingrédients, réécriture de recettes) et coordination avec les autres responsables d'équipe ; livraison d'une application web conversationnelle en 2 mois.],
  ),
)

// ─── compétences ─────────────────────────────────────────────────────────

#section("Compétences")

#skill-line("Programmation", "Python, SQL, Java, OCaml, Rust, JavaScript / Node.js, C / C++")
#skill-line("IA / ML", "PyTorch, scikit-learn, Transformers (BERT), spaCy, scispaCy, NLTK, PyMuPDF, NumPy, Pandas")
#skill-line("LLM / Agentique", "LangChain, LangGraph, Snowflake Cortex (Agent, Search, REST API), RAG, systèmes multi-agents")
#skill-line("Data / MLOps", "MLflow, Docker, Kubernetes, Airflow, Spark, HDFS, Snowflake, AWS S3, Dataiku")
#skill-line("Outils", "Git / GitHub / GitLab, Linux, JupyterLab, Visual Studio Code, IntelliJ IDEA, Tableau")
#skill-line("Certifications", "Dataiku Core Designer ; Dataiku ML Practitioner")
#skill-line("Langues", "Français (langue maternelle) ; Chinois mandarin (langue maternelle) ; Anglais (TOEIC 925/990, Linguaskill 177/180, programme EUGLOH)")
