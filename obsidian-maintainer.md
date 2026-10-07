# Maintaining the optional Obsidian track

## Source material

- Preparation: `docs/obsidian-setup.md`.
- Exercises: `docs/obsidian-workshop.md`.
- Public, credential-free teaching notes: `workshop/obsidian-vault/`.
- Archive helper: `scripts/package_obsidian_vault.py`.
- Agent routing: `workshop/obsidian-vault/AGENTS.md`.
- Wiki schema/workflow: `workshop/obsidian-vault/05-Wiki/AGENTS.md`.
- `workshop/obsidian-vault/Workshop-Guide.md` is a generated, versioned copy of `docs/obsidian-workshop.md`, with Book links adapted to full website URLs. It is available in the directly opened vault and included unchanged in the ZIP. Edit the Book page, then refresh the guide with `python scripts/package_obsidian_vault.py --sync-guide`; packaging also refreshes it automatically.

The meetup application/plugin package was not present in this repository when
this track was prepared. Use it as the tested distribution base and record its
exact Obsidian and Copilot versions in the released vault. The public fallback
instructions describe Copilot V4; the upstream 4.0.13 manifest requires Obsidian
1.11.4 or newer. Do not mix older plugin settings with an untested V4 upgrade.

The exercises deliberately use explicit context in Chat/Quick Chat. In V4,
free Chat does not automatically retrieve the entire vault. No embeddings,
Miyo, paid plan or installed agent backend is required for the core tasks.
The optional wiki-maintenance task uses Agent Chat and therefore needs an
installed backend with a working workshop-model connection. Instructions for
the managed backend are on the preparation page. Quick Chat uses attached
instructions and proposed note contents as a manual fallback.

Keep the credential-free note sources and packaging scripts in Git. Use
`workshop/releases/`, `workshop/local/` or `release/` for configured vaults,
plugin settings and participant archives; these directories are ignored.
Vault-local `.obsidian/` settings, `.copilot/` caches and the plugin-managed
`copilot/` directory are also ignored if the source vault is opened directly
for testing. They remain on the local machine; add the tested plugin files
only to the separately prepared Nextcloud release.
Only the configured participant packages are distributed through Nextcloud.

## Prepare a participant package

1. Package the notes with Python, choosing an existing output directory:

   ```bash
   python scripts/package_obsidian_vault.py /tmp/opencode/ai4translatology-obsidian.zip
   ```

   On Windows, supply a path in an existing local release/download directory.
    The helper includes the teaching Markdown notes, both agent instruction
    files and the generated workshop guide. It does not bundle
   Obsidian, plugin binaries, `.obsidian` settings or API credentials.

2. Extract into an ignored release workspace such as `workshop/releases/`
   and open it as a vault. Add the
   tested meetup Copilot plugin/configuration, or install Copilot through the
   community-plugin browser. Keep the plugin's `.obsidian` folder in the release.
3. Configure a custom provider: `https://llm.scads.ai/v1`, an available model
   such as `Qwen/Qwen3.8-27B`, and the workshop key. Select the model for Chat.
4. **Copilot V4 stores keys in the device-specific Obsidian Keychain.** A ZIP
   of the vault is not sufficient to transfer credentials. Include a separate
   access-information file with the key in the Nextcloud release and explain
   the one-time BYOK entry. For an older meetup version, test its actual key
   portability on a second machine before promising zero-entry setup.
5. Add release notes with application/plugin versions, the chosen model and
   the applicable access instructions. Bundle the prepared vault and access
   information for the share. Link to the official app installer, or use the
   existing meetup distribution after checking its own packaging conditions.
6. Publish the participant package on:
   https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH
   Link validity: **31.12.2026**. Update both preparation pages if this changes.

## Release check

- Test on a fresh Windows and macOS/Linux installation, not only the author's
  configured machine. Test the device-specific key-entry step where applicable.
- Verify `00-Start` links, plugin enablement, model selection and brief test.
- Verify the bundled Workshop-Guide opens, the root router points to the wiki
  instructions, and the optional Agent Chat task updates the draft/index/log
  without modifying source notes or claiming human review.
- Confirm explicit attachments reach the model; reattach for each new request.
- Run baseline translation in a new chat without brief/table/corpus context.
- Inspect the controlled C05 conflict and translation-memory/chat-memory scope.
- Check wiki claims and the missing BLEU evidence; the sources are authored toy
  examples, not bibliographic evidence of empirical translation performance.
- Reopen the vault and verify saved notes. Confirm the ZIP contains `.obsidian`
  where intended; hidden directories are easily lost during manual packaging.

The Nextcloud package has to be assembled and uploaded by the organiser. The
repository supplies the note content and instructions, not an already-published
configured vault.
