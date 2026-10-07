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
in the terminal).

Download `langflow-workshop.json` from [Nextcloud](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH).
The password is in the preparation email; the link is valid until **31.12.2026**.
The included API keys expire after the workshop.

In Langflow: **Projects → Upload a flow → select the JSON → open
AI4Translatology — Translation team → Playground**. Test with:

```text
Translate into German: This workshop explores AI-assisted translation.
```

For later sessions, run only the start command. Continue with
[the workshop](langflow-workshop.md).
