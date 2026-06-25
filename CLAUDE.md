# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

This is **not a software project**. It is the personal job-search workspace of **Jewin Cheng** (AI/ML Engineer, MSc Paris-Saclay, ~2 years apprentice experience at Malakoff Humanis, seeking a CDI in 2026). It holds CV/resume sources, the LinkedIn profile draft, cover letters, and a corpus of real job offers used to drive optimization. Output artifacts are PDFs generated from Typst sources.

## Build / compile

Documents are written in [Typst](https://typst.app/) and compiled to PDF. The binary lives at `~/Library/typst/typst` (not on `PATH`).

```bash
# Compile one resume (run from its directory)
~/Library/typst/typst compile jewin_cheng_resume_AI_ML_Engineer_FR.typ

# Live preview while editing
~/Library/typst/typst watch jewin_cheng_resume_AI_ML_Engineer_FR.typ

# Render a page to PNG to visually verify layout / page-fit
~/Library/typst/typst compile --format png <file>.typ check.png   # delete check.png after
```

There is no test suite, linter, or package manager. The `liberation serif` font warning on compile is harmless (falls back to Times).

### Page-count check (the one constraint that matters)

Resumes **must stay 1 page**. Adding content easily spills to page 2. To verify:

```bash
python3 -c "import re;d=open('FILE.pdf','rb').read();print(len(re.findall(rb'/Type\s*/Page[^s]', d)),'pages')"
```

If it spills, recover space *without dropping keywords* by tightening the Typst helper spacing (`entry`/`project` trailing `v(...)`, `section` leading `v(...)`) or shaving page `margin`, before cutting text.

## Document architecture

The CV system is layered — never edit a derived doc without checking its source:

- **`cv_resume/master/CV_master_{EN,FR}.md`** — exhaustive source of truth. Every experience, project, skill. Master is allowed to be long.
- **`cv_resume/master/STAR_master_Jewin_CHENG_{EN,FR}.md`** — full STAR narrative for each experience/project. Source for interview prep, cover letters, and any *new* targeted-resume variant.
- **`cv_resume/master/resume_template{,_FR}.typ`** — the Typst layout (helpers: `section`, `entry`, `project`, `skill-line`). Targeted resumes copy this format.
- **`cv_resume/resume/jewin_cheng_resume_AI_ML_Engineer_{EN,FR}.typ`** — the live targeted resume (positioning: *AI/ML Engineer · LLM · RAG · Agentic · MLOps*). CAR-format bullets, derived from the masters.
- **`cv_resume/linkedin/linkedin_profile.md`** — the LinkedIn draft (headline, About, experience, skills dump). **Untracked in git** (no diff history yet). Changes here are a draft to copy into the LinkedIn app; they do not touch the live profile.
- **`cv_resume/cover_letter/`** — Typst cover letters.

Keep **FR and EN versions in sync** when changing shared content.

## Inputs that drive optimization

- **`feedback/vt_target/`** — target VivaTech job offers (PDF + saved-HTML). These define what to optimize *toward*.
- **`feedback/refused_job_post/`** — offers where applications with these resumes were rejected. Learn what was missing from these.
- Saved-HTML offers carry a sibling `*_files/` dir (browser cruft); ignore it. Extract job text by stripping tags from the `.html` (the cookie-banner/nav boilerplate is noise — grep for the mission/profile section).
- **`cv_resume/answer.md`** — discovery Q&A: ground-truth detail on every experience plus HR-partner framing decisions. Read before writing any new bullet.
- **`cv_resume/resume/fix.md`** — running list of manual corrections to apply to the resumes.
- **`carreer_choice.md`** — career-status exploration notes (FR).

## Honest-framing rules (hard constraints)

These come from `answer.md` and prior sessions — keep every claim verifiable:

- **Never invent metrics, tools, or scope.** Only add a skill/number if it is true and traceable to `answer.md` or the masters. When unsure, ask rather than assume.
- Malakoff classification: framed as "extracted 200K critical contracts," **not** "cleared the backlog" (it wasn't cleared).
- Downplay the Dataiku **low-code** signal; lead with the Python stack.
- The Nutrition RAG project: led a **team of 5** (one of 5 sub-teams, ~25 students total) — do not phrase as "responsible for 25 students."
- Drop "junior" hedging from the targeted resume positioning; lead with the 2 years of production experience.

## Workflow skills

Three project skills encode the methodology (intake → STAR → CAR/CV, and LinkedIn optimization):

- **`cv_prompt`** (`.claude/skills/cv_prompt/SKILL.md`) — senior-HR persona; STAR drafting then CAR-bullet conversion for the French junior-tech market (1-page convention, optional photo, alternance valued, no DOB/nationality).
- **`linkedin_prompt`** (`cv_resume/linkedin/linkedin_prompt.md`) — LinkedIn personal-branding persona with pre-loaded candidate context; optimizes for recruiter search ranking (headline keywords, hooks, endorsable skills).
- **`cv-to-typst`** — converts an assembled Markdown CV into the Typst resume format.
