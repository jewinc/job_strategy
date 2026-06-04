// ═══ TYPST RESUME TEMPLATE ═══════════════════════════════════════════════
//
// Visual format inspired by CV_ISD.docx.pdf — French-market academic / CDI
// style. ATS-friendly: single-column flow, no embedded tables in content,
// dates inline, skills as plain "Label: items" lines.
//
// USAGE
//   1. Copy this file:        cp resume_template.typ <your-cv-name>.typ
//   2. Replace the placeholder content in the CONTENT section below.
//   3. Compile to PDF:        typst compile <your-cv-name>.typ
//
// HELPERS PROVIDED
//   • section(title)              — bold uppercase header + full-width rule
//   • entry(institution, location, role, dates, bullets)
//                                 — two-line title row used for Education and
//                                   Professional Experience entries
//   • project(title, sub, bullets)
//                                 — single-line title used for Projects /
//                                   Extra-Curricular entries
//   • skill-line(label, items)    — "Label: comma-separated items" line
//
// FORMATTING TIPS
//   • Wrap key terms inside a bullet with *stars* to render them bold
//     (markdown-style emphasis).
//   • Use `_text_` for inline italics inside a bullet.
//   • Use `pad(left: 5mm, ...)` to indent custom content like the bullets.
//
// CUSTOMISATION
//   • Page size:   change `paper:` to `"us-letter"` for the US format.
//   • Margins:     tweak the `margin:` block.
//   • Font:        first available in the tuple wins; default is Times.
//   • Section order, helpers and dimensions are isolated from the content
//     so you can change either without touching the other.
//
// ─────────────────────────────────────────────────────────────────────────

// ─── page & text defaults ────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 10.5pt,
  lang: "en",
)
#set par(leading: 5pt, spacing: 6pt, justify: false)

// ─── helpers ─────────────────────────────────────────────────────────────

// Section header: bold uppercase + full-width 0.6 pt rule below.
#let section(title) = {
  v(8pt)
  text(weight: "bold", size: 11pt, upper(title))
  v(-3pt)
  line(length: 100%, stroke: 0.6pt + black)
  v(2pt)
}

// Entry: two grid rows (institution+location, then role+dates) followed by
// indented bullet list. Use this for Education and Professional Experience.
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

// Project / extra-curricular: bold title, optional italic sub-line, bullets.
// Use this for Academic Projects, Volunteer experience, Associations, etc.
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

// Skill line: "Label:" bold + plain values. One line per category.
#let skill-line(label, items) = {
  par[#text(weight: "bold")[#label:] #items]
}

// ═══ CONTENT — replace below with your details ═══════════════════════════

// ─── header ──────────────────────────────────────────────────────────────

// Optional target role / professional title shown above the name.
// Remove the first line below if you don't want a title on the CV.

#align(center)[
  #text(size: 11pt, style: "italic")[Target Role — short positioning line] \
  #v(2pt)
  #text(size: 22pt)[Firstname Lastname] \
  #v(1pt)
  #text(size: 10pt)[+33 X XX XX XX XX #h(4pt) | #h(4pt) #link("mailto:email@domain.com")[email\@domain.com] #h(4pt) | #h(4pt) #link("https://linkedin.com/in/username")[linkedin.com/in/username] #h(4pt) | #h(4pt) #link("https://github.com/username?tab=repositories")[github.com/username]]
]

// ─── profile (1 short paragraph) ─────────────────────────────────────────

#section("Profile")

#text(weight: "bold")[Short professional summary in 2–3 sentences. Lead with your current title or status, list 2–3 hard skills you specialise in, and state the role / contract type you are looking for. Keep it under 250 characters so it stays punchy.]

// ─── professional experience ─────────────────────────────────────────────

#section("Professional Experience")

#entry(
  "Company name — team / division",
  "City, Country",
  "Job title (contract type, e.g. Apprenticeship)",
  "20XX – 20XX",
  bullets: (
    [Achievement bullet starting with a *strong action verb*. Quantify scale (size, volume, accuracy, time saved). Bold *key tools / techniques* that recruiters search for, like *Python*, *PyTorch*, *LangChain*.],
    [Second achievement. Different verb. Different metric. Different keywords. Each bullet should communicate one outcome — not a job description.],
    [Third achievement. Mention the *business impact* and any cross-team collaboration if relevant.],
    [Fourth achievement (optional). Use sparingly — 3–4 bullets per role is the sweet spot.],
  ),
)

#entry(
  "Previous employer",
  "City, Country",
  "Role (Internship, Freelance, Part-time, etc.)",
  "Mon 20XX – Mon 20XX",
  bullets: (
    [One- or two-bullet summary if the role is short or less relevant.],
  ),
)

// ─── education ───────────────────────────────────────────────────────────

#section("Education")

#entry(
  "Institution name",
  "City, Country",
  "Degree title (full name, abbreviation in parentheses)",
  "20XX – 20XX",
  bullets: (
    [Final project / thesis topic in *bold*, supervisor or partner if relevant.],
    [Coursework: list 4–8 *high-signal courses*, separated by commas.],
  ),
)

#entry(
  "Previous institution",
  "City, Country",
  "Previous degree",
  "20XX – 20XX",
  bullets: (
    [Coursework: another short list of relevant subjects, with *keywords* bolded.],
  ),
)

// Add or remove entries above as needed (Bac, prep school, additional
// programs). Keep ordering reverse-chronological.

// ─── academic projects ───────────────────────────────────────────────────

#section("Academic Projects")

#project(
  "Project title — short tagline",
  sub: "Context: institution / hackathon / course (team of N) — year",
  bullets: (
    [Outcome-first description: what you built, with *technologies* bolded. Mention the team size and your specific role (lead, dev, designer).],
  ),
)

#project(
  "Second project — short tagline",
  sub: "Context — year",
  bullets: (
    [Description, *tools*, metric (accuracy, latency, deployment, users).],
  ),
)

#project(
  "Third project",
  sub: "Context — year",
  bullets: (
    [Description, *tools*, outcome.],
  ),
)

// ─── extra-curricular activities (associations, volunteer, sports) ───────

#section("Extra-Curricular Activities")

#project(
  "Association / Club name — institution",
  sub: "Position — 20XX – 20XX",
  bullets: (
    [What you organised, scale (participants, frequency), tools used. Quantify when possible (e.g. *weekly events*, *50+ attendees*).],
    [Second activity / initiative if relevant.],
  ),
)

// ─── interests and skills (combined section, plain "Label: items" lines) ─

#section("Interests and Skills")

#skill-line("Programming", "Language 1, Language 2, Language 3, Language 4")
#skill-line("AI / ML", "Library 1, Library 2, Framework 1, Framework 2")
#skill-line("LLM / Agentic", "Tool 1, Tool 2, Concept 1, Concept 2")
#skill-line("Data / MLOps", "Tool 1, Tool 2, Tool 3, Tool 4, Tool 5")
#skill-line("Tools", "Editor, IDE, OS, Vis tool, Project tool")
#skill-line("Certifications", "Cert 1; Cert 2 (issuer, year)")
#skill-line("Languages", "Language 1 (native); Language 2 (fluent); Language 3 (B2, score reference)")
#skill-line("Interests", "Interest 1; interest 2 (with one-line context if a credential is involved); interest 3; interest 4")
