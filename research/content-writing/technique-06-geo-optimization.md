# Technique 06: GEO (Generative Engine Optimization)

## What It Is

Optimizing content to be cited by AI systems -- ChatGPT, Claude, Perplexity, Google AI Overviews. A Princeton/Georgia Tech study found 40% visibility improvements using core GEO techniques. This is the emerging complement to traditional SEO.

## Why It Works

AI systems cite content that is: easy to extract, verifiable, authoritative, and structured for natural language queries. Content optimized for AI citation also tends to rank well in traditional search because the same qualities (clarity, specificity, authority) that AI systems value are what Google's quality signals reward.

## Key Statistics

- 92% of AI Overview citations come from top-10 ranking pages
- FAQ schema has 3.2x higher citation rate in AI Overviews
- Authors with presence across Wikipedia, Reddit, LinkedIn are 2.8x more likely to be cited
- Brand search volume (not backlinks) shows strongest correlation with AI citations
- ChatGPT shows strongest recency preference: 76.4% of most-cited pages updated within 30 days
- Over 53% of pages cited in AI Overviews are under 1,000 words

## Step-by-Step Process

### Step 1: Answer-First Formatting (+340% AI citations)

Lead every major section with a clear, extractable answer before expanding with detail.

**Pattern:**
```
## [Question as H2]

[Direct answer in 40-60 words -- clear, factual, citable]

[Expanded explanation with context, evidence, and nuance]
```

**Why it works:** AI systems scan for concise, authoritative statements they can extract and cite. An answer buried in paragraph 3 of a section is less likely to be cited than one at the top.

### Step 2: FAQ Schema Implementation (+28% AI citations)

FAQPage schema makes content 3.2x more likely to appear in AI Overviews.

**Implementation:**
- Include 3-5 FAQ items per page
- Use actual questions people search for (from PAA data in the brief)
- Answer in 40-60 words per question
- Implement FAQPage JSON-LD schema

### Step 3: Claim-Evidence Pairs

Structure content as verifiable claims followed by evidence. AI systems prefer content they can confidently cite.

**Pattern:**
```
[Factual claim with specific data point]. [Source attribution].
[Supporting evidence or context].
```

**Example:**
"Email marketing generates an average ROI of EUR 36 for every EUR 1 spent (DKG, 2025). This makes it the highest-ROI digital channel, outperforming social media (EUR 12.71) and paid search (EUR 8.14)."

### Step 4: Entity-Rich Writing

Explicitly name entities and their relationships. AI systems build knowledge graphs from entity-rich content.

**Implementation:**
- Name specific companies, people, tools, frameworks (not "many companies" but "Coolblue, Bol.com, and Zalando")
- Define relationships between entities explicitly
- Use structured data (Organization, Person, Product schema) to reinforce entity markup
- Link to authoritative external sources for entity validation

### Step 5: Structured Q&A Format

Clear question-answer patterns that AI can extract and cite.

**Implementation:**
- Use questions as H2/H3 headings where natural
- Answer immediately in extractable format
- Include "who/what/when/where/why/how" question variants
- Structure complex topics as series of questions

### Step 6: Source Attribution

Include verifiable statistics with explicit source citations.

**Implementation:**
- Cite specific sources by name and year: "(Ahrefs, 2025)" not "according to research"
- Include URLs for original data where possible
- Prefer recent sources (within 12 months)
- Link to original research, not secondary summaries

## Six Trust Signals for AI Citation

1. **Authorship attribution** -- clear author name with verifiable credentials
2. **Structured data** -- Schema.org/JSON-LD markup for content type
3. **Verifiable references** -- named sources with dates
4. **Consistent brand identity** -- consistent entity signals across platforms
5. **Recency** -- updated within 30 days for maximum ChatGPT citation chance
6. **Transparent data provenance** -- methodology disclosed for original claims

## GEO Measurement Metrics

| Metric | What It Measures |
|--------|-----------------|
| Prompt Coverage | How often your content appears in AI responses for target queries |
| Citation Share | Your percentage of total citations vs. competitors |
| Visibility Score | Prominence of your citations (position, context) |
| Authority Weight | How AI systems rate your domain's reliability |
| Freshness Ratio | Recency of your most-cited content |

## Dual Optimization: Google + AI

The writing skill should optimize for BOTH simultaneously. The overlap is large:

| Signal | Google Ranking | AI Citation |
|--------|---------------|-------------|
| Clear, extractable answers | Featured snippets | Direct citation |
| FAQ schema | Rich results | 3.2x citation rate |
| E-E-A-T signals | Quality score | Authority weight |
| Structured headings | Crawlability | Parsability |
| Specific data with sources | Information gain | Verifiability |
| Recency/freshness | QDF signal | Recency preference |
| Entity-rich content | Knowledge Graph | Entity linking |

**What differs:**
- Google rewards engagement signals (NavBoost) -- AI systems don't (yet)
- AI systems prefer concise, extractable text -- Google rewards comprehensive coverage
- AI systems heavily weight recency -- Google balances recency with authority

**Resolution:** Write comprehensive content (for Google) with clear, extractable summary answers at the start of each section (for AI). Keep content fresh (for both).

## Tips

- Test your content against actual AI systems: paste your target query into ChatGPT, Claude, and Perplexity and see if your content gets cited
- Prioritize FAQ schema -- the 3.2x citation rate is the highest-leverage GEO technique
- Keep extractable answers under 60 words -- longer answers are less likely to be cited verbatim
- Update content within 30-day cycles for maximum ChatGPT citation probability

## Common Mistakes

1. **Optimizing for AI only** -- 92% of AI citations come from top-10 ranking pages, so traditional SEO is still the foundation
2. **Burying answers in paragraphs** -- AI systems need clear, extractable statements at section tops
3. **Vague attributions** -- "research shows" is not citable; "(Ahrefs, 2025)" is
4. **Ignoring structured data** -- FAQ schema alone provides a 3.2x citation boost

## Key Sources

- [krillinai/GEO (GitHub)](https://github.com/krillinai/GEO)
- [awesome-generative-engine-optimization (GitHub)](https://github.com/amplifying-ai/awesome-generative-engine-optimization)
- [AgriciDaniel/claude-blog (GitHub)](https://github.com/AgriciDaniel/claude-blog) -- +340% citations from answer-first, +28% from FAQ schema
- [aaron-he-zhu/seo-geo-claude-skills (GitHub)](https://github.com/aaron-he-zhu/seo-geo-claude-skills) -- CORE-EEAT framework
- [Ahrefs: Short vs Long Content in AI Overviews](https://ahrefs.com/blog/short-vs-long-content-in-ai-overviews/)
