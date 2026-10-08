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
in the terminal). When asked on the startpage click `Create First Flow` and afterwards close this empty flow as you click on `Starter Project` (on top of the page in the middle). You should be in project view now. In general you dan also click the icon on the top left corner (Langflow Logo) to go back to project or startpage view.

Download `langflow-workshop.json` from [Nextcloud](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH).
The password is in the preparation email; the link is valid until **31.12.2026**.
The workshop API key expires after the workshop. For using it with your local setup see the **Hint** down below at the end of this page.

Next is settings: From the startpage/project view in Langflow go to: **Settings (icon in the top right corner) → choose Model Providers → check for vLLM (maybe enable first) → check `base_url` (if empty set `https://llm.scads.ai/v1`) → input the provided API-Key for the workshop (see Nextcloud) → in `Language Models` enable Qwen3.8, Gemma4 and in `Embedding Models` enable Qwen3-Embedding → now you should be ready to go!**

![](images/langflow_setting_modelprovider.png)

Let's import the prepared setup (`langflow-workshop.json`) and test it, so go back to the startpage of Langflow and: **in Projects → click Upload a flow → select the JSON (`langflow-workshop.json`, the one from Nextcloud)**

![](images/langflow_upload_json.png)

Then: **open "AI4Translatology — Translation team" flow → Check that every `Agent-Node` has Qwen3.8 or Gemma4 set as `Language Model` → open Playground (top right of the flow view)**.  Test with:

```text
Translate into German: This workshop explores AI-assisted translation.
```

Be aware that there should be a prefilled prompt (you can set this in the `Chat-Input-Node`).

![](images/langflow_flow.png)

### If you've made it this far: Congratulations— you're all set for the workshop!

For later sessions, run only the start command. Continue with
[the workshop](langflow-workshop.md).

**Hint** 

For using the materials after the workshop when the workshop API-Key has expired you could e.g. think of using [Jan.ai](httpos://jan.ai) or any other local llm engine.
You can connect Langflow to *Jan.ai*s Local API Server, see the offical docs [here](https://www.jan.ai/docs/desktop/api-server) and follow the instructions. In langflow you'd need to go to settings again and add an `OpenAI Compatible` provider in the Model Provider section. Just add the `base_url` from the *Jan.ai* settings to Langflow and this should be it. In a local setup you shouldn't need an API-Key.