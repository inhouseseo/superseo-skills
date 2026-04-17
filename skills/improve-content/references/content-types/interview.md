# Interview

## What It Is
Q&A format article featuring a named expert, practitioner, or industry figure. Structured conversation that extracts first-party expertise, contrarian takes, and lived experience — the kind of content AI cannot fabricate because the source is a specific person with a specific history.

Credit: news content-type taxonomy contributed by [Shin Kitagawa](https://github.com/kitasinkita).

## When to Use
- You have access to a person with genuine domain expertise (not a PR talking head)
- The topic benefits from first-party experience over third-party research
- Your audience values practitioner insight — not polished corporate messaging
- The interview subject will engage with hard questions, not just softballs

Works for thought leadership, news media, founder-facing content, and technical publications. Especially strong for topics where LLMs produce generic advice — a real interview with a named expert is one of the few content types that cleanly beats AI on the merits.

## Structure Template

```
H1: "[Name]: [Provocative claim or unique POV]"
    (e.g., "Marie Haynes: why the 2025 Google leak proved half of SEO Twitter wrong")

Intro (80-150 words):
    Who is this person and why should the reader care?
    Their specific expertise, track record, and the context that makes their
    take valuable. Do NOT list credentials like a LinkedIn bio — give one
    specific accomplishment that establishes authority.

H2: Quick context
    1-2 paragraphs. What the reader needs to understand before the Q&A starts.
    Set up the stakes. Name the debate or decision the interview is about.

H2: [First substantive question as a heading]
    Q: [Your question — short, direct, specific]
    A: [Their answer — edited for clarity but preserving voice and specificity]

    Use 5-8 Q&A pairs total. Each question should be a heading.
    Questions should build on each other, not be a list of separate topics.

H2: [Second question as a heading]
    Q: ...
    A: ...

(... continue for 5-8 questions total)

H2: One question we got wrong in prep
    Q: [A question you didn't plan to ask but came up in conversation]
    A: [The answer that surprised you or changed the direction of the interview]

    This section is optional but valuable — it signals a real conversation.

H2: What the interview changed about our thinking
    2-3 sentences. The specific thing your publication learned, not a generic
    "fascinating conversation" closer. Show that you're processing what they said.

(Optional) H2: Related reading
    Link to the interviewee's own work, prior coverage, and adjacent perspectives
```

## Word Count
2,000-4,000 words (preserve the interviewee's voice — don't cut for length unless you're cutting filler)

## Schema Markup
- **Primary:** Article with `author` as the interviewer AND `interviewee` (a named Person)
- **Secondary:** FAQPage only if you add a standalone FAQ section — don't try to cram Q&A headings into FAQPage schema; that's a different thing
- **Critical:** Use `Person` schema for the interviewee with `sameAs` links to their LinkedIn, personal site, or company page

## Featured Snippet Strategy
- **Format:** Paragraph snippet targeting "[interviewee name] on [topic]" queries
- **Target:** The most quotable 40-60 word excerpt from the interview. Pull this into a callout box near the top of the article so Google sees it prominently.
- **Tip:** Interview articles often win snippets for "what does [expert] think about [topic]" queries — optimize the intro paragraph for exactly this framing

## Voice and Editing Rules
- **Preserve their voice.** If they say "I was dead wrong about this," keep it. If they use technical shorthand, keep it. Heavy-handed editing kills interview content.
- **Cut filler, not color.** Remove "um" and "you know" and tangents — keep contractions, specific anecdotes, and personal asides.
- **Don't paraphrase their key insight in your voice.** If the quote is powerful, let it stand. Your job is to frame the question so they can say the thing well.
- **Mark clear edits.** If you trimmed a long answer, indicate it. Readers and search engines both reward transparency.
- **Keep your questions short.** If your question is longer than their answer, you're doing it wrong.

## CTA / Engagement Placement
- Newsletter signup: "more interviews like this" (interview content has a distinctive audience)
- Inline: link to the interviewee's own work — they're more likely to share the article
- End: related interviews from your own site (interview content drives interview-cluster traffic)

## Internal Linking Strategy
- Link outward generously to the interviewee's work, company, and prior public statements
- Link to your own prior coverage of the topic so the interview has context
- Interviews are strong hub content — link to them from related articles for months afterward

## E-E-A-T Signals (interview-specific)
- **Experience**: the interviewee's direct experience is the entire content. Surface specific years, projects, companies, or data points they bring up.
- **Expertise**: cite the interviewee's verifiable track record in the intro. One specific accomplishment is worth more than a list of credentials.
- **Authoritativeness**: interview subject's `sameAs` links, their publication record, their role at a named organization
- **Trustworthiness**: transparent editing disclosure, clear attribution of every quote, no manufactured Q&A pairs

## Notes on Anti-AI
Interview content is one of the strongest defenses against AI-generated content — but only if the interview is real. Defenses:

- **Use specific quotes, not paraphrases.** Every paraphrase is a place where AI can match your output.
- **Include the exact date and format of the interview** (Zoom, in-person, email) — a tiny trust signal but it's one AI rarely adds.
- **Let the interviewee disagree with you.** If they push back on a question, keep the pushback in. AI-generated interviews never contain genuine disagreement.
- **Include at least one answer that surprised you.** The "one question we got wrong in prep" section is specifically for this.
- **Add a photo if you can.** Not the interviewee's headshot — the moment. A screen recording timestamp, a whiteboard they referenced, a product they pointed at. Evidence the conversation happened.

## Common Mistakes
- Asking softball questions. "What advice would you give founders?" produces generic answers.
- Taking PR-approved language at face value. Push back on corporate framing.
- Over-editing the interviewee's voice into your publication's voice.
- No point of view from the interviewer. Interviews are a collaboration — your framing matters.
- Treating the interview as a transcript. It's an edited article where the subject happens to be a conversation.

## Example Topics
- "Marie Haynes: why the 2025 Google leak proved half of SEO Twitter wrong"
- "Eugene Yan on why the LLM-as-judge pattern is failing in production"
- "Cal Newport: what two years of running without a smartphone taught him about focus"
- "Rand Fishkin: the SparkToro bet that almost broke the company"
