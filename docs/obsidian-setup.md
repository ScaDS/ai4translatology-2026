# Preparing Obsidian (optional)

Complete these four steps before the workshop. The prepared vault includes
Copilot and the workshop model settings.

## 1. Install Obsidian

Download [Obsidian for your operating system](https://obsidian.md/download)
and follow the installer's instructions.

## 2. Open the prepared vault

Download and extract the vault from [Nextcloud](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH).
The password is in the preparation email; the link is valid until **31.12.2026**. The workshop API-Key expires right after the workshop.
For using obsidian and the copilot with your local setup see the **Hint** down below at the end of this page.

In Obsidian, choose **Open folder as vault** and select the extracted folder
containing `00-Start.md`. Keep the included `.obsidian` folder. Follow any
first-start prompts and enable the supplied community plugins when asked.

## 3. Enter the workshop API key

1. Open **Settings → Copilot → BYOK**.
2. Edit the prepared **ScaDS.AI provider** and paste the key supplied through Nextcloud.
3. Click **Test**, then **Save**.

The key must be entered once on each computer and expires after the workshop.

## 4. Test the chat

Open `01-Projects/Project-Brief.md`. In the command palette (**Ctrl+P** on
Windows/Linux, **Cmd+P** on macOS), select **Open Copilot Chat Window**.
Use the prepared workshop model in **Chat** mode.

Attach **Project-Brief** using **`@`** or **Add context (+)**, check its context
badge, and send:

```text
What is the target audience and requested output language in the attached brief?
```

Expected: prospective students without an AI background; German.
Continue with **Workshop-Guide** in the vault or [the workshop page](obsidian-workshop.md).
Next time, simply reopen the same vault.

For the optional Agent Chat exercise, follow [Copilot's agent setup instructions](https://www.obsidiancopilot.com/docs/getting-started)
if an agent backend is not already prepared.

*Uses [Obsidian](https://obsidian.md/) and [Copilot for Obsidian](https://www.obsidiancopilot.com/docs)
by Logan Yang.*

**Hint** 

For using the materials after the workshop when the workshop API-Key has expired you could e.g. think of using [Jan.ai](httpos://jan.ai) or any other local llm engine.
You can connect obsidian and the copilot to *Jan.ai*s Local API Server, see the offical docs [here](https://www.jan.ai/docs/desktop/api-server) and follow the instructions. In obsidian you'd need to go to settings and add a `byok` provider for copilot. In copilot `byok` setting click `+ Add a Provider`, then click `+ Add a custom Provider`. Just add the `base_url` from the *Jan.ai* settings, entry the respective *Jan.ai* local model you have and this should be it. In a local setup you shouldn't need an API-Key. Our vault settings should come with this already prepared but possibly with the **wrong Modelname**- so check the settings.