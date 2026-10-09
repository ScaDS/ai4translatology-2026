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
`ai4translatology-obsidian-vault`. Keep the included `.obsidian` and all other folders- these include the prepared setting. Follow any
first-start prompts and enable the supplied community plugins when asked. The procedure should be as follows:

1. **Trust the vault:**

   ![](images/obsidian_vault_approve.png)

2. **Configure Opencode (LLM/Agent-Harness)**

   ![](images/obsidian_configure_opencode.png)

3. **Download & Install Opencode**

   ![](images/obsidian_download_install.png)

4. **Configure the Copilot Plugin**

   - Click the Setting-Icon (down left)
   - Choose Copilot in the right menu
   - Click `BYOK` in the Copilot Settings
   - For `llm_scads` click the setting icon (three points)

   ![](images/obsidian_configure_copilot.png)

5. **Configure llm_scads**

   - Enter provided workshop API-Key (see Nextcloud!)
   - Click `Test`
   - Now there should be written `verified` and the available models should be listed down below (keep the model selection)
   - Click `Save`

   ![](images/obsidian_tud-ai.png)

6. **Restart Obsidian!**


## 4. Test the chat

Open e.g. `Workshop-Guide.md`. Select the respective LLM in the copilot on the right (should be e.g. `llm_scads/Qwen/Qwen3.8-27B`).

   ![](images/obsidian_set_chat.png)

Attach **Project-Brief** or the whole **01-Projects** Folder using **`@`** or **Add context (+)**. 

   ![](images/obsidian_general_chat.png)

Check its context badge, and send:

```text
What is the target audience and requested output language in the attached brief?
```

*Expected*: prospective students without an AI background; German.
Continue with **Workshop-Guide** in the vault or [the workshop page](obsidian-workshop.md).
Next time, simply reopen the same vault.

*Uses [Obsidian](https://obsidian.md/) and [Copilot for Obsidian](https://www.obsidiancopilot.com/docs)
by Logan Yang.*

**Hint** 

For using the materials after the workshop when the workshop API-Key has expired you could e.g. think of using [Jan.ai](httpos://jan.ai) or any other local llm engine.
You can connect obsidian and the copilot to *Jan.ai*s Local API Server, see the offical docs [here](https://www.jan.ai/docs/desktop/api-server) and follow the instructions. In obsidian you'd need to go to settings and add a `byok` provider for copilot. In copilot `byok` setting click `+ Add a Provider`, then click `+ Add a custom Provider`. Just add the `base_url` from the *Jan.ai* settings, entry the respective *Jan.ai* local model you have and this should be it. In a local setup you shouldn't need an API-Key. Our vault settings should come with this already prepared but possibly with the **wrong Modelname**- so check the settings.