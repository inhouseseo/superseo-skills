# News Explainer

## What It Is
"What is X" adapted for news context — a piece that explains a concept, term, technology, or policy that's suddenly in the news, aimed at readers who keep seeing it in headlines but don't know what it means. Bridges the gap between evergreen `definition.md` and time-sensitive `news-article.md`.

Credit: news content-type taxonomy contributed by [Shin Kitagawa](https://github.com/kitasinkita).

## When to Use
- A term or concept is suddenly trending in news coverage
- Your audience needs the background to make sense of ongoing stories
- The topic is complex enough that a glossary entry isn't sufficient
- You want to capture "what is [X]" search spikes during the news cycle

Informational intent, medium-length, publish 24-48 hours after the term starts trending. Explainers have a longer useful life than breaking news — they continue to earn traffic every time the topic re-enters the news cycle.

## Structure Template

```
H1: "What is [term]? [One-line framing]"
    (e.g., "What is vibe coding? The AI-assisted dev practice behind the layoffs debate")

Lead (40-60 words):
    Define the term in plain language. Then state why it's trending right now.
    This is your featured snippet target.

H2: Why you're hearing about it now
    The news context. What happened that put this in front of the reader.
    Link to the original news story. 1-2 paragraphs max.

H2: What [term] actually means
    The core explanation. Start with the 40-60 word definition from the lead
    and expand with examples, analogies, and counter-examples.

H2: How it works (briefly)
    Enough mechanism to feel substantive without becoming a deep technical guide.
    Link out to a technical deep-dive if one exists.

H2: Why it matters
    Impact framing. Who benefits, who's affected, what changes.

H2: What you might be missing
    Common misconceptions about the term. The news often oversimplifies —
    this section corrects that for the informed reader.

H2: What to watch next
    Signals that the story is developing. Gives the reader a reason to come back.

(Optional) H2: FAQ
    2-3 questions with FAQPage schema. Use the actual People Also Ask queries
    from the SERP.
```

## Word Count
1,200-2,500 words (enough depth to feel substantive, short enough to skim)

## Schema Markup
- **Primary:** Article (or NewsArticle if attached to an ongoing news story)
- **Secondary:** DefinedTerm for the central term
- **Secondary:** FAQPage if FAQ section is present

## Featured Snippet Strategy
- **Format:** Paragraph snippet for "what is [term]" queries
- **Target:** The lead — your 40-60 word definition. This is the whole point of the article existing as an explainer format.
- **Tip:** Write the definition so it makes sense standalone. Claude or a news reader should be able to extract the first paragraph and have a working understanding.

## CTA / Engagement Placement
- Newsletter signup framed as "we explain the news as it breaks"
- Inline: links to breaking-news coverage, analysis, and deep-dives on the same topic
- End of article: related explainers on adjacent concepts

## Internal Linking Strategy
- Link to the news-article that triggered the explainer's relevance
- Link to any news-analysis pieces that go deeper
- Link to evergreen definition content if you already have it
- Link from future news coverage back to this explainer as background context
- Explainers are high-value internal-linking hubs — they get linked to repeatedly as the story develops

## E-E-A-T Signals
- **Experience**: if you've covered this topic before, reference your prior coverage — gives the reader confidence the explainer is informed
- **Expertise**: explain the concept at two levels (what a layperson needs, then what a more technical reader might want). Shows range.
- **Authoritativeness**: cite primary sources (the research paper that introduced the concept, the company that shipped the first product, the regulator who named the policy)
- **Trustworthiness**: acknowledge what the explainer doesn't cover and link out to specialists

## Notes on Anti-AI
Explainers are where LLMs produce the most generic content, so defenses matter more than usual:

- **Lead with the news context, not the history of the term**. "This is trending because [specific event]" is something an LLM pulling from Wikipedia doesn't do
- **Use one concrete, recent example in the lead**. Named company, named person, named dollar amount, named date
- **Include the "what you might be missing" section** — correcting misconceptions requires actual domain knowledge
- **Skip the "the future of X" closer**. It's the most AI-slop section in any explainer and it adds nothing

## Common Mistakes
- Writing the explainer as if the reader has never heard of the topic when actually they've seen it in 10 headlines already
- Covering "the history of X" instead of "what X means right now"
- No news hook — if it's not tied to why the term is trending, it's a glossary entry, not an explainer
- Generic examples that could apply to any term
- Closing with "the future of X is uncertain" or similar AI-tell filler

## Example Topics
- "What is vibe coding? The AI-assisted dev practice behind the layoffs debate"
- "What is an AI agent? And why every SaaS pitch deck now has one"
- "What is the EU AI Act? The rules that just changed everyone's compliance roadmap"
- "What is retrieval-augmented generation? The technique every LLM startup is now claiming"
