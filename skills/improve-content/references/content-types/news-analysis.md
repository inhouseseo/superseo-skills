# News Analysis

## What It Is
Deep-dive article that takes a recent news event and explains its implications, second-order effects, and what readers should do about it. The analysis sibling to the `news-article.md` template — where `news-article` is speed-first reporting, news-analysis is depth-first interpretation published 24-72 hours after the initial event.

Credit: news content-type taxonomy contributed by [Shin Kitagawa](https://github.com/kitasinkita).

## When to Use
- A significant event has already been reported (you're not breaking it, you're interpreting it)
- The audience needs to understand *what it means* rather than *what happened*
- There is enough distance from the initial event to have expert reactions, secondary sources, or data on the impact
- Your publication has the domain expertise to take an actual position, not just rehash the press release

Informational intent, slower-but-deeper than breaking news. Publish 24-72 hours after the trigger event. First-mover advantage matters less than depth — an analysis that ships a week late but adds real insight outperforms one that shipped fast with nothing new.

## Structure Template

```
H1: "[Event]: [What it actually means for X]"
    (e.g., "OpenAI's GPT-5 launch: what 10x cheaper inference means for the RAG market")

Lead (2-3 sentences):
    State the news briefly, then pivot to your thesis — the angle nobody else is covering.

H2: What actually happened
    Brief factual summary. Link out to the breaking-news coverage.
    Do not rehash — assume the reader has seen the headline.

H2: Why this is bigger than it looks
    Your core analytical insight. The contrarian read, the hidden consequence,
    the precedent this sets. This is the section that justifies the article existing.

H2: The immediate impact on [specific audience]
    Concrete, named effects on the reader's situation.
    Specific companies, specific roles, specific decisions they need to make.

H2: The second-order effects nobody's talking about
    Downstream consequences 6-12 months out. Often where the real value lives.
    Back these with precedent, analogous situations, or expert commentary.

H2: What this means you should do
    3-5 specific actions (not generic "stay informed"). Named tools, named
    decisions, named thresholds. Give the reader something to act on.

H2: What to watch next
    Signals that would confirm or invalidate the analysis. Dates, events, or
    metrics the reader can track themselves.

(Optional) H2: Background and context
    For readers unfamiliar with the broader story. Link to explainer content.
```

## Word Count
1,500-3,500 words (depth is the whole point — don't cap it short, but don't pad)

## Schema Markup
- **Primary:** NewsArticle (with `datePublished`, `dateModified`, `author`)
- **Secondary:** FAQPage (if adding a FAQ section)
- For opinion-heavy analysis, consider `Article` instead of `NewsArticle`

## Featured Snippet Strategy
- **Format:** Paragraph snippet targeting "what does [event] mean" queries
- **Target:** The opening of the "Why this is bigger than it looks" section, or the first paragraph of "The immediate impact"
- **Tip:** The snippet-worthy sentence is almost always your thesis statement — write it as a standalone claim that makes sense without the surrounding paragraph

## CTA / Engagement Placement
- Inline: link to your own prior coverage and related explainers
- After "What this means you should do": relevant tool, service, or decision framework
- End of article: newsletter signup framed around "we track this story as it develops"
- News analysis is a return-visit driver — the CTA should be a reason to come back, not a product pitch

## Internal Linking Strategy
- Link backward: to your breaking-news coverage of the trigger event
- Link backward: to any prior analysis you've done on the same topic/company/sector
- Link forward: to evergreen explainers that define terms or context
- Link across: to competing analyses you disagree with (reading them signals confidence)

## E-E-A-T Signals
- **Experience**: cite your own prior coverage and predictions — track record matters for analysis
- **Expertise**: name specific primary sources (SEC filings, patent applications, earnings calls, research papers), not just "industry sources said"
- **Authoritativeness**: analyst or beat reporter byline with a verifiable track record in this specific space
- **Trustworthiness**: explicitly flag what you got wrong in prior analyses, or what your predictions depend on being true

## Notes on Anti-AI
News analysis is where AI-generated content fails hardest because the entire value proposition is original interpretation. Defenses:

- **Lead with the thesis nobody else has**. If an LLM could have produced your thesis from the SERP, your analysis is worthless
- **Name your confidence intervals**. "This depends on X holding" is something AI avoids because it reduces the appearance of authority
- **Include your own prior track record**. "In [prior article] I said X, which turned out to be wrong because Y" is something AI cannot fabricate
- **Cite primary documents, not news coverage of the documents**. The SEC 10-K, the research paper, the court filing — not a Bloomberg summary

## Common Mistakes
- Publishing analysis before any distance from the event — you just get breaking news with opinions
- Rehashing the press release in the name of "context setting"
- Generic "what does this mean for everyone" framing — pick a specific audience
- No thesis. If the article is "here's what happened, here are the implications," you're summarizing, not analyzing
- Taking no position. Analysis without a thesis is a timeline, not analysis

## Example Topics
- "OpenAI GPT-5 launch: what 10x cheaper inference means for RAG-based SaaS"
- "The EU AI Act enforcement delay: why this is worse for startups than for Big Tech"
- "Google's March 2026 core update: the sites that recovered all share one pattern"
- "Meta's Llama 4 release: why the license change matters more than the model"
