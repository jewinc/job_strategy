// ═══ AI / ML ENGINEER — Targeted CV ═══════════════════════════════════════
// Built from master/CV_master_EN.md and master/STAR_master_Jewin_CHENG_EN.md
// using the master/resume_template.typ format (CV_ISD style).
// Positioning: AI / ML Engineer · LLMs · RAG · Agentic Systems · MLOps
// ──────────────────────────────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 10mm, bottom: 10mm, left: 18mm, right: 18mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 10pt,
  lang: "en",
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
  par[#text(weight: "bold")[#label:] #items]
}

// ─── header ──────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 11pt, style: "italic")[AI / ML Engineer  ·  LLMs  ·  RAG  ·  Agentic Systems  ·  MLOps] \
  #v(2pt)
  #text(size: 22pt)[Jewin Cheng] \
  #v(1pt)
  #text(size: 10pt)[+33 7 82 91 25 67 #h(4pt) | #h(4pt) #link("mailto:jewin.cheng@gmail.com")[jewin.cheng\@gmail.com] #h(4pt) | #h(4pt) #link("https://linkedin.com/in/jewin-cheng")[linkedin.com/in/jewin-cheng] #h(4pt) | #h(4pt) #link("https://github.com/jewinc?tab=repositories")[github.com/jewinc]]
]

// ─── profile ─────────────────────────────────────────────────────────────

#section("Profile")

#text(weight: "bold")[AI Engineer for the past two years at Malakoff Humanis, I design and ship high-value production systems built on unstructured data — *LLMs*, *RAG* and *agentic systems*, with end-to-end command of *NLP*, *computer vision* and *MLOps*. Comfortable bridging technical delivery and business needs, I'm looking for my next role on a permanent contract as an AI Engineer / Data Scientist focused on LLMs and RAG.]

#v(4pt)

// ─── professional experience ─────────────────────────────────────────────

#section("Professional Experience")

#entry(
  "Malakoff Humanis — MH Tech, Data Science",
  "Paris, France",
  "AI Engineer / Data Scientist (apprenticeship)",
  "2024 – 2026 · 2 yrs",
  bullets: (
    [Led ingestion for the *RAG service* behind an internal *HR assistant chatbot*: made the *scraping → chunking → indexing* chain (*BeautifulSoup*, 180 articles → ~1K chunks) autonomous as a containerized job, added *content-hash incremental re-ingestion* cutting a *2-hour full re-index to minutes*, and fixed a *silent LLM truncation* bug dropping article content — *OpenSearch* hybrid search (*BM25* + *k-NN*), *S3*, *LiteLLM* proxy, tests and coverage gating a *Jenkins* image build.],
    [Built and deployed a *batch document-classification pipeline* (PDF and OCR parsing → labelling → training → prediction) reaching *85% accuracy* on a *1.1M-document corpus*, extracting *200K critical health-insurance contracts* and unblocking work that had been blocked for years for contract managers (8-month, 5-person project).],
    [Trained and integrated an *R-CNN computer-vision* model into a French tax-notice *NER* pipeline (~100K notices/year), lifting end-to-end performance by *+7 pp* over the QR-code-only baseline.],
    [Fine-tuned *BERT* for *hierarchical email triage* (3 levels, *200+ leaf classes*, ~20K emails/month) reaching *70% accuracy* in production; surfaced edge cases and process-evasion patterns to the project owner via weekly business reviews — outcomes the team had no way of measuring before.],
  ),
)

#entry(
  "Formal Methods Laboratory (LMF) — Université Paris-Saclay",
  "Orsay, France",
  "Research Intern",
  "Jun 2024 – Aug 2024 · 3 mos",
  bullets: (
    [Built a *transaction-path visualization tool* for the Monero cryptocurrency; presented findings to the academic supervisor and a cyber police officer.],
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
)

#project(
  "RAG Ticket-Resolution Chatbot",
  sub: "MSc school project (team of 4) — 2025",
)

// ─── skills, certifications, languages ───────────────────────────────────

#section("Skills")

#skill-line("Programming", "Python, SQL, Java, OCaml, Rust, JavaScript / Node.js, C / C++")
#skill-line("AI / ML", "PyTorch, scikit-learn, Transformers (BERT), NER, computer vision, spaCy, NLTK, PyMuPDF, NumPy, Pandas")
#skill-line("LLM / Agentic", "LangChain, LangGraph, LiteLLM, RAG (chunking, embeddings, hybrid BM25 + k-NN retrieval), multi-agent systems, prompt engineering, fine-tuning, LLM evaluation (faithfulness / groundedness), Snowflake Cortex")
#skill-line("Data / MLOps", "MLflow, Docker / ECR, Kubernetes, Jenkins, CI/CD, Airflow, Spark, ETL / ingestion pipelines, AWS S3, AWS OpenSearch, Snowflake, Dataiku")
#skill-line("Tools", "Git / GitHub / GitLab, Linux, JupyterLab, Visual Studio Code, IntelliJ IDEA, Tableau")
#skill-line("Certifications", "Dataiku Core Designer; Dataiku ML Practitioner")
#skill-line("Languages", "French (native); Mandarin Chinese (native); English (TOEIC 925/990, Linguaskill 177/180, EUGLOH program)")
