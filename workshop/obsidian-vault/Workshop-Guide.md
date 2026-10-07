> Workshop guide generated from the Jupyter Book source. Your working notes and agent instructions are in this vault.

# Obsidian + Copilot: a translator's knowledge workspace

**Optional track · approximately 45–60 minutes · no coding required**

Use this track during the workshop or take it home after exploring Langflow. Start with [Preparing Obsidian](https://scads.github.io/ai4translatology-2026/obsidian-setup.html). The exercises use the note set in the prepared Nextcloud vault. All sample project documents and corpus passages are **fictional teaching material** written for this workshop.

Our question: **How can a small, inspectable knowledge workspace make everyday translation work easier?**

You will produce:

- a checked action list for a project;
- a source-based wiki entry with explicit gaps;
- a German translation and a terminology QA record.

## Before you begin: choose what the model can see

### Open a note and give it to Copilot

1. In Obsidian's left file explorer, expand a folder and click a note to read it.
2. Open the command palette (**Ctrl+P** on Windows/Linux, **Cmd+P** on macOS) and
   run **Open Copilot Chat Window**. Use **Chat / Quick Chat** with the workshop model.
3. In the chat input, type **`@`**, choose the note/context picker and select
   the note by name. Repeat for each required note. Alternatively, use
   **Add context (+)** to select notes.
4. Check the **context badges above the input**: they show the notes or
   selections included with your request. Remove unrelated ones with **×**.
5. Paste the task prompt and send it. Read the result, then check it against the notes.

A new chat may automatically include the **active note**, depending on settings.
Opening several notes does **not** mean that all of them are attached. Check
the badges rather than assuming. Clear accidental text selections if you want
to attach a whole note. In V4, attachments apply to the next message: check
and reattach them before each new request.

Start a **new chat for each comparison**, then attach only the requested notes.
This keeps earlier answers and context out of the baseline run. In Quick Chat,
save results by copying the answer into the specified output note; it does not
automatically fill in your workshop worksheets.

The vault has these folders:

| Folder | Purpose |
| --- | --- |
| `01-Projects` | Your assignment: **Project-Brief** tells you who/what the translation is for; **Meeting-Notes** records decisions; **Source-Text** is the text to translate. Used in Tasks 1 and 3. |
| `02-Sources` | Evidence for your wiki: read **Source-A-Workflow**, **Source-B-Terminology** and **Source-C-Review** in Task 2; their A1/B1/C1-style IDs locate claims. |
| `03-Terminology` | Your project lookup table: **Wording-Table** gives preferred translations and their scope. Attach it in Task 3B. |
| `04-Corpus` | Contextual examples: **Teaching-Corpus** contains bilingual segments C01–C06. Attach it in Task 3B and compare examples with the wording rules. |
| `05-Wiki` | Wiki index and reviewed knowledge notes |
| `06-Outputs` | Your deliverables and evaluation record |
| `07-Prompts` | Reusable everyday-work, wiki and translation prompts |
| `08-Templates` | Wiki and terminology entry templates |

## Task 1 — Make everyday project work easier (10 minutes)

1. Open `01-Projects/Project-Brief.md` and find the audience and draft deadline.
2. Open `01-Projects/Meeting-Notes.md` and find one decision that is still open.
3. Start a new Copilot chat. Use **`@`** or **+** to attach both notes; check
   that **Project-Brief** and **Meeting-Notes** appear in the context badges.
4. First ask: `Which deadline is confirmed, and which decision is still open?
   Quote the supporting notes.` Check the answer yourself.

For the main request, attach both notes again and paste this prompt (also
stored as **Daily-Assistant** in `07-Prompts`):

```text
Using only the attached project brief and meeting notes, prepare:
1. A concise action table: task, owner, deadline, supporting note and quote.
2. A list of unresolved questions.
3. A draft clarification email to the project contact.
Do not invent owners, dates or decisions. Label missing information as
"not specified". Separate confirmed requirements from suggestions.
```

Check especially:

- Does the model keep **the draft deadline** separate from an unconfirmed publication date?
- Does it invent an owner for the terminology check?
- Does it notice that the word-count requirement is still an open question?

Copy the answer, open `06-Outputs/Action-List.md`, and paste the relevant parts
under **Reviewed actions**, **Open questions** and **Draft clarification email**.
Correct an ambiguity or record that none was found. The draft email is not a
confirmed project requirement.

**Discuss:** Which part saved work: summarising, structuring, or finding missing decisions?

## Task 2 — Build a small source-based LLM wiki (15 minutes)

Here, an **LLM wiki** means a linked set of knowledge notes drafted with AI and reviewed against sources. It is not a collection of unverified model answers.

1. Expand `02-Sources` and read the three **Source-A/B/C** notes. Find passage
   **C2** in **Source-C-Review**: this is evidence, not a translation assignment.
2. In a new chat, attach **Source-C-Review** and ask: `What does C2 say about
   using a second LLM as a reviewer? Quote the passage.` Check the quote.
3. Open `08-Templates/Wiki-Entry.md` and copy its contents. Right-click
   `05-Wiki`, choose **New note**, name it **Terminology-aware translation**,
   and paste the template. No template plugin is needed.
4. Start a new chat and attach **Source-A-Workflow**, **Source-B-Terminology**,
   **Source-C-Review** and **Wiki-Entry**. Verify all four context badges.
   Use the prompt below, also stored as **Wiki-Builder**:

```text
Draft a wiki entry on terminology-aware translation using only the attached
sources and template. For each factual claim, give the source note, passage
ID and a short exact quote. Separate source-supported statements from
suggested practice. Include limitations and unanswered questions.
Do the sources establish that a second LLM guarantees translation quality?
If not, say so. Do not invent publications, URLs or evidence.
```

Copy the proposed entry into your new note and check every quote against
`02-Sources`. Rewrite or remove unsupported claims. In **Wiki-Index**, add
`[[Terminology-aware translation]]` under **Draft entries**. Move it to
**Reviewed entries** and set its status to **reviewed** only after your checks.

Reattach the three source notes and try: `What do these sources say about
comparative BLEU scores?` They contain no such results. Record whether Copilot
acknowledges that gap.

**Discuss:** What makes the wiki useful later: fluent prose, evidence, links, or recorded uncertainty? Does a convincing citation actually support the sentence it accompanies?

### Optional extension — Let an agent maintain the wiki (10–15 minutes)

Use this extension if the workshop vault has a working **Agent Chat** backend,
or try it later at home. The core tasks still work in Quick Chat. Follow the
[optional Agent Chat preparation](https://scads.github.io/ai4translatology-2026/obsidian-setup.html)
if needed.

Open the vault-root **AGENTS.md** and **05-Wiki/AGENTS.md**. The first file is a
router: it tells the agent where to start. The second defines the wiki schema
and maintenance workflow. Check **Wiki-Index**, **Overview** and **Change-Log**
before requesting a change.

Open **Copilot Agent Chat** and send:

```text
Read the vault-root AGENTS.md, then 05-Wiki/AGENTS.md and Wiki-Index.md.
Using only Source-A-Workflow, Source-B-Terminology and Source-C-Review,
create or update a draft entry on terminology-aware translation.
Follow the wiki template and cite exact source passages. Update the index,
status-aware overview and change log. Leave the source notes unchanged.
Do not mark anything as human-reviewed. Report the files you changed and
the claims that still need checking.
```

Inspect the changed notes. Did the agent follow the schema, preserve sources,
add working links and leave its entry as a draft? Verify at least two quotes
yourself. Only you can mark the entry as reviewed after checking it.

If you use **Quick Chat**, attach both instruction files, the three sources,
the template and the index explicitly. Ask for proposed note contents, then
save and link them yourself. Quick Chat does not automatically read `AGENTS.md`
or perform the same file-maintenance workflow.

**Checkpoint:** You can delegate drafting and linking while keeping the
evidence, review status and maintenance history visible.

## Task 3 — A translation copilot with wording lookup and corpus evidence (20 minutes)

Before chatting, read these four notes:

1. `01-Projects/Source-Text.md`: find **translation memory** and **chat memory**.
2. `01-Projects/Project-Brief.md`: find the audience and purpose.
3. `03-Terminology/Wording-Table.md`: compare rules **W02** and **W03**. They
   apply to different concepts, even though both source expressions contain *memory*.
4. `04-Corpus/Teaching-Corpus.md`: find **C05** and compare it with W02.
   This older example conflicts with the current project preference.

### A. Baseline

Start a new chat and attach **only Source-Text** using **`@`** or **+**.
Remove any automatically attached brief, table, corpus or guide note. The
context badges should show only the source text. Ask:

```text
Translate the attached English text into German.
```

Copy the response into `06-Outputs/Translation-Comparison.md` under **Baseline**.

### B. Context-aware translation

Start another new chat. Attach **Source-Text**, **Project-Brief**, **Wording-Table**
and **Teaching-Corpus** one at a time with **`@`** or **+**. Check all four
context badges, then paste this prompt (also stored as **Translation-Copilot**):

```text
Translate Source-Text into German for the audience and purpose in
Project-Brief. Apply Wording-Table within its stated scope; grammatical
inflections are allowed. Use Teaching-Corpus for contextual examples,
not as proof of general frequency. Do not add factual content.

Return:
1. The translation.
2. A terminology decision table: source expression, chosen German wording,
   applicable wording-table row, corpus segment ID if relevant, and reason.
3. Unresolved ambiguities. Say "no corpus evidence" when appropriate.

Priority: project brief and scoped wording rules override corpus examples.
If they conflict, explain the conflict rather than silently ignoring a rule.
```

Save the response under **With context**. Compare both translations manually:

- **machine translation** should follow the preferred wording.
- **translation memory** is distinct from **chat memory**; the rule does not apply to every occurrence of *memory*.
- **release** in this project means publication, not software deployment.
- A stylistic preference such as **Teilnehmende** is project-specific, not a claim about all German usage.
- Corpus segment **C05** deliberately contains an older, non-preferred wording. Did the model follow the current table and explain the conflict?
- Did it add promises about quality that the source never made?

The table is **context supplied to an LLM**, not a CAT tool's enforced terminology database. A listed preference can still be ignored or applied incorrectly.

### C. Review the reviewer

Start a new chat and attach the same four notes as in B. Copy **only the
context-aware translation** into the message, prefaced with `Translation to
review:`; do not send both comparison versions. Add the prompt from
`07-Prompts/Translation-QA.md` and remove that prompt note's badge if it was
automatically attached. Verify each finding before changing the translation.
Copy accepted/rejected findings into `06-Outputs/QA-Record.md`.

As a controlled test, change one occurrence of the required translation for *translation memory* to **Übersetzungsgedächtnis** in a copy. Does the reviewer flag it? Also check for false positives involving *chat memory*.

**Discuss:** Did the model really use the corpus, or merely produce plausible segment references? What is lost when we call six teaching examples a corpus? Which decisions remain yours?

## Take it home (5 minutes)

Fill in **Take-Home** with one routine you want to repeat, the notes it needs, and the checks you will perform. Possible next steps:

- Turn a recurring request into a saved Copilot command.
- Add a terminology entry with scope, context, sources and a review date.
- Replace the toy corpus with a documented domain sample and record its provenance and coverage.
- Try automatic retrieval later and compare it with explicit attachments. Retrieval needs its own setup and can miss relevant notes.
- Move the same brief, table and review criteria into Langflow and compare the visible pipeline with note-based chat.

**Success criterion:** You can reopen the vault and explain which source supports a wiki claim or translation decision, rather than only showing an AI answer.
