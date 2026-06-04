// ═══ MODÈLE DE CV TYPST ═══════════════════════════════════════════════════
//
// Format visuel inspiré de CV_ISD.docx.pdf — style universitaire / CDI
// adapté au marché français. Compatible ATS : flux mono-colonne, pas de
// tableaux dans le contenu, dates en ligne, compétences en lignes
// « Catégorie : éléments ».
//
// UTILISATION
//   1. Copier ce fichier :    cp resume_template_FR.typ <nom-cv>.typ
//   2. Remplacer le contenu de la section CONTENU ci-dessous.
//   3. Compiler en PDF :       typst compile <nom-cv>.typ
//
// AIDES (helpers) FOURNIES
//   • section(titre)              — en-tête gras majuscules + filet pleine largeur
//   • entry(institution, lieu, role, dates, bullets)
//                                 — bloc à deux lignes utilisé pour Formation
//                                   et Expérience Professionnelle
//   • project(titre, sub, bullets)
//                                 — bloc à titre simple pour Projets /
//                                   activités extra-scolaires
//   • skill-line(label, items)    — ligne « Catégorie : éléments »
//
// MISE EN FORME
//   • Encadrer un terme clé d'un puce avec *étoiles* pour le rendre en gras
//     (style markdown).
//   • Utiliser `_texte_` pour de l'italique en ligne dans une puce.
//   • Utiliser `pad(left: 5mm, ...)` pour indenter du contenu personnalisé.
//
// PERSONNALISATION
//   • Format de page : changer `paper:` en `"us-letter"` pour le format US.
//   • Marges :         ajuster le bloc `margin:`.
//   • Police :         le premier élément disponible dans le tuple est utilisé.
//   • L'ordre des sections, les helpers et les dimensions sont isolés du
//     contenu : modifier l'un ou l'autre sans toucher à l'autre.
//
// ─────────────────────────────────────────────────────────────────────────

// ─── page et défauts de texte ────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
)
#set text(
  font: ("Times New Roman", "Liberation Serif", "Times"),
  size: 10.5pt,
  lang: "fr",
)
#set par(leading: 5pt, spacing: 6pt, justify: false)

// ─── helpers ─────────────────────────────────────────────────────────────

// En-tête de section : gras majuscules + filet 0,6 pt sur toute la largeur.
#let section(title) = {
  v(8pt)
  text(weight: "bold", size: 11pt, upper(title))
  v(-3pt)
  line(length: 100%, stroke: 0.6pt + black)
  v(2pt)
}

// Entrée : deux rangées (institution+lieu, puis rôle+dates) suivies d'une
// liste à puces indentée. Pour Formation et Expérience Professionnelle.
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

// Projet / activité extra-scolaire : titre gras, ligne italique optionnelle,
// puces. Pour Projets Universitaires, Bénévolat, Associations, etc.
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

// Ligne de compétence : « Label : » en gras + valeurs en clair.
#let skill-line(label, items) = {
  par[#text(weight: "bold")[#label :] #items]
}

// ═══ CONTENU — remplacer ci-dessous par vos informations ════════════════

// ─── en-tête ──────────────────────────────────────────────────────────────

// Poste visé / titre professionnel optionnel au-dessus du nom.
// Supprimer la première ligne ci-dessous si vous ne voulez pas de titre.

#align(center)[
  #text(size: 11pt, style: "italic")[Poste visé — courte phrase de positionnement] \
  #v(2pt)
  #text(size: 22pt)[Prénom Nom] \
  #v(1pt)
  #text(size: 10pt)[+33 X XX XX XX XX #h(4pt) | #h(4pt) #link("mailto:email@domaine.com")[email\@domaine.com] #h(4pt) | #h(4pt) #link("https://linkedin.com/in/identifiant")[linkedin.com/in/identifiant] #h(4pt) | #h(4pt) #link("https://github.com/identifiant?tab=repositories")[github.com/identifiant]]
]

// ─── profil (1 court paragraphe) ─────────────────────────────────────────

#section("Profil")

#text(weight: "bold")[Court résumé professionnel en 2 ou 3 phrases. Commencez par votre statut ou intitulé actuel, citez 2 ou 3 compétences techniques que vous maîtrisez, puis indiquez le poste / type de contrat recherché. Restez sous 250 caractères pour rester percutant.]

// ─── expérience professionnelle ──────────────────────────────────────────

