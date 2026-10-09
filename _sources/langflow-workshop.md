# Delegate translation tasks to a team of AI helpers 

**Low-code track · approximately 45–60 minutes · no programming required**

## Preparation

Complete [Preparing Langflow](langflow-setup.md) before starting. Open the
prepared **AI4Translatology — Translation team** flow. The workshop starts
with a working example; you will explore it, change it and add your own helper.

**Goal:** Discover how you can delegate a small part of your work to an AI
helper, give it a clear role, and decide which tools and other helpers it can use.

By the end, you should be able to explain how the prepared team works, attach
a web-search tool, and define a helper for a task from your own study or work.

## What are you looking at?

The canvas is a visual description of who does what. A **node** is a component;
a connecting line passes information or makes a tool available. You change
instructions and connect components through the interface, without writing code.

Find these components in the prepared flow:

| Component | Its job | What to inspect |
| --- | --- | --- |
| **Source and translation brief** | Receives your text and task. | The sample request in its text field. |
| **Translation coordinator** | Decides which specialist to ask and brings their results together. | **Agent Instructions** and the **Tools** connections. |
| **Terminology specialist** | Checks preferred wordings and contextual examples. | Its instructions, including the small wording table and teaching corpus. |
| **Translator** | Produces a draft for the requested audience. | Its translation instructions. |
| **Translation reviewer** | Checks the draft against the source and brief. | Its review criteria. |
| **Shared ScaDS model** | Supplies the language model used by all four roles. | Its connections to the agents' **Language Model** inputs. |
| **Reviewed translation** | Displays the result in the chat. | The connection from the coordinator. |

The specialists' **Toolset** outputs connect to the coordinator's **Tools**
input. This lets the coordinator *call* a specialist with a task and receive a
result. The specialists are not simply three boxes that always run in order.
The coordinator's instructions guide delegation; the actual calls show what happened.

All four roles use the same underlying model. Their different instructions
make them different helpers, not independent experts or differently trained models.

## Task 1 — Watch the team work (10 minutes)

Open **Playground** and send this request (the request has already been placed by the template prompt in the `Chat-Input-Node`):

```text
Translate into German for prospective students without an AI background.
Call the terminology specialist, translator and reviewer. Follow the project
wording rules, then return the translation and terminology decisions.

Source: Participants use machine translation and a translation memory.
Chat memory contains earlier messages. A human checks the draft before release.
```

Read the final answer, then expand the tool calls / agent steps in Playground.
Look for `terminology_lookup`, `translate_text` and `review_translation`.

Work through these questions with a partner:

1. Which specialist was called first, and what information did it receive?
2. Did the translator receive the terminology decisions?
3. Did the reviewer receive both the original source and the draft?
4. Which decisions did the coordinator make after receiving the results?
5. Can you find **Translation Memory**, **Chatverlauf** and **Veröffentlichung**
   in the output, and trace their choice to an instruction or example?

The supplied wording table and corpus examples are fictional teaching material.
One older corpus example conflicts with the current wording rules. Check how
the team handles that conflict instead of assuming that a fluent result is correct.

**Checkpoint:** Explain the difference between a specialist's instructions
and the connection that makes that specialist available to the coordinator.

## Task 2 — Make a helper work the way you want (10 minutes)

Select **Translation reviewer** on the canvas and open **Agent Instructions**.

![](images/langflow_instruct_agent.png)

Read its existing role, then append:

```text
For this task, prioritise accessibility for readers without an AI background.
Identify up to three expressions that may need an explanation. Quote each
expression and suggest a short explanation separately from the translation.
Do not insert new factual explanations into the translated text itself.
```

Start a new Playground conversation and send the same request from Task 1.
Compare the review tool's result with your earlier run:

- Did the reviewer do the additional job?
- Did the coordinator include useful suggestions in its final answer?
- Did any other role start doing something you had not requested?

Then change the audience in your request to **professional translators** and
repeat in a new conversation. Decide whether the review instructions still fit.

**Checkpoint:** You have adapted a helper by changing its brief, without
changing the software. Write down one review task you could delegate in your own work.

## Task 3 — Give the terminology specialist a web-search tool (15 minutes)

The prepared team can work with the examples in its instructions. Next, give
one specialist a way to find external information about a real corpus resource.

### Connect the tool

1. Return to the canvas. And look for `Other Tools` and the `Websearch-Tool`.
2. Drag its **Toolset** output to the **Tools** input of **Terminology specialist**.
   Keep the specialist's existing connection to the coordinator.
5. Open **Agent Instructions** of the `Terminology Agent`. Add the following to the instructions:

   ```text
   You are equipped with a websearch tool. Whenever asked, search the internet 
   e.g. for official corpus documentation and public usage guidance.
   Use this to find sources and access information, not to invent corpus counts.
   ```

![](images/langflow_websearch.png)

Feel free to test connecting this tool to the `main agent` too. What happens then- any differences?

The built-in Web Search component uses DuckDuckGo in Web mode and does not
need a separate search-service account for this exercise.

### Tell the specialist when to use it

Append to **Terminology specialist → Agent Instructions**:

```text
When asked to research a real corpus resource, use search_corpus_documentation.
Prefer official documentation. Return the page title, URL and a short supporting
quote. Distinguish search snippets from page content you actually received.
Do not claim that a documentation search is a corpus query or frequency count.
If the search returns no usable evidence, report that clearly.
```

Now ask the team in a new Playground conversation:

```text
Before translating, ask the terminology specialist to use web search to find
official DWDS documentation about its corpora and search facilities. Suggest
one way a translator could use the resource to check a German wording.
Give the source URL and a supporting quote. Do not invent a corpus query,
frequency count or concordance result.

Then translate for prospective students:
Participants use a corpus to check wording in context.
```

Inspect the nested calls: the **coordinator calls the terminology specialist**,
and the **terminology specialist calls Web Search**. Open a returned URL and
check whether the quote and recommendation are supported. The official
[DWDS portal](https://www.dwds.de/) is a starting point for your manual check.

If search is rate-limited or returns nothing, inspect that result with the
group: did the helper admit the gap? Retry with a narrow query such as
`site:dwds.de Korpora Suche`. A manually visited page can support your discussion,
but is not evidence that the agent successfully searched.

**Checkpoint:** Adding a tool gives a helper a new capability. Its description
and the agent's instructions influence when and how that capability is used.

## Task 4 — Add a helper of your own (15 minutes)

Choose a small task with an output you can check. For example:

- turn a translation brief into a preparation checklist;
- collect terms and open questions before an interpreting assignment;
- check whether a translation fits a specified audience;
- turn meeting notes into actions, without inventing owners or deadlines.

For a guided example, build an **Interpreting preparation helper**:

1. Drag a new **Agent** onto the canvas and give it a recognisable display name.
2. Connect the prepared shared model's **Language Model** output to the new
   agent's **Language Model** input. Use the existing model connection pattern.
3. Enter these **Agent Instructions**:

   ```text
   Help a human interpreter prepare from the event brief supplied in the task.
   Return: topic summary, bilingual English–German candidate glossary,
   names and abbreviations, and questions needing clarification.
   Label translations as candidates unless the brief confirms them.
   Do not invent speakers, facts, pronunciations or event details.
   ```

![](images/langflow_new_agent.png)

4. Enable **Tool Mode**. In **Edit Tool Actions**, enable the normal-response
   action (here seen as "MY_NEW_AGENT"), change it via the `settings icon` give it the *slug* `prepare_interpreting`, and describe it as
   `Prepare an interpreting checklist and candidate glossary from an event brief`.
5. Connect its **Toolset** output to the coordinator's **Tools** input.
6. Append to the coordinator's instructions:

   ```text
   For interpreting-preparation requests, call prepare_interpreting with the
   complete event brief and return its checklist and open questions.
   Do not run the translation-and-review workflow unless translation is requested.
   ```

![](images/langflow_agent_settings.png)

Test in a new Playground conversation:

```text
Use the interpreting preparation helper for this fictional event brief:
A university panel discusses machine translation, translation memories and
terminology management. The audience consists of first-year students.
The working languages are English and German. Speaker names are not yet known.
```

Check that your helper was actually called, that the glossary is useful, and
that unknown speaker names remain unknown. Then try a less complete brief and
see whether it asks the right questions.

**Checkpoint:** Describe your helper in one sentence: “When I need ___, it
uses ___ and returns ___; I check ___ before using the result.”

## Take it home

You do not need to build a large autonomous system to get useful help. Start
with one repeated task, a clear role, the necessary context and an output you
can inspect. Add a tool or another specialist when it serves that task.

Before leaving, note:

- **My task:** What could I delegate next week?
- **My helper's brief:** What must it know and what should it return?
- **Its tools:** What does it need beyond a language model?
- **My check:** How will I tell whether it really helped?

Your saved changes remain in your local Langflow workspace. Revisit them later
or try the [optional Obsidian track](obsidian-workshop.md) at home.

*Built with [Langflow](https://www.langflow.org/). The prepared flow contains
Langflow/LFX components under the MIT license, with notices in their code fields.*
