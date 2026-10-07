# Preparing Obsidian (optional)

This track uses **Obsidian + Copilot** as a workspace for notes, terminology, source texts and AI-assisted translation. Choose it instead of the Langflow exercises during the session, or prepare both tools and try this track at home.

A **vault** is a folder of Markdown notes. Obsidian displays and links these notes; the Copilot community plugin sends your chosen context and prompts to a language model. Keeping notes locally does not make the model local: this workshop uses the ScaDS.AI endpoint.

## 1. Install Obsidian

Download Obsidian for **Windows, macOS or Linux** from the [official download page](https://obsidian.md/download) and install it. No Python, `uv`, Git or Obsidian Sync subscription is required.

## 2. Download and open the workshop vault

Download the Obsidian workshop vault from the [ScaDS.AI Nextcloud workshop share](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH).
**Attention:** the Nextcloud password is shared via the e-mail regarding workshop preparations.

**The link is valid until 31.12.2026.** The prepared vault, Copilot configuration and workshop-access information will be supplied there.

1. Extract the vault archive into a local folder, for example `ai4translatology-obsidian` in your home folder. Do not work inside the ZIP file.
2. Open Obsidian's vault switcher and choose **Open folder as vault**.
3. Select the extracted folder containing `00-Start.md` and the numbered note folders. Do not select its parent download folder.
4. Open **00-Start** and check that its links open the other workshop notes.

If the archive contains a `.obsidian` folder, keep it when extracting: this is where vault-specific settings and installed plugins live. On macOS/Linux it may be hidden in the file browser. Obsidian may ask whether to trust the vault's plugins; enable them for the organiser-provided workshop vault.

If the prepared archive is not yet available, install Obsidian and create an empty vault for now. The note set and exercises can be added when the download is ready.

## 3. Enable Copilot and check the model

Open **Settings → Community plugins**. If Copilot is already included, enable it. Otherwise turn on community plugins, choose **Browse**, search for **Copilot** by **Logan Yang**, then **Install** and **Enable**. This is Copilot for Obsidian, not GitHub Copilot or Microsoft Copilot.

Use the workshop's configured chat model. The connection settings are:

| Setting | Workshop value |
| --- | --- |
| Provider | Custom / OpenAI-compatible |
| Base URL | `https://llm.scads.ai/v1` |
| Example model ID | `Qwen/Qwen3.8-27B` |
| API key | Supplied through Nextcloud |

In **Copilot V4 (v4.0.13)**, API keys are stored in this device's **Obsidian Keychain**, not in the vault's plugin settings. Copying a configured vault does not copy these keys. If prompted, enter the supplied workshop key once on your computer:

1. Open **Settings → Copilot → BYOK**.
2. Edit the prepared provider, or choose **Add a provider → Add a custom provider**.
3. Enter the base URL, workshop key and model ID from the access information or choose at least one from the proposed list after checking API connection.
4. Test and save the provider. Enable the model for **Quick Chat** under **Basic → Agents → Quick Chat**, and select it as the default.

For an older meetup plugin version, follow the access instructions in the supplied package rather than upgrading during setup. The organisers must check whether its saved credentials work on a second computer.

## 4. Test with explicit note context

1. Open `01-Projects/Project-Brief.md`.
2. Open the command palette with **Ctrl+P** on Windows/Linux or **Cmd+P** on macOS.
3. Run **Open Copilot Chat Window**. In V4, this opens **Quick Chat**.
4. Select the workshop model and the **Chat** mode.
5. Use **Add context (+)** or the note picker to attach **Project-Brief**. Check the context badges before sending.
6. Ask: `What is the target audience and requested output language in the attached brief? Quote the wording that supports your answer.`

Expected information: the audience is prospective students without an AI background, and the requested output is German. Check the quoted evidence in the note yourself.

The core exercises use **explicit note context**. Copilot V4's free Chat mode does not automatically search the whole vault. No embedding model, semantic-search service, paid Copilot plan or external agent runtime is needed for these exercises. Reattach the relevant notes for each new request; in V4 attachments apply to the next message.

## 5. Return to the same workspace

Next time, open Obsidian and choose the same vault. Your edited Markdown notes and vault settings remain in that folder. Save reviewed AI output as notes using copy/paste, or the chat's note-saving options. Do not extract a fresh workshop vault over your working copy.

**Be aware that the API-Key for `llm.scads.ai` will expire after the workshop. You'd need to reconfigure the llm-endpoint (base_url) as well as the API-Key. Check possible providers in the workshops "Preparations-Page"** 

(optional-agent-chat-for-wiki-maintenance)=
## Optional: Agent Chat for wiki maintenance

The main exercises need only Quick Chat. For the optional agentic wiki task,
Copilot V4 on desktop also needs an installed Agent Chat backend:

1. Open **Settings → Copilot → Basic → Agents → opencode → Configure**.
2. If it is not already prepared, choose **Managed by Copilot → Download & install**.
3. Select the workshop model in **Basic → Agents → opencode**. Copilot can
   pass supported BYOK provider settings to this backend. Confirm that the
   workshop model appears and sends a successful request; availability in
   Quick Chat alone does not guarantee that it is routable in Agent Chat.
4. Run **Open Copilot Agent Chat Window**, select the installed backend if
   prompted, and open a chat for this vault.
5. Ask it to read the vault-root `AGENTS.md` and `05-Wiki/AGENTS.md` before
   working on the wiki. You can check the instructions by opening these notes yourself.

If the backend or model is unavailable, use the manual Quick Chat path in
[the wiki exercise](obsidian-workshop.md). These instruction files guide the
agent; they do not enforce file permissions or replace your source checks.

The packaged vault also contains **Workshop-Guide.md**, a copy of the exercises
adapted for reading inside Obsidian. Open it from **00-Start**.

## Troubleshooting and checklist

| Check / problem | What to do |
| --- | --- |
| `00-Start` is missing | Extract the archive and open the folder that actually contains the notes. |
| Copilot command is missing | Enable Copilot under Community plugins. |
| Model asks for a key | Enter the workshop key from Nextcloud; V4 keys are device-specific. |
| Provider test works but chat fails | Check the selected model and the [ScaDS.AI status page](https://llm.scads.ai/status/). In V4, try the custom provider's **Enable CORS** setting if suggested by the error. |
| Answer ignores the wording table | Attach the table explicitly and check the context badges before sending. |
| Interface differs from the instructions | Check the plugin version supplied with the workshop vault. |

You are ready when the vault opens, Copilot returns an answer using the attached brief, and an edited note is still present after reopening Obsidian. Continue with [the Obsidian workshop](obsidian-workshop.md).

## References

- [Obsidian vaults](https://help.obsidian.md/manage-vaults)
- [Copilot Quick Chat](https://www.obsidiancopilot.com/docs/chat-interface)
- [Copilot providers and device-specific key storage](https://www.obsidiancopilot.com/docs/llm-providers)
- [Adding note context](https://www.obsidiancopilot.com/docs/context-and-mentions)
