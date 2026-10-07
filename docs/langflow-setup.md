# Preparing Langflow

We will use **Langflow** to build translation workflows and teams of specialised AI agents in a visual editor. The editor runs on your computer and opens in your browser; the language model runs on the ScaDS.AI service.

Please complete the installation before the workshop. You need an internet connection, a browser, and permission to install software on Windows, macOS or Linux. No programming experience, Git, Conda, Jupyter or local language model installation is required for this part.

The workshop setup uses **Python 3.12 and Langflow 1.12.0**, in a separate environment. Please use this version so that the interface matches the workshop materials. The scripts also pin `langflow-base`, which supplies the application itself. Other dependencies are resolved by `uv` during installation.

## 1. Install uv

[uv](https://docs.astral.sh/uv/getting-started/installation/) installs Python and Langflow for you.

### Windows

Open **PowerShell** from the Start menu and run:

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

### macOS / Linux

Open **Terminal** and run:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

On all platforms, close and reopen your terminal afterwards, then check:

```text
uv --version
```

You should see a version number. If the command is not found, follow the PATH instructions displayed by the installer.

## 2. Download the setup scripts

Create a folder named `ai4translatology-langflow`, for example in your home folder. Download **both scripts for your operating system** into that folder:

| Operating system | Installation (once) | Start (every session) |
| --- | --- | --- |
| Windows | [setup.ps1](assets/langflow/setup.ps1) | [start.ps1](assets/langflow/start.ps1) |
| macOS / Linux | [setup.sh](assets/langflow/setup.sh) | [start.sh](assets/langflow/start.sh) |

Keep the filenames as shown, without an extra `.txt` extension. Open a terminal in this folder. On Windows, open the folder in File Explorer, type `powershell` into the address bar and press Enter. On macOS/Linux, open Terminal, type `cd `, drag the folder into the terminal, and press Enter.

## 3. Install Langflow (once)

In the workshop folder use the following commands:

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File .\setup.ps1
```

### macOS / Linux

```bash
bash setup.sh
```

The script installs Python 3.12 through `uv` and installs Langflow in a separate environment:

- **Windows:** `%LOCALAPPDATA%\ai4t\lf-1.12`. This short path avoids Windows path-length errors caused by long dependency filenames, even if your workshop folder is deep inside another directory.
- **macOS / Linux:** `.venv` inside the workshop folder.

You do not need to activate that environment yourself. Installation can take several minutes and downloads many dependencies. The setup checks that Langflow's imports work before displaying **Setup complete**.

## 4. First start and workshop import

Start Langflow from the same folder:

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File .\start.ps1
```

### macOS / Linux

```bash
bash start.sh
```

Keep the terminal open. Startup can take a few minutes. Your browser should open automatically; otherwise open <http://127.0.0.1:7860>. If port 7860 is occupied, use the address printed in the terminal.

### Download and import the workshop flows

Get the prepared flows from the [ScaDS.AI Nextcloud workshop download](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH).
**Attention:** the Nextcloud password is shared via the e-mail regarding workshop preparations.

**This download link is valid until 31.12.2026.** API-Key(s) expire instantly after the workshop.

Download the workshop JSON file(s), for example `langflow-workshop.json`. 

1. Open Langflow's **Projects** page.
2. Click **Upload a flow**, and select a downloaded JSON file. Alternatively, drag the JSON file into the Langflow window.
3. Repeat for any additional flow files. The exercise instructions will identify the flows to use.
4. Open **AI4Translatology — Translation team** and inspect the canvas. Prepared model components include the workshop endpoint, model name and API key; you do not need to obtain your own API key.
5. Open **Playground** and send a short test request, such as: `Translate into German: This workshop explores AI-assisted translation.`

The model connection uses:

| Setting | Workshop value |
| --- | --- |
| OpenAI-compatible base URL | `https://llm.scads.ai/v1` |
| Example model ID | `Qwen/Qwen3.8-27B` |
| API key | Included in the prepared workshop flow |

Use the model configured in the downloaded flow. Current availability and tool support can be checked on the [ScaDS.AI model status page](https://llm.scads.ai/status/) in a browser with JavaScript enabled. For multi-agent exercises, the selected model must support **tool calling**. No worries- we'll explain that during the workshop. Feel free to prepare your questions.

## 5. Starting again on another day

Open a terminal in your `ai4translatology-langflow` folder and run **only the start command** from step 4. Do not reinstall Langflow or reimport the workshop files each time.

The start script always uses this folder's `.langflow-data` directory. Your local Langflow database is the working copy: imported flows, saved UI edits and chat history persist there between sessions. The start script does not automatically reload flow JSON files or overwrite your work.

To stop Langflow, press **Ctrl+C** in its terminal. Closing the browser tab alone does not stop the server.

Keep the workshop folder in the same location. The Python environment is an installation, not a portable environment. On Windows it is stored separately under `%LOCALAPPDATA%`; on macOS/Linux it is the workshop folder's `.venv`. To transfer your work to another computer, export your flows from Langflow, install Langflow there using these instructions, and import the exported flows.

## Troubleshooting

| Problem | What to do |
| --- | --- |
| `uv` is not found | Reopen the terminal and check the installer's PATH instructions. |
| Setup or start script is not found | Check that the terminal is in the workshop folder and that the downloaded filename has no added `.txt` extension. |
| Installation fails | Keep the error message and contact the workshop organisers with your operating system and the failed command. |
| Windows reports a missing ElevenLabs module | Use the updated setup/start scripts and rerun setup. The old deeply nested `.venv` can exceed Windows' path-length limit even when the module file exists. |
| Browser does not open | Leave the terminal running and open the address printed there. |
| Flow asks for a key or a missing global variable | Check that you imported the prepared Nextcloud flow. Let the organisers know which component is requesting configuration. |
| Model request fails | Check your internet connection, the model status page, and the error shown in Playground. The workshop credentials may also have expired. |
| Changes seem to be missing | Use the original workshop folder and its start script; another installation may use a different database. |

## Preparation checklist

- `uv --version` shows a version number.
- The setup script finishes successfully.
- The start script opens the Langflow editor.
- Once the workshop flows are available: an imported flow returns a model response.
- After stopping and restarting Langflow: the imported flow is still present.

## References

- [Langflow installation](https://docs.langflow.org/get-started-installation)
- [Import and export flows](https://docs.langflow.org/concepts-flows-import)
- [Langflow configuration and storage settings](https://docs.langflow.org/environment-variables)
- [Building multi-agent flows with agents as tools](https://docs.langflow.org/agents-tools#use-an-agent-as-a-tool)
