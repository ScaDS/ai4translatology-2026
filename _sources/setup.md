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


