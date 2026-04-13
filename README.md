# SuperSEO Skills — Opinionated Claude Skills for SEO

**11 Claude skills for SEO encoding the methodology I actually trust: Koray Tuğberk GÜBÜR on semantic networks, Kyle Roof's POP test priorities, Lily Ray on demonstrated E-E-A-T, and the Information Gain patent research. Plus a generation-time anti-AI-slop ruleset that's not a humanizer. Production-tested at [InhouseSEO](https://inhouseseo.ai), open-sourced today.**

Drop these into Claude (Code, Desktop, or the app), Cursor, or any agent that reads markdown. Give the agent a URL or a keyword and it does the work: fetches the page, Googles competitors, reads the top 3 results, runs the analysis.

---

## Why these skills are different

Most "SEO skills" you'll find are prompts that ask you to paste in keyword data, traffic exports, crawl reports, and backlink profiles. Then the prompt does a spreadsheet-style analysis of whatever you fed it.

These skills flip that. **The agent does the data gathering itself.**

- `page-audit` → you give a URL. The agent fetches the page, identifies the primary keyword, runs a Google search, reads the top 3 competitors, and produces a 7-dimension audit.
- `content-brief` → you give a keyword. The agent Googles it, reads the top 10 results, maps the intent, identifies the content gap, and produces a writer-ready brief.
- `keyword-deep-dive` → you give a keyword. The agent reads the SERP, classifies intent, reads the top 3 competitors in detail, and produces a 90-day ranking plan.
- `write-content` → you give a topic. The agent researches, asks you 2-3 questions about your expertise, and writes the article using the full anti-AI-slop ruleset.

No exports. No pasting data. No "gather this from GSC first." Just a URL or a keyword, and the skill does the work.

---

## What's inside

### 11 skills (`skills/`)

- **`page-audit`** — 7-dimension audit of any URL, with competitor research
- **`content-brief`** — writer-ready brief from a target keyword, with SERP gap analysis
- **`write-content`** — complete SEO article with the full anti-AI-slop ruleset
- **`improve-content`** — rewrite an existing page with better structure and voice
- **`keyword-deep-dive`** — single-keyword opportunity analysis with 90-day ranking plan
- **`semantic-gap-analysis`** — exact entities and subtopics missing from your page vs. the top 3
- **`eeat-audit`** — score Experience, Expertise, Authoritativeness, Trustworthiness with specific fixes
- **`topic-cluster-planning`** — hub-and-spoke architecture from a seed topic, with publishing order
- **`featured-snippet-optimizer`** — rewrite your answer block to win the snippet for a keyword you already rank for
- **`linkbuilding`** — phase-appropriate tactics (foundation, growth, authority) from domain reading
- **`expert-interview`** — extract first-party expertise through targeted questions, feeds into content writing

### 23 content-type templates (`research/content-writing/`)

How-to pages, definitions, comparisons, listicles, pillar pages, FAQs, statistics pages, news articles, thought leadership, product pages, category pages, landing pages, pricing pages, integration pages, service pages, location pages, case studies, about pages, programmatic pages, and more. Each includes the exact H1/H2 structure, schema markup, featured snippet strategy, word count targets, and E-E-A-T signals for that content type.

Plus a 16-module writing technique library in the same folder: the anti-AI-slop defense system (tiered banned vocabulary, structural pattern detection, the Horoscope Test), voice injection, E-E-A-T signal embedding, information gain writing, search intent matching, topic cluster strategy, quality scoring, structured data for SERP features, and more.

### 9 link-building tactic playbooks (`research/linkbuilding/`)

Entity stacking, citations and directories, competitor backlink gap, guest posting, resource pages, skyscraper technique, strategic partnerships, podcast guesting, and a new-site launch strategy. Each has step-by-step execution, common mistakes, and realistic conversion rates from the field.

**9 more link-building playbooks live in the InhouseSEO platform** — the highest-conversion and most-underutilized tactics (link reclamation, existing relationships, testimonial building, broken link building, reactive and proactive digital PR, linkable assets, niche edits, ego bait). See the "What you get with InhouseSEO" section below.

---

## Quick start

Each skill lives in its own folder at `skills/<skill-name>/SKILL.md`, which is the canonical Claude Code skill-discovery layout.

### Claude Code

Clone the repo and copy each skill folder into your Claude Code skills directory:

```bash
git clone https://github.com/inhouseseo/superseo-skills.git
cp -r superseo-skills/skills/* ~/.claude/skills/
```

Restart Claude Code. Each skill is now auto-discoverable — ask Claude to "run a page audit on example.com" and it'll load the `page-audit` skill.

Prefer a symlink so `git pull` stays live? Clone somewhere stable, then link each skill folder:

```bash
git clone https://github.com/inhouseseo/superseo-skills.git ~/superseo-skills
ln -s ~/superseo-skills/skills/*/ ~/.claude/skills/
```

### Claude Desktop or Claude.ai

Create a new Project. Paste the content of `skills/<skill-name>/SKILL.md` into the Project's custom instructions. Each SKILL.md is self-contained — no dependencies between files.

### Cursor

Copy each skill's SKILL.md into your Cursor rules directory with the skill name as the filename:

```bash
git clone https://github.com/inhouseseo/superseo-skills.git
for dir in superseo-skills/skills/*/; do
  cp "$dir/SKILL.md" .cursor/rules/"$(basename "$dir")".md
done
```

### Any other agent

Copy the content of any `skills/<skill-name>/SKILL.md` into your system prompt. Each file is a complete, standalone prompt.

---

## What you get with InhouseSEO

The 11 skills in this repo cover the analysis and writing work you can do with web access alone. There's a class of SEO work — and a larger library of playbooks — that isn't possible without a data warehouse, ongoing site monitoring, and access to the tactics that depend on that data. That's what [InhouseSEO](https://inhouseseo.ai) adds.

### Data and monitoring

- **A GSC data warehouse.** Daily ingest from Search Console, analytical queries over 16 months of history in sub-second. Period-over-period comparisons, YoY analysis, historical keyword tracking — none of which is possible from a live Google search.
- **Proactive signals.** Nightly analysis surfaces alerts: traffic drops, content decay, cannibalization, ranking movements, competitor jumps, CTR-gap opportunities. The weekly pulse is already written when you open the dashboard.
- **A full site crawler.** 24+ technical issue types, the internal link graph, sitemap validation, schema detection, orphan page identification.
- **Business context that persists.** Audience, tone, language, brand keywords, competitors — saved once, loaded automatically into every workflow.
- **Page intelligence.** Every important page analyzed once and stored (content, keywords, crawl data, historical performance), so the next audit starts from memory instead of a cold fetch.

### 13 additional workflows that need GSC data

These can't run standalone because they require historical data that the agent can't pull from a live Google search:

- **weekly-report** — wins, alerts, watch list, action items from connected signals
- **keyword-opportunities** — CTR-gap quick wins and striking-distance prioritization across the full keyword portfolio
- **traffic-decline-recovery** — root-cause diagnosis (algorithm vs technical vs content decay vs competitive vs seasonal vs SERP feature loss)
- **content-decay** — page-level decay detection with seasonality adjustment and refresh playbook per stage
- **cannibalization-check** — keyword conflict detection with severity scoring, merge/differentiate/de-optimize decisions
- **top-movers** — real-time position movers with trend classification
- **ranking-changes** — strategic pattern analysis over weeks and months
- **compare-periods** — period-over-period attribution with confidence scoring
- **technical-health** — prioritized remediation roadmap weighted by real traffic, not theoretical severity
- **internal-links** — orphan detection and hub/spoke optimization from the crawled link graph
- **index-coverage** — indexation diagnosis by root cause (technical / not crawled / crawled-not-indexed / duplicate / bloat)
- **serp-features** — featured snippet and rich result opportunities across the tracked keyword set
- **competitor-intelligence** — 4-phase analysis against competitors monitored continuously

Plus onboarding, goal planning, weekly review, and strategic pivot workflows that save and iterate on the SEO plan across sessions.

### 9 more link-building playbooks

The repo ships 9 commonly-discussed tactics. The platform has 9 more — the ones with the highest conversion rates and the most specific execution detail:

- **Link reclamation** — unlinked brand mention recovery. 30-50% conversion, the highest of any tactic.
- **Existing relationships** — suppliers, clients, partners, alumni, tool testimonials. 50-80% conversion.
- **Testimonial link building** — write-and-get-linked for tools you already use. 50-70% conversion.
- **Broken link building** — specific search operators, outreach templates, and filtering logic.
- **Reactive digital PR** — HARO alternatives (Source of Sources, Featured.com, Qwoted) with response workflows.
- **Proactive digital PR** — original research campaigns that pitch to niche outlets first.
- **Linkable assets** — statistics pages, free tools, original research. The long-term leverage play.
- **Niche edits** — advanced, higher risk, high ROI when done right.
- **Ego bait** — expert roundups and embeddable badge mechanics.

Each one is a full playbook with step-by-step execution, email templates, search operators, common mistakes, and realistic benchmarks from the field.

### The math behind the signals

The formulas and thresholds that turn raw GSC data into useful alerts:

- Cannibalization severity scoring with split-ratio weighting
- Position-specific CTR percentile baselines (P25 / median / P75) from your own data
- Decay scoring with seasonality adjustment (90-day vs 6-month vs YoY)
- Trending-topic detection with rolling averages and impression-spike filtering
- Keyword cluster hub/spoke topology

### The MCP connector

One-click connect to Claude. Everything above runs against live data automatically.

---

If you're doing SEO for one site and the agent can do its own research each session, this repo is plenty. If you want the data warehouse, the signals, the persistent memory, and the full playbook library, that's what the platform is for.

Free 14-day trial at **[inhouseseo.ai](https://inhouseseo.ai)**.

---

## License

Released under **[Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)](LICENSE)**.

**You are free to:**
- Use these skills for your own sites
- Use them for paid client work in an agency or in-house role
- Modify them, fork them, learn from them, teach from them
- Share them with attribution

**You may not:**
- Repackage them into a paid product
- Sell them as a course or playbook
- Build a commercial SEO tool around them

If you want to do any of the above, [get in touch](mailto:hello@inhouseseo.ai) about a commercial license.

---

## Contributing

Found a better framing? A tactic we missed? A CTR benchmark that's more current than ours? PRs welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for the style guide and submission flow — the short version is: take positions, be specific, cite primary sources, and pass the skills' own anti-slop audit.

For issues with how a skill performs in the wild, open an issue with the exact prompt, the model, and the output.

## Security

This repository contains no executable code — the security surface is limited to the Markdown files a Claude agent reads when running a skill. See [SECURITY.md](SECURITY.md) for the full scope and reporting process.

---

**Built by [InhouseSEO](https://inhouseseo.ai).**
