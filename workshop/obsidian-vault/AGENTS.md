# Agent instructions for this vault (router)

This vault is an **AI4Translatology workshop playground** for project support,
source-based knowledge work and translation. Read this file before searching,
using the web or changing notes. Paths below are relative to the vault root.

## Where things live

| Folder / file | Purpose | Role |
| --- | --- | --- |
| `00-Start.md` | Human entry point and links | Navigation |
| `Workshop-Guide.md` | Exercises, available here and in the packaged vault | Reference |
| `01-Projects/` | Fictional brief, meeting notes and source text | Reference |
| `02-Sources/` | Numbered source passages for the wiki | Immutable evidence |
| `03-Terminology/` | Project wording preferences and scope | Reference |
| `04-Corpus/` | Small fictional bilingual teaching corpus | Reference |
| **`05-Wiki/`** | **The active, source-based LLM wiki** | **Primary for wiki tasks** |
| `06-Outputs/` | Action lists, translations and human evaluation | Deliverables |
| `07-Prompts/` | Reusable task instructions | Reference |
| `08-Templates/` | Wiki and terminology entry schemas | Reference |

## The active wiki

For wiki creation, maintenance or questions, start with:

1. **Schema and workflow:** `05-Wiki/AGENTS.md` — read first.
2. **Catalogue:** `05-Wiki/Wiki-Index.md` — locate existing relevant entries.
3. **Synthesis:** `05-Wiki/Overview.md`.
4. **Chronicle:** `05-Wiki/Change-Log.md`.
5. **Evidence:** relevant passages in `02-Sources/` — never change these.

Work within `05-Wiki/`, using the required sources and templates. Do not
rewrite project briefs, corpus examples, outputs or templates as part of a
wiki task. A separate explicit request can target an output in `06-Outputs/`.

## Rules

1. **Local before web.** Use local notes and sources first. Use external
   research only when explicitly requested. If evidence is missing, say so
   and identify what would be needed; do not fill the gap from model memory.
   Label external evidence separately from the supplied workshop sources.
2. **Cite evidence.** Use Obsidian links to source passages, for example
   `[[Source-B-Terminology#B1]]`, together with exact supporting quotes and
   source paths such as `[src: 02-Sources/Source-B-Terminology.md#B1]`.
3. **Do not smooth over conflicts.** Record contradictions, scope limits,
   older wordings and unanswered questions. Never edit evidence to match a claim.
4. **Write using the schema.** Follow `05-Wiki/AGENTS.md`. Keep generated
   entries as drafts until a human checks them. Update the index and change log.
5. **Keep project scope.** Terminology preferences apply to this fictional
   project, not every German text. Teaching corpus examples do not establish
   frequency, representativeness or translation-quality metrics.

## Roles

Obsidian is the workspace; the wiki is the maintained knowledge base. The
human curates sources, asks questions and reviews claims. The agent drafts,
links and maintains notes with visible evidence and a record of its changes.

These are agent instructions, not a sandbox or automatic enforcement. Copilot
Quick Chat does not automatically read this file: attach it and the relevant
wiki rules explicitly when using that mode.
