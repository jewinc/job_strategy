// ═══ VARIABLES — à remplir avant de compiler ══════════════════════════════

#let poste        = "Data Scientist & AI Consultant"
#let entreprise   = "SIA"
#let contact_nom  = ""        // laisser vide ("") pour omettre
#let adresse      = "Paris, île-de-France, France"       // laisser vide ("") pour omettre

// ══════════════════════════════════════════════════════════════════════════

#set page(
  paper: "a4",
  margin: (top: 30mm, bottom: 30mm, left: 28mm, right: 28mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 11pt,
  lang: "fr",
)
#set par(leading: 7pt, spacing: 10pt, justify: false)

// ─── en-tête ──────────────────────────────────────────────────────────────

#align(right)[
  #text(weight: "bold")[Jewin Cheng] \
  #text(size: 10pt)[+33 7 82 91 25 67 #h(4pt) | #h(4pt) #link("mailto:jewin.cheng@gmail.com")[jewin.cheng\@gmail.com]] \
  #text(size: 10pt)[#link("https://linkedin.com/in/jewin-cheng")[linkedin.com/in/jewin-cheng] #h(4pt) | #h(4pt) #link("https://github.com/jewinc?tab=repositories")[github.com/jewinc]]
]

#v(8mm)

// ─── destinataire ─────────────────────────────────────────────────────────

#if contact_nom != "" { text(weight: "bold")[#contact_nom \ ] }
#entreprise \
#if adresse != "" { adresse }

#v(6mm)

// ─── objet ────────────────────────────────────────────────────────────────

#text(weight: "bold")[Objet : Candidature — #poste]

#v(6mm)

// ─── corps ────────────────────────────────────────────────────────────────

Bonjour,

AI / ML Engineer avec 2 ans d'expérience chez Malakoff Humanis, je conçois et déploie des systèmes IA de bout en bout — du document métier brut à l'agent LLM en production (NLP, RAG, systèmes agentiques, MLOps). Mon pipeline de classification documentaire a atteint *85 % de précision* sur *1,1 M de documents* et débloqué *200 K contrats critiques*.

Le poste de *#poste* chez *#entreprise* correspond à ce que je sais faire et à ce sur quoi je veux progresser. Je serais ravi d'échanger.

#v(8mm)

Cordialement,

#v(4mm)

#text(weight: "bold")[Jewin Cheng] \
#text(size: 10pt)[#link("https://linkedin.com/in/jewin-cheng")[linkedin.com/in/jewin-cheng]]
