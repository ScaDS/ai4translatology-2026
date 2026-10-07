# Instructions for maintaining this LLM wiki

This is the active wiki in the AI4Translatology vault. Read the vault-root
`AGENTS.md` and `Wiki-Index.md` before working. All paths here are relative to
the vault root, unless stated otherwise.

## Scope and schema

- Wiki entries live directly in `05-Wiki/`, with unique descriptive titles.
- Use `08-Templates/Wiki-Entry.md` as the entry schema.
- Evidence lives in `02-Sources/`. These source notes are immutable for wiki tasks.
- `Wiki-Index.md` is the catalogue; `Overview.md` is the synthesis;
  `Change-Log.md` records actual maintenance operations.
- The supplied sources are fictional teaching passages, not published empirical studies.

An entry must contain a status, human review fields, a short explanation, a
claim/evidence table, suggestions clearly separated from sourced statements,
limitations, related-note links and a change log. Leave human review fields
unfilled when no review has occurred.

## Ingest and maintenance workflow

1. **Read the rules and catalogue.** Check whether the requested entry already
   exists. Update a relevant existing draft instead of creating duplicates.
2. **Read the evidence.** Use the relevant source passages, preserving their
   note names and passage IDs. Do not invent publications, URLs or measurements.
3. **Draft or revise the entry.** For every source-supported claim, include an
   exact quote, a link such as `[[Source-C-Review#C2]]`, and a provenance tag
   such as `[src: 02-Sources/Source-C-Review.md#C2]`. Quotes must support the
   claim, not merely mention the same topic.
4. **Expose gaps and conflicts.** Distinguish evidence, inference and proposed
   practice. If the sources do not answer a question, record it as unanswered.
5. **Preserve review status.** New generated content is `draft`. Never promote
   an entry to `reviewed` yourself. For a reviewed page, preserve its checked
   content and place proposed substantive revisions in a separate draft or
   clearly marked proposal for human review.
6. **Maintain navigation.** Put draft entries under the index's draft heading
   and human-reviewed entries under its reviewed heading. Add related links.
   Update `Overview.md` with a brief, status-aware synthesis when relevant;
   do not present a draft conclusion as an established fact.
7. **Record actual changes.** Add a dated row to `Change-Log.md` with the request,
   files changed, sources used and remaining checks. Use the actual date if
   available; otherwise state that it is not specified. Do not claim to have
   performed checks that you did not perform.
8. **Report back.** Summarise changed files, source support and remaining human
   review needs. Include a link to the resulting entry.

## New sources and external research

If a user requests ingestion of a new source, ask them to provide the source
note in `02-Sources/` with provenance and stable passage IDs, or work from a
source they have explicitly authorised you to add there. Adding a new source
is different from modifying an existing one. Preserve existing source notes.

External research requires an explicit request. A web page must be recorded
as an external source with title, URL and available access-date information;
do not silently substitute it for one of the supplied sources.

## Before finishing

- Do source quotes match the original passages exactly?
- Does each cited passage actually support its claim?
- Are new generated claims drafts, and are review fields truthful?
- Do the index, related links and change log resolve to existing notes?
- Are missing evidence and suggested practice visible?
- Are the original source notes unchanged?
