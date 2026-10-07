# Preparing Langflow

Complete these four steps before the workshop.

## 1. Install uv

**Windows — PowerShell:**

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

**macOS / Linux — Terminal:**

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Close and reopen the terminal, then check:

```text
uv --version
```

## 2. Download the scripts

Save both scripts for your operating system in a folder named
`ai4translatology-langflow` and open PowerShell / Terminal in that folder.

| Operating system | Setup | Start |
| --- | --- | --- |
| Windows | [setup.ps1](assets/langflow/setup.ps1) | [start.ps1](assets/langflow/start.ps1) |
| macOS / Linux | [setup.sh](assets/langflow/setup.sh) | [start.sh](assets/langflow/start.sh) |

## 3. Install Langflow (once)

**Windows:**

```powershell
powershell -ExecutionPolicy Bypass -File .\setup.ps1
```

**macOS / Linux:**

```bash
bash setup.sh
```

Wait until **Setup complete** appears.

## 4. Start and import the prepared flow

**Windows:**

```powershell
powershell -ExecutionPolicy Bypass -File .\start.ps1
```

**macOS / Linux:**

```bash
bash start.sh
```

Keep the terminal open and open <http://127.0.0.1:7860> (or the address printed
in the terminal). When asked on the startpage click `Create First Flow` and afterwards close this empty flow. You should be in project view then. For going back to startpage or project view click the icon on the top left corner.

Download `langflow-workshop.json` from [Nextcloud](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH).
The password is in the preparation email; the link is valid until **31.12.2026**.
The workshop API key expires after the workshop. For using it with your local setup see the **Hint** down below at the end of this page.

From the startpage/project view in Langflow go to: **Settings (icon in the top right corner) → choose Model Providers → check for vLLM (maybe enable first) → check `base_url` (if empty set `https://llm.scads.ai/v1`) → input the provided API-Key for the workshop (see Nextcloud) → in `Language Models` enable Qwen3.8, Gemma4 and in `Embedding Models" enable Qwen3-Embedding → now you should be ready to go!**

Let's import the prepared setup and test it, so go back to the startpage of Langflow and: **in Projects → click Upload a flow → select the JSON (the one from Nextcloud) → open 
AI4Translatology — Translation team flow → open Playground (top right of the flow view)**. Test with:

```text
Translate into German: This workshop explores AI-assisted translation.
```

For later sessions, run only the start command. Continue with
[the workshop](langflow-workshop.md).

**Hint** 

For using the materials after the workshop when the workshop API-Key has expired you could e.g. think of using [Jan.ai](httpos://jan.ai) or any other local llm engine.
You can connect Langflow to *Jan.ai*s Local API Server, see the offical docs [here](https://www.jan.ai/docs/desktop/api-server) and follow the instructions. In langflow you'd need to go to settings again and add an `OpenAI Compatible` provider in the Model Provider section. Just add the `base_url` from the *Jan.ai* settings to Langflow and this should be it. In a local setup you shouldn't need an API-Key.