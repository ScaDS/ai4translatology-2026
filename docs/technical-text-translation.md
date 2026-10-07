# Translating technical texts

When translating technical texts containing domain specific terms, LLMs often fail to translate terms accurately or create new words in the target language. 
For such scenarios it may make sense to create translation tables. LLMs can be used to [distill](https://en.wikipedia.org/wiki/Knowledge_distillation) such tables from existing texts.

## Exericse

Copy & paste a technical text ([example](bioimageanalysis_en.txt)) into a Chat-AI system of your choice. Consider working in a group and comparing different Chat-AI systems.

First, prompt it to translate the text and see if it has issues translating technical terms.

```
Translate the following text to German:

<text>
```

Then, distill a translation table.

```
Extract technical terms from the following text and note German translations.

<text>
```

Store the result in a .txt file or in a .csv file ([example](bia_translations.csv)). Curate this file manually: correct or remove wrong tranlations, add additional words ([example](bia_translations_curated.csv)).

Prompt the system again to translate the original text, but this time, provide the translation table as well:

```
Translate this text to German. For technical terms you must use the given translation table.

<text>

Translation table 

<table>
```

## Discussion points

* Is the second translation better than the first?
* Does this work with all tested AI-systems?
* Does your domain community already have such a translation table?
