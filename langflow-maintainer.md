# Maintaining the Langflow workshop setup

Participant instructions are in `docs/langflow-setup.md`, linked from `docs/setup.md`. Setup and start scripts are in `docs/assets/langflow/`; Jupyter Book copies them into the built site's download directory through the page's download links.

## Version and runtime

- Python: 3.12, provisioned by `uv`.
- Application: `langflow==1.12.0` and `langflow-base==1.12.0`, pinned in both setup scripts. Transitive dependencies are not locked.
- Each participant downloads the two scripts for their platform into a standalone workshop folder. No repository clone is needed.
- Windows installs into `%LOCALAPPDATA%\ai4t\lf-1.12`, not alongside the scripts. ElevenLabs 1.58.1 has long module filenames: the former environment inside `docs/assets/langflow/.venv` produced a 262-character module path and failed at import on Windows. The short runtime path avoids that problem without requiring system-wide long-path configuration. macOS/Linux keep `.venv` alongside the scripts.
- Both setup scripts check `elevenlabs` and `langflow.__main__` imports before reporting success. Rerunning the updated Windows setup installs the short-path environment; it does not delete the old environment or change workshop data.
- Start scripts set an absolute `LANGFLOW_CONFIG_DIR` pointing at `.langflow-data` alongside the scripts and set `LANGFLOW_SAVE_DB_IN_CONFIG_DIR=True`.
- Flows are imported once through the UI. Subsequent starts use the database. The scripts clear inherited `LANGFLOW_LOAD_FLOWS_PATH` and `LANGFLOW_DATABASE_URL` settings rather than enabling a startup import or using another database.

## Distributing prepared flows

A credential-free starter is now available at
`docs/assets/langflow/langflow-workshop.json`. It contains a shared explicit
OpenAI-compatible model component and four agents (coordinator, terminology,
translator, reviewer). Add the key once to the model node, test, then export
with **Save with my API keys** for the Nextcloud release. The participant
workshop assumes this configuration and import are already complete; it
contains only the learning tasks, not another setup/export route.

The flow was generated from installed component schemas using
`scripts/create_langflow_examples.py`, run with the workshop environment's
Python. Embedded upstream component code includes its MIT license notice.
Regenerating resets the key to empty. Its import and full three-tool execution
have been checked against a local deterministic model endpoint, not the live
ScaDS.AI model.

Publish credential-bearing flow files on the supplied Nextcloud share:

https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH

The share is valid until **31.12.2026**. This is the download link's expiry, not necessarily the API key's expiry. Update both preparation pages when changing the link or validity date.

Use `langflow-workshop.json` for a single flow, which can contain several agents. For several independent exercises, provide a ZIP containing individual Langflow JSON exports. Participants extract it and import each JSON through the UI.

Configure the prepared flows with:

- Base URL: `https://llm.scads.ai/v1`
- Example model ID: `Qwen/Qwen3.8-27B`; confirm the exact ID and tool support against https://llm.scads.ai/status/ before exporting.
- Workshop API key: a literal value in the appropriate model component, exported with **Save with my API keys** enabled.

Global-variable references export the variable name, not its value. In Langflow 1.12, the core Language Model/Agent components can also depend on instance-level model-provider settings. For a self-contained export, use a provider component that exposes the connection settings explicitly and connect its `LanguageModel` output to the agents. Verify that the exported flow needs no pre-existing global variables or provider configuration.

### Prepare the configured Nextcloud copy

1. Import the credential-free source JSON and enter the key directly in its shared model component.
2. Check the base URL/model ID and test against the workshop endpoint.
3. Export via **Share → Export**, with **Save with my API keys** enabled.
4. Save the configured JSON in `workshop/releases/` or `release/` (both ignored by Git), not over the source JSON.
5. Import the export into a fresh instance, then upload it to Nextcloud.

Keep source templates and generator scripts in Git for review. Distribution of
the configured participant files is exclusively through Nextcloud.

### Teaching sequence

The workshop starts with the prepared team, then changes a role, attaches the
built-in **Web Search** component to the terminology specialist, and adds a
new interpreting-preparation agent. Web Search in Web mode uses DuckDuckGo
without another API key, but can be rate-limited. Test its availability before
the session. The web-search task concerns official DWDS documentation, not a
claim that the component queries a corpus or returns frequency counts.

## Release check for the actual flows

1. Install using the participant scripts on Windows and macOS/Linux.
2. Start with a fresh `.langflow-data` directory and no configured model providers.
3. Import the Nextcloud JSON files and run a translation test.
4. For the multi-agent flow, verify actual tool calls in Playground, not just the final response.
5. Change a prompt, ensure it is saved, stop Langflow and restart with the start script. Verify that the change persists.
6. Provide a small connection-test flow along with the exercises so preparation can be tested independently of the final teaching content.

The preparation page deliberately allows an editor-only installation check until the prepared flows are available. End-to-end model access and credential portability must be checked with the real exports before asking participants to complete that part.
