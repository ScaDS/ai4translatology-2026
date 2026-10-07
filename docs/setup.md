# Preparing the session

To prepare this training optimally, login to at least two of these platform to make sure you have access during the training:

* [Blablador](https://blablador.fz-juelich.de/) (Helmholtz, free for members of German Academic institutions)
* [ChatAI der Academic Cloud](https://chat-ai.academiccloud.de/) (KISSKI/GWDG Göttingen, free for members of German Academic institutions)
* [Julius.AI](https://julius.ai/chat) Commercial service provider in the USA)
* [Scite.AI](https://scite.ai/) (Commercial service provider in the USA)
* [Mistral](https://chat.mistral.ai/chat) (Commercial service provider in France)
* [Lumo](https://lumo.proton.me/) (Commercial service provider in Switzerland)
* [Claude](https://claude.ai/) (Commercial service provider in the USA)
* [Gemini](https://gemini.google.com/) (Commercial service provider in the USA)
* [ChatGPT](https://chatgpt.com/) (Commercial service provider in the USA)
* [You.com](https://you.com/ari) (Commercial service provider in the USA)
* [Perplexity](https://www.perplexity.ai/) (Commercial service provider in the USA)

## Setting up your computer

### Choose your low-code track

Choose one track to work on during the session:

| Track | What you will explore | Preparation |
| --- | --- | --- |
| **Langflow: agent-builder UI** | Build and inspect translation workflows and collaborating agents on a visual canvas. | [Preparing Langflow](langflow-setup.md) |
| **Obsidian + Copilot (optional)** | Organise everyday work, build a source-based LLM wiki, and translate with a wording table and a small corpus. | [Preparing Obsidian](obsidian-setup.md) |

The tasks start small, but both tools can support much larger projects. You may prepare **both** tools, choose one during the session, and take the other track home. You do not need to complete both tracks during the workshop.

### Langflow: visual translation workflows and multi-agent systems

For the Langflow workshop, please follow [Preparing Langflow](langflow-setup.md) before the session. This provides setup and start scripts for **Windows, macOS and Linux**, using `uv`, Python 3.12 and Langflow 1.12.0. No separate Jupyter or local language model installation is needed for this part.

The prepared flows include the workshop model access and will be supplied through the [ScaDS.AI Nextcloud download](https://cloud.scadsai.uni-leipzig.de/index.php/s/Egy8BGX4wAX4dXH), **valid until 31.12.2026**. Import them once; subsequent starts use your local Langflow database and preserve your saved edits.

### Obsidian + Copilot: a translator's knowledge workspace (optional)

Follow [Preparing Obsidian](obsidian-setup.md) to install Obsidian and open the workshop vault. The prepared vault and model-access information will be distributed through the same **Nextcloud link, valid until 31.12.2026**. Then follow [the optional Obsidian exercises](obsidian-workshop.md), during the session or at home.

### Local language models

If you prefer using large language models on your laptop, please download and install one of these:
* [Jan.AI](https://www.jan.ai/) (open source, partially maintained by Menlo AI, commercial service provider in the USA)
* [Ollama](https://ollama.com/) (open source, partially maintained by Meta, commercial service provider in the USA)

## Basic setup for attendees interested in AI-assisted code generation for text analysis **(optional)**

Login to [Google Colab](https://colab.research.google.com/).

## Advanced setup for attendees interested in AI-assisted code generation for text analysis **(optional)**

If you want to use AI-assistance in [Jupyter Lab](https://jupyter.org/) on your own computer, make sure you have it installed together with Python and some libraries. 

One way of doing this, is by managing *Conda* environments ([read more](https://focalplane.biologists.com/2022/12/08/managing-scientific-python-environments-using-conda-mamba-and-friends/)

### Step 1: Install Mini-forge
Download and install Conda. We recommend the Conda distribution [mini-forge](https://conda-forge.org/download/).

For ease-of-use, it is recommended to install it for your use only and to add Conda to the PATH variable during installation.

![img.png](images/miniforge1.png)

![img.png](images/miniforge2.png)

### Step 2: Install Python and libraries

After Conda installation finished, use this command from the terminal:

```
conda create --name llm-da python=3.11 -c conda-forge
```

Afterwards, activate the environment:

```
conda activate llm-da
```

Install the libraries we plan to use during the training:
```
pip install bia-bob python-dotenv numpy scipy pandas scikit-learn scikit-image jupyterlab wordcloud
```

### Step 3: Testing the installation

Whenever you want to work on the same project, you should start a command line and enter this:

```
conda activate llm-da
```

Start [Jupyter lab](https://jupyter.org/) from the terminal like this

```
jupyter lab
```

A browser will open and show you the following web page. In the section `Notebook` click on "Python 3 (ipykernel)" to create a new notebook:

![img.png](images/start_jupyter_lab.png)

In the new notebook, click in the first code cell, enter `print("Hello world")` and hit SHIFT+ENTER on your keyboard. 
If everything is installed properly, it should look like this:

![img.png](images/hello_world.png)


