# Q&A — CV Discovery

---

## Wave 1 — Targeting & positioning

**Q1. Target role:** Open to any role from software engineer to AI engineer. Priority missions: Agentic Systems, RAG, ML, LLM. Alternatively, interested in finance, health, video game, food sectors.

**Q2. Target cities:** Any town in France. Remote preferred.

**Q3. Dream employers:** No specific names. Looking for a scale-up with self-development culture, helpful, growth-focused.

**Q4. Timeline:** Graduating 2026, looking for a CDI.

**Q5. Current job status:** Applying for post-graduation roles only.

**Q6. BSc grades:** Leave off all grade mentions in education.

---

## Wave 2 — Malakoff Humanis deep dive

**Q7. ML classification model (85% accuracy):**
- How long did the project take from start to batch deployment? It took 8 months
- How many documents processed per run (or per month)? There was two batch of document each of 500K, we had 6 month for the first one then 2 months for the second one.
- Solo project or team effort — what was your specific role? It was team effort, 3 senior Data scientist and 2 apprentice. My role was to build the parsing phase from pdf and img files. Launching either pdf parsing or OCR parsing and then build the pipeline for training the ML model, sample for label task and prediction phase on whole batch.
- Did you actually clear the backlog? How many contracts or how much time was saved? We didn't clear the backlog, originally there was three main tasks : classification, NER and sign detection. Only classification was kept because of the sponsor needs. We extracted around 200k (out of 1.1m of documents) critical contract as "condition particulière" in french for health insurance. Compute the time taken for an employee to look for health insurance document such as : conditions particulière, conditions générale, notice d'information, tableau de garantie, avenant.

**Q8. R-CNN + NER pipeline (+8%):**
- What was the baseline accuracy before your contribution? The baseline accuracy was 80% because it was focused on scanning a qr code.
- What was the scale — how many tax notices processed? There is approximatively 100k tax notice every year, not sure about that.
- Did you design/train the R-CNN yourself or integrate an existing model? I trained the R-CNN model myself with dataiku available model choice.

**Q9. BERT fine-tuning for email classification:**
- How many total leaf classes across the 3 levels? There is more than 200 leaf classes.
- What was the volume of emails (per day/month)? The volume of emails every month is 20k per month.
- What was the measured accuracy or business outcome (time saved, routing accuracy)? The measured accuracy is 70% for now, it's still ongoing. 

**Q10. MLOps practices — what specifically did you implement?**
(CI/CD pipelines, model versioning with MLflow, monitoring, automated retraining, etc.)
I implemented a model versioning, monitoring and prediction pipeline with mlflow. I pratices CI capability in my education project involving the multi agent system.

**Q11. Team & autonomy:**
- How large was the Data Science team? The Data Science team is around 30 people.
- Were you assigned tasks or did you own full projects end-to-end? I was mostly assigned core tasks, my tutor was guiding me essentially.
- Did you interact directly with business stakeholders? Yes I could see how they classify clients contracts, heard they needs. For mail classification, I have a weekly planning with a project owner to discuss about his needs and report to him the ongoing outcome of the project leading to adjusting the target and giving him core information related to his own process. It appears that it helped him to detect edge cases in their mail process and he could quantify the error, flaws and process evading by their own employee.

**Q12. Dataiku:**
- Was it central to your workflow or one tool among many? It's central to the worklow, we need to use it for confidentiality. We cannot own the client data in our computer.
- How do you feel about it being on your CV — strength or "low-code" signal you'd rather downplay? Downplay the low code signals.

---

## Wave 3 — Research, academic projects & top AI projects

**Q13. LMF research internship (June–August 2024):**
- What was your specific contribution to the Monero traceability work — were you implementing tools, analyzing existing data, building proofs-of-concept? It was mainly looking and understand the proof bething the security of Monero (zero-knowledge proof), explain it to the tutor and building a small tool to visualize the path of a traceable transaction. 
- Did you produce a deliverable (report, tool, demo)? If yes, what? No I didn't.
- Who did you present to (academic supervisor + which law-enforcement body — DGSI, gendarmerie cyber, OFAST, Tracfin)? I presented to the supervisor and someone from gendarmerie cyber.
- Was the work paid? Solo or in a team? Yes it was paid and I was Solo.
- Any concrete techniques used (chain analysis, statistical heuristics, ring-signature analysis, etc.)? Not really, just used a public database of contaminated transactions used by other transactions.

**Q14. GNN + blockchain TER (2024–2025):**
- What was the specific traceability problem you tackled (de-anonymization, transaction clustering, address linking)? The goal was de-anonymization.
- Which GNN architecture (GCN, GraphSAGE, GAT, custom)? We explored the GCN and GAT
- What dataset did you use (real blockchain data, synthetic, public dataset)? We used real blockchain extract from public daimon nodes.
- What were the results — did the model work? Any metric you can cite (accuracy, AUC, F1)? We didn't finished the work to produce an outcome on these data.
- Your specific role in the team of 3? We were 2 and I was responsible for producing the code, while my teammate was responsible for the architecture comprehension and math behind it. 

**Q15. RAG for ticket resolution:**
- Was this a school project, personal, or hackathon? Solo or team? It was a school project with 4 students.
- Tech stack (LangChain, LlamaIndex, vector DB choice, LLM used — GPT-4, Mistral, Llama)? We used LangChain, Langgraph and Snowflake builtin tools for LLM and chat handling (Cortex Agent, Cortex Search, Cortex REST API, Threads, DataWarehouse).
- What was the outcome — did it actually resolve tickets? Any quantified improvement vs baseline (no RAG / keyword search)? Based on the LLM evaluation metrics (faithfutllness, groundedness) we had around 70% on 2K sample tickets.
- Any deployment, or just a notebook prototype? We deployed the chatbot on snowflake as a streamlit application.

**Q16. RAG for nutrition (~25 people team):**
- That's a large team — what was your specific contribution (retrieval, generation, evaluation, frontend, data prep)? My team was responsible for the feature design including : nutri score computation, adapting the ingredients of the recipe giving substitution or removal and rewriting the recipe steps. My role was like a team leader communicating with other team leader, assigning tasks and making decisions for the next feature to do. 
- Was this a course project, hackathon, or industry collaboration? It was a course project of 2 months.
- What was the final deliverable? The final deliverable was a web application where you can chat with our agent to retrieve or generate recipe and ask questions on ingredients.

**Q17. Hackathon — Agentic system:**
- Which hackathon (name, organizer, year)? Did you win or place? I took part at Paris-Saclay, Paris 8 and Chigoutimi hackathon partners, the name was "Hackathon Gen AI 2026". We didn't qualified to the second round.
- Team size, your role? We were 4 and I was a developer.
- What did the system actually do (multi-agent for what task)? Tech stack (CrewAI, LangGraph, AutoGen, custom)? We used LangGraph and LangChain, the system goal was to build from an user needs his project starting from specification, validations, code and files for CI/CD. We managed to link the system as VS Code extension.
- Is this the same project as the "CI capability" you mentioned in Q10? Yes it is.

**Q18. Health-insurance chatbot (IBM Cloud):**
- Course project or internship? Solo or team? It was a course project and I was solo.
- Was it deployed, or a prototype? Any users tested it? It wasn't deployed.
- IBM Watson Assistant or another IBM tool? I used IBM Watson Assistant.

---

## Wave 4 — Remaining projects, certifications, extracurriculars & header

**Q19. Lua interpreter (OCaml → Rust port):**
- Solo or team? Course project or personal? It was Solo and it was a course project.
- What "subset" of Lua — variables, functions, coroutines, tables, metatables? It was variables, functions and coroutines.
- Why port to Rust — performance, learning, comparison? Using Rust because it was the course goal.
- Is the code on GitHub? Public link? I can submit it.

**Q20. Java-like OOP language interpreter (OCaml):**
- Solo or team? Course or personal? It was also solo and a course project.
- What features did the language support — classes, inheritance, type-checking strength? Classes, inheritance, static type checking.
- Is the code on GitHub? I can also submit it.

**Q21. Other projects worth mentioning:**
For each of these, tell me: solo/team, scale, tech stack highlights, and whether code is public.
- ETL pipeline & decision-support system : duo; the scale was using IGN database; basic python and postgresql; the code is not public
- Tableau dashboard — Crime in France : solo; 3 interactive views with country, region, town level; using Tableau application; not public
- Tableau dashboard — Financial data : solo; interactive dashboard with 2 views using yahoo finance data focused on NASDAQ stock market; streamlit; code is public
- Ethereum smart contract mini-game : duo; interactive TUI to play with a partner; python web3 library; the code public
- NLP pipeline — Biology research articles: duo; notebook result analysis; python scispacy and sklearn; is public
- ML pipeline — Patient survival & plant images: duo; notebook result analysis; python sklearn; not public 

**Q22. Operations research & computer security projects:**
Your current CV says "to be completed." What did you actually do in OR and security? Any project worth surfacing for an AI/finance/health role?
Aside what is cited, nothing else is worth mentioning.

**Q23. Certifications:**
Do you have any — AWS, GCP, Azure, Snowflake, Dataiku, Coursera/DeepLearning.AI specializations, MLflow, Docker/Kubernetes, etc.? List anything completed (even free certs). I have Dataiku Core Designer and ML practicioner certifications, if needed I can take some other.

**Q24. GitHub & online presence:**
- Is your GitHub (jewinc) active and public — pinned projects worth showing recruiters? Yes, all of my agentic systems and RAG are on it, my health related project are in, finance too.
- Any blog, Medium articles, Kaggle profile, HuggingFace model uploads, personal portfolio site? No.

**Q25. Extracurriculars & student associations (valued in France):**
- Any role in BDE, BDS, BDA, junior-entreprise, tech association, or student club? No.
- Volunteer/charity work, mentoring, tutoring (you mention chess school champion — any teaching role)? No.
- Badminton — competitive level, club name, any organizational role (captain, treasurer)? It was in middle school, I was just in the school assocation and partake on competitions.

**Q26. Header details for the CV:**
- Which city are you currently based in (for the header)? I'm currently based in Palaiseau near Paris.
- Photo: include or skip? (Optional in France; more common in traditional sectors, less common in tech.) skip
- LinkedIn URL — confirm `linkedin.com/in/chgjewin-lkd` is the canonical one or do you have a cleaner vanity URL? it is the canonical, I can build another one if needed.
- Portfolio URL beyond GitHub — do you want the TUMO Drive link in the CV, or only the master CV? only on the master CV.

**Q27. Professional summary positioning:**
Your current summary leads with "Final-year MSc student... two years apprentice at Malakoff Humanis... NLP, CV, MLOps, modern AI (LLMs, RAG, agentic systems). Also interested in PL, OR, security."

For the targeted CV, do you want to lead as:
- **(A)** AI/ML Engineer with apprentice industry experience (LLM/RAG/agentic emphasis)
- **(B)** Data Scientist with broad tooling (current framing)
- **(C)** Software/AI generalist (ML + PL/systems work)
- **(D)** Something else — describe
Go for A, please start by making the master CV with STAR framework then write the CV targeted to A with CAR framework.

---

## Notes & strategic recommendations from the HR partner

### Files produced
- **`STAR_master_Jewin_CHENG_EN.md`** — full STAR narrative for every experience and major project. Use this for behavioral interviews, motivation letters, and as the source for any future targeted CV variant.
- **`CV_AI_ML_Engineer_EN.md`** — 1-page targeted CV in CAR format, AI/ML Engineer positioning. ATS-safe Markdown (no tables, no multi-columns), no photo, no grades — French-junior convention respected.

### Key honest-framing decisions made in the targeted CV
1. **Malakoff classification** — framed as "extracted 200K critical contracts" rather than "cleared the backlog" (which didn't happen). This is truthful and still impressive.
2. **Malakoff R-CNN +8 pp** — kept the +8 pp claim but added the QR-baseline context (80%) so the number is verifiable.
3. **Malakoff BERT 70%** — explicitly framed as "in production" with the right scale signal (200+ leaf classes, 20K emails/month). The "still ongoing" framing was dropped from the bullet because at interview time you can clarify; on a CV it weakens the line.
4. **Dataiku** — mentioned as "Dataiku-governed environment with custom Python (PyTorch, scikit-learn…)" to neutralize the low-code association. Recruiters who skim will see the Python stack first.
5. **Hackathon Gen AI** — framed as "built X as a VS Code extension" without mentioning the round-2 disqualification. The work is the signal; the placement is irrelevant unless you won.
6. **GNN TER** — framed as "implemented GCN/GAT pipelines on real blockchain data" without claiming results, since you didn't reach metrics. Truthful and still credible as research signal.
7. **MLOps** — kept MLflow at Malakoff (legitimate); the **CI capability** language was kept out of the Malakoff section since it actually came from the hackathon. Don't conflate the two in interviews.
8. **ANSM switchboard** — *dropped* from the targeted CV. For an AI/ML Engineer role, it consumes a line for low signal. Keep it on the master CV for completeness; bring it back for non-tech contexts only.
9. **IBM Watson chatbot, plant-image ML, financial Tableau dashboard** — *dropped* from the targeted CV (solo + not deployed, or weak project signals). Kept on master CV.

### Things you should do BEFORE applying
1. **Push your two interpreters to GitHub** (Lua OCaml→Rust, Java-like OCaml). They are strong differentiators for AI/ML Engineer profiles because they show systems-level rigor that most ML candidates don't have. Pin them as featured repos.
2. **Pin your AI/ML repos on GitHub** — RAG ticket-resolution, the agentic VS Code extension, RAG nutrition. Recruiters click through. A messy unpinned profile reads as "didn't bother."
3. **Clean up your LinkedIn vanity URL.** `chgjewin-lkd` reads as a placeholder. Move to `linkedin.com/in/jewin-cheng` or similar — takes 2 minutes, lasts forever.
4. **Add a short pinned README to your GitHub profile** — 5 lines describing what you build (LLMs, RAG, agentic, NLP), with links. Recruiter time on profile is ~30 seconds.
5. **Decide on a French CV variant.** For most French scale-ups, a French-language CV is expected even when the role is in English. Once the English version is locked, I can produce the French translation in one pass — same content, French-market phrasing.
6. **Consider one more cert** — AWS Cloud Practitioner or Snowflake SnowPro Core would round out the cloud signal cheaply. Not blocking, but useful if you have spare hours.

### What I would NOT do
- Do **not** add a photo. For tech in France, neutral or absent. You're already filtering for the kind of company that judges on substance.
- Do **not** include date of birth or nationality — increasingly discouraged in France for anti-discrimination reasons.
- Do **not** lengthen to 2 pages. For a junior with 2 years of apprentice experience, 1 page is the convention; going to 2 pages signals padding.
- Do **not** weaken the BERT 70% bullet by adding "ongoing." If asked in interview, you say "still in iteration, baseline at 70% across 200+ classes." The CV is for getting the interview; the interview is for nuance.

### Open questions / things you can still tighten
- **(Q28)** Do you want a French-language version of the targeted CV next? (Recommended.)
- **(Q29)** Want me to produce variant CV files for **non-AI fallback targets** (Software Engineer, Data Scientist) using the same STAR master as source? Useful if you want to apply broadly.
- **(Q30)** A short *lettre de motivation* template in French, parameterized by company name? French scale-ups still expect this for many CDI applications.
- **(Q31)** Do you want me to draft a 30-second elevator pitch (FR + EN) you can reuse on LinkedIn DMs and at career fairs?
