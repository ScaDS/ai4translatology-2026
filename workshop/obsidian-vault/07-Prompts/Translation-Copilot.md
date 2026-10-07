# Translation-Copilot

Attach [[Source-Text]], [[Project-Brief]], [[Wording-Table]] and
[[Teaching-Corpus]] to a new chat.

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

Review the output and save it in [[Translation-Comparison]].
