# Notes for notebook developers

It is maintained using [Jupyter lab](https://jupyterlab.readthedocs.io/en/stable/) and build using [Jupyter book](https://jupyterbook.org/intro.html).

To edit this book, install dependencies like this:

```
git clone https://github.com/scads/embo-repro-bia-2025
cd embo-repro-bia-2025

pip install -r requirements.txt
pip install jupyterlab jupyter-book jupyterlab-spellchecker

jupyter lab
```

To build the book, you can run this from the same folder (tested on MacOS only):
```
chmod u+x ./build.sh
./build.sh
```

To clear the build, e.g. before committing using git, run this:
```
chmod u+x ./clean.sh
./clean.sh
```
