// ═══ AI / ML ENGINEER — Targeted CV ═══════════════════════════════════════
// Built from master/CV_master_EN.md and master/STAR_master_Jewin_CHENG_EN.md
// using the master/resume_template.typ format (CV_ISD style).
// Positioning: AI / ML Engineer · LLMs · RAG · Agentic Systems · MLOps
// ──────────────────────────────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 14mm, bottom: 14mm, left: 20mm, right: 20mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 10.5pt,
  lang: "en",
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
  par[#text(weight: "bold")[#label:] #items]
}

// ─── header ──────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 11pt, style: "italic")[AI / ML Engineer  ·  LLMs  ·  RAG  ·  Agentic Systems  ·  MLOps] \
  #v(2pt)
  #text(size: 22pt)[Jewin Cheng] \
  #v(1pt)
  #text(size: 10pt)[+33 7 82 91 25 67 #h(4pt) | #h(4pt) #link("mailto:jewin.cheng@gmail.com")[jewin.cheng\@gmail.com] #h(4pt) | #h(4pt) #link("https://linkedin.com/in/chgjewin-lkd")[linkedin.com/in/chgjewin-lkd] #h(4pt) | #h(4pt) #link("https://github.com/jewinc?tab=repositories")[github.com/jewinc]]
]

// ─── profile ─────────────────────────────────────────────────────────────

#section("Profile")

#text(weight: "bold")[Final-year MSc with 2 years of hands-on Data Science experience at Malakoff Humanis. Specialises in *LLMs*, *RAG* and *agentic systems*, with end-to-end production experience in *NLP*, *computer vision* and *MLOps*. Seeking a CDI as an AI / ML Engineer at a growth-focused scale-up.]

// ─── professional experience ─────────────────────────────────────────────

#section("Professional Experience")

#entry(
  "Malakoff Humanis — MH Tech, Data Science",
  "Paris, France",
  "AI Engineer/Data Scientist",
  "2024 – 2026",
  bullets: (
    [Built and deployed a *batch document-classification pipeline* (PDF and OCR parsing → labelling → training → prediction) reaching *85% accuracy* on a *1.1M-document corpus*, extracting *200K critical health-insurance contracts* and unblocking work that had been blocked for years for contract managers (8-month, 5-person project).],
    [Trained and integrated an *R-CNN computer-vision* model into a French tax-notice *NER* pipeline (~100K notices/year), lifting end-to-end performance by *+7 pp* over the QR-code-only baseline.],
    [Fine-tuned *BERT* for *hierarchical email triage* (3 levels, *200+ leaf classes*, ~20K emails/month) reaching *70% accuracy* in production; surfaced edge cases and process-evasion patterns to the project owner via weekly business reviews — outcomes the team had no way of measuring before.],
  ),
)

#entry(
  "Formal Methods Laboratory (LMF) — Université Paris-Saclay",
  "Orsay, France",
  "Research Intern (paid, solo)",
  "Jun 2024 – Aug 2024",
  bullets: (
    [Studied *Monero zero-knowledge proofs* and built a *transaction-path visualization tool* using a public contaminated-transaction dataset; presented findings to the academic supervisor and a cyber police officer.],
  ),
)

// ─── education ───────────────────────────────────────────────────────────

#section("Education")

#entry(
  "Université Paris-Saclay",
  "Orsay, France",
  "MSc Computer Science for Data Science (Master ISD)",
  "2024 – 2026",
)

#entry(
  "Université Paris-Saclay",
  "Orsay, France",
  "BSc Computer Science and Mathematics — final year in parcours magistère (selective honors)",
  "2021 – 2024",
)

// ─── academic projects ───────────────────────────────────────────────────

#section("Academic Projects")

#project(
  "Hackathon Gen AI 2026 — Multi-agent code-generation VS Code extension",
  sub: "Paris-Saclay × Paris 8 × UQAC (team of 4) — 2026",
  bullets: (
    [Built a *LangGraph* and *LangChain* multi-agent pipeline that turns a user need into specifications, validation, code and CI/CD configuration files, packaged as a *VS Code extension*.],
  ),
)

#project(
  "RAG Ticket-Resolution Chatbot",
  sub: "MSc school project (team of 4) — 2025",
  bullets: (
    [Designed a *Snowflake Cortex* (Agent, Search, REST API) and *LangChain / LangGraph* RAG system, deployed as a *Streamlit* app on Snowflake; achieved *70% LLM-judged faithfulness and groundedness* on 2K sample tickets.],
  ),
)

#project(
  "RAG Nutrition Assistant",
  sub: "MSc course project — sub-team lead (~25 students) — 2025",
  bullets: (
    [Led the *feature-design sub-team* (nutri-score computation, ingredient substitution, recipe rewriting) and coordinated with other sub-team leads; delivered a chatbot web application in 2 months.],
  ),
)

// ─── skills, certifications, languages ───────────────────────────────────

#section("Skills")

#skill-line("Programming", "Python, SQL, Java, OCaml, Rust, JavaScript / Node.js, C / C++")
#skill-line("AI / ML", "PyTorch, scikit-learn, Transformers (BERT), spaCy, scispaCy, NLTK, PyMuPDF, NumPy, Pandas")
#skill-line("LLM / Agentic", "LangChain, LangGraph, Snowflake Cortex (Agent, Search, REST API), RAG, multi-agent systems")
#skill-line("Data / MLOps", "MLflow, Docker, Kubernetes, Airflow, Spark, HDFS, Snowflake, AWS S3, Dataiku")
#skill-line("Tools", "Git / GitHub / GitLab, Linux, JupyterLab, Visual Studio Code, IntelliJ IDEA, Tableau")
#skill-line("Certifications", "Dataiku Core Designer; Dataiku ML Practitioner")
#skill-line("Languages", "French (native); Mandarin Chinese (native); English (TOEIC 925/990, Linguaskill 177/180, EUGLOH program)")
