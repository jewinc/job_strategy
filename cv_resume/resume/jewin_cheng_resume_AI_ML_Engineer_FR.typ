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
#set par(leading: 6pt, spacing: 7pt, justify: false)

// ─── helpers ─────────────────────────────────────────────────────────────

#let section(title) = {
  v(8pt)
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
  v(7pt)
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
  v(8pt)
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

#v(4pt)

// ─── expérience professionnelle ──────────────────────────────────────────

#section("Expérience Professionnelle")

#entry(
  "Malakoff Humanis — MH Tech, Data Science",
  "Paris, France",
  "AI Engineer / Data Scientist (alternance)",
  "2024 – 2026 · 2 ans",
  bullets: (
    [Conception et mise en production d'un système de *classification automatique de documents* (lecture de PDF et reconnaissance de texte) atteignant *85 % de précision* sur *1,1 M de documents* ; extraction de *200 K contrats d'assurance santé critiques*, débloquant un traitement à l'arrêt depuis plusieurs années (projet de 8 mois, 5 personnes).],
    [Intégration d'un modèle de *vision par ordinateur* dans une chaîne de lecture automatique d'avis d'imposition (~100 K par an), améliorant la performance de *+7 points* par rapport à l'existant.],
    [Développement d'un modèle de *tri automatique des e-mails* (*200+ catégories*, ~20 K e-mails par mois) atteignant *70 % de précision* en production ; restitution des cas particuliers au métier lors de revues hebdomadaires.],
  ),
)

#entry(
  "Laboratoire des Méthodes Formelles (LMF) — Université Paris-Saclay",
  "Orsay, France",
  "Stagiaire de recherche",
  "Juin 2024 – Août 2024 · 3 mois",
  bullets: (
    [Construction d'un *outil de visualisation* des chemins de transactions de la cryptomonnaie Monero ; restitution à l'encadrant universitaire et à un officier de la cyber-criminalité.],
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
)

#project(
  "Chatbot RAG pour la résolution de tickets",
  sub: "Projet école M2 (équipe de 4) — 2025",
)

// ─── compétences ─────────────────────────────────────────────────────────

#section("Compétences")

#skill-line("Programmation", "Python, SQL, Java, OCaml, Rust, JavaScript / Node.js, C / C++")
#skill-line("IA / ML", "PyTorch, scikit-learn, Transformers (BERT), NER, vision par ordinateur, spaCy, NLTK, PyMuPDF, NumPy, Pandas")
#skill-line("LLM / Agentique", "LangChain, LangGraph, RAG, systèmes multi-agents, prompt engineering, fine-tuning, évaluation LLM (faithfulness / groundedness), Snowflake Cortex (Agent, Search, REST API)")
#skill-line("Data / MLOps", "MLflow, Docker, Kubernetes, CI/CD, Airflow, Spark, pipelines ETL, Snowflake, AWS S3, Dataiku")
#skill-line("Outils", "Git / GitHub / GitLab, Linux, JupyterLab, Visual Studio Code, IntelliJ IDEA, Tableau")
#skill-line("Certifications", "Dataiku Core Designer ; Dataiku ML Practitioner")
#skill-line("Langues", "Français (langue maternelle) ; Chinois mandarin (langue maternelle) ; Anglais (TOEIC 925/990, Linguaskill 177/180, programme EUGLOH)")