#section("Expérience Professionnelle")

#entry(
  "Nom de l'entreprise — équipe / division",
  "Ville, Pays",
  "Intitulé du poste (type de contrat, ex. Alternance)",
  "20XX – 20XX",
  bullets: (
    [Réalisation commençant par un *verbe d'action fort*. Quantifier l'échelle (taille, volume, précision, temps gagné). Mettre en gras les *outils / techniques* recherchés par les recruteurs : *Python*, *PyTorch*, *LangChain*.],
    [Deuxième réalisation. Verbe différent. Métrique différente. Mots-clés différents. Chaque puce communique un résultat — pas une fiche de poste.],
    [Troisième réalisation. Mentionner l'*impact business* et toute collaboration transverse pertinente.],
    [Quatrième réalisation (optionnelle). À utiliser avec parcimonie — 3 à 4 puces par poste est l'idéal.],
  ),
)

#entry(
  "Précédent employeur",
  "Ville, Pays",
  "Rôle (Stage, Freelance, Job étudiant, etc.)",
  "Mois 20XX – Mois 20XX",
  bullets: (
    [Résumé en 1 ou 2 puces si le rôle est court ou peu pertinent.],
  ),
)

// ─── formation ───────────────────────────────────────────────────────────

#section("Formation")

#entry(
  "Nom de l'établissement",
  "Ville, Pays",
  "Intitulé du diplôme (nom complet, abréviation entre parenthèses)",
  "20XX – 20XX",
  bullets: (
    [Sujet de mémoire / projet final en *gras*, encadrant ou partenaire si pertinent.],
    [Modules : lister 4 à 8 *cours à fort signal*, séparés par des virgules.],
  ),
)

#entry(
  "Établissement précédent",
  "Ville, Pays",
  "Diplôme précédent",
  "20XX – 20XX",
  bullets: (
    [Modules : autre courte liste de matières pertinentes, *mots-clés* en gras.],
  ),
)

// Ajouter ou retirer des entrées ci-dessus si nécessaire (Bac, prépa,
// programmes complémentaires). Conserver l'ordre antéchronologique.

// ─── projets académiques ─────────────────────────────────────────────────

#section("Projets Académiques")

#project(
  "Titre du projet — courte accroche",
  sub: "Contexte : établissement / hackathon / cours (équipe de N) — année",
  bullets: (
    [Description orientée résultat : ce que vous avez construit, *technologies* en gras. Mentionner la taille de l'équipe et votre rôle (lead, dev, designer).],
  ),
)

#project(
  "Deuxième projet — courte accroche",
  sub: "Contexte — année",
  bullets: (
    [Description, *outils*, métrique (précision, latence, mise en production, utilisateurs).],
  ),
)

#project(
  "Troisième projet",
  sub: "Contexte — année",
  bullets: (
    [Description, *outils*, résultat.],
  ),
)

// ─── activités extra-scolaires (associations, bénévolat, sport) ──────────

#section("Activités Extra-Scolaires")

#project(
  "Nom de l'association / club — établissement",
  sub: "Poste — 20XX – 20XX",
  bullets: (
    [Ce que vous avez organisé, échelle (participants, fréquence), outils utilisés. Quantifier si possible (ex. *événements hebdomadaires*, *50+ participants*).],
    [Deuxième activité / initiative si pertinent.],
  ),
)

// ─── centres d'intérêt et compétences ────────────────────────────────────

#section("Centres d'intérêt et Compétences")

#skill-line("Programmation", "Langage 1, Langage 2, Langage 3, Langage 4")
#skill-line("IA / ML", "Bibliothèque 1, Bibliothèque 2, Framework 1, Framework 2")
#skill-line("LLM / Agentique", "Outil 1, Outil 2, Concept 1, Concept 2")
#skill-line("Data / MLOps", "Outil 1, Outil 2, Outil 3, Outil 4, Outil 5")
#skill-line("Outils", "Éditeur, IDE, OS, outil de visualisation, outil de gestion de projet")
#skill-line("Certifications", "Certif 1 ; Certif 2 (organisme, année)")
#skill-line("Langues", "Langue 1 (langue maternelle) ; Langue 2 (courant) ; Langue 3 (B2, score de référence)")
#skill-line("Centres d'intérêt", "Intérêt 1 ; intérêt 2 (avec une ligne de contexte si un titre est en jeu) ; intérêt 3 ; intérêt 4")
