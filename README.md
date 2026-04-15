# SuperSEO Skills: Opinionated Claude Skills for SEO

### 11 SEO skills. Audits, briefs, articles, link plans, expert interviews. One input each. The agent does the research itself.

*No exports. No API keys. No paste-in data. Production-tested at [InhouseSEO](https://inhouseseo.ai).*

[![GitHub stars](https://img.shields.io/github/stars/inhouseseo/superseo-skills?style=social)](https://github.com/inhouseseo/superseo-skills/stargazers)
[![Claude Code Plugin](https://img.shields.io/badge/Claude_Code-One--command_install-7c3aed?logo=anthropic&logoColor=white)](#install-in-30-seconds)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
&nbsp;&nbsp;⭐ **Star this if you ship SEO work.**

![superseo-skills page-audit running in real Claude Code on backlinko.com/title-tags](demo/page-audit-demo.gif)

<sub>↑ One of the 11: `page-audit` running in real Claude Code on `backlinko.com/title-tags`, 1m 3s. Cast: [`demo/page-audit-real.cast`](demo/page-audit-real.cast).</sub>

**Same pattern across all 11 skills (`page-audit` shown):**

| | Vanilla Claude prompt | A superseo skill |
|---|---|---|
| Input | "audit this page for SEO" | A URL or a keyword |
| Competitor research | Hallucinates word counts | Fetches & reads top 3, end-to-end |
| 404 / dead links | Audits the error page | Catches it, finds the canonical |
| Output | Generic checklist | Named competitors, char-counted rewrites, 1–10 per dimension |
| Methodology | Vibes | POP test · Information Gain · E-E-A-T · semantic networks |

**11 skills in this repo:** `page-audit` · `content-brief` · `write-content` · `improve-content` · `keyword-deep-dive` · `semantic-gap-analysis` · `eeat-audit` · `topic-cluster-planning` · `featured-snippet-optimizer` · `linkbuilding` · `expert-interview`. Every skill works the same way: one input, the agent does the research itself.

## Install in 30 seconds

```bash
/plugin marketplace add inhouseseo/superseo-skills
/plugin install superseo@superseo-skills
```

Then in Claude: `run page-audit on <your URL>`. Other surfaces (Claude Desktop, Claude.ai, Cursor, any agent) → [Quick start](#quick-start) below.

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

### Per-skill bundled references (`skills/<name>/references/`)

Every skill ships with its own `references/` folder containing the deeper material the skill pulls from on demand. No separate research library to install or paste — it's already bundled with each skill.

- **Content-type templates** (23 types total, distributed across `write-content`, `improve-content`, `content-brief`, `eeat-audit`, `featured-snippet-optimizer`): how-to, definition, comparison, listicle, pillar page, FAQ, landing page, service page, case study, thought leadership, product review, pricing page, about page, and more. Each includes the exact H1/H2 structure, schema markup, featured snippet strategy, word count targets, and E-E-A-T signals for that content type. A `content-types-overview.md` decision table covers all 23 in one place.

- **Writing technique modules** (in `write-content`, `improve-content`, `expert-interview`, and domain-specific skills): the anti-AI-slop defense system (tiered banned vocabulary, structural pattern detection, the Horoscope Test), voice injection, E-E-A-T signal embedding, information gain writing, search intent matching, topic cluster strategy, quality scoring, structured data for SERP features, and more.

- **Skill-specific diagnostic references**: POP test hierarchy and content-types audit summary in `page-audit`, CTR benchmarks and SERP volatility heuristics in `keyword-deep-dive`, EAV triple worked examples in `semantic-gap-analysis`, YMYL scoring and fastest-wins in `eeat-audit`, first-link-weight evidence in `topic-cluster-planning`, snippet format templates in `featured-snippet-optimizer`, and a question bank organized by content type in `expert-interview`.

### 9 link-building tactic playbooks (`skills/linkbuilding/references/tactics/`)

Entity stacking, citations and directories, competitor backlink gap, guest posting, resource pages, skyscraper technique, strategic partnerships, podcast guesting, and a new-site launch strategy. Each has step-by-step execution, common mistakes, and realistic conversion rates from the field. Plus three top-level safety references in `skills/linkbuilding/references/`: phase classification tree, anchor text safety guide, and link velocity red flags.

**9 more link-building playbooks live in the InhouseSEO platform** — the highest-conversion and most-underutilized tactics (link reclamation, existing relationships, testimonial building, broken link building, reactive and proactive digital PR, linkable assets, niche edits, ego bait). See the "What you get with InhouseSEO" section below.

---

## Quick start

Each skill lives in its own folder at `skills/<skill-name>/SKILL.md` with a bundled `references/` subfolder for heavy reference material the agent can load on demand. This is the canonical Claude Code skill-discovery layout, and it's what makes the skills work identically in Claude Code, Claude Desktop, the Claude.ai app, and Cursor — no separate paste step for content-type templates or tactic playbooks.

### Claude Code (plugin marketplace — recommended)

One command installs all 11 skills at once via the plugin system:

```bash
/plugin marketplace add inhouseseo/superseo-skills
/plugin install superseo@superseo-skills
```

That's it. Every skill is now auto-discoverable (`page-audit`, `content-brief`, etc.) and each skill's `references/` folder comes with it. Updates: `/plugin marketplace update superseo-skills`.

### Claude Code (manual, if you prefer)

Clone the repo and copy each skill folder into your skills directory. Because the `references/` live inside each skill folder, the copy brings the full reference library with it automatically.

```bash
git clone https://github.com/inhouseseo/superseo-skills.git
cp -r superseo-skills/skills/* ~/.claude/skills/
```

Restart Claude Code. Ask Claude to "run a page audit on example.com" and it'll load the `page-audit` skill.

Prefer a symlink so `git pull` stays live? Clone somewhere stable, then link each skill folder:

```bash
git clone https://github.com/inhouseseo/superseo-skills.git ~/superseo-skills
ln -s ~/superseo-skills/skills/*/ ~/.claude/skills/
```

### Claude.ai, Claude Desktop, and Claude mobile

Custom skill uploads via **Settings → Features → Skills → +**. Pro plan or above. One skill per upload — Claude.ai's skill UI is one-at-a-time, so grab the skill you want from the [Releases page](https://github.com/inhouseseo/superseo-skills/releases) (`page-audit.zip`, `write-content.zip`, etc.) and upload it. Each zip is a complete skill including its bundled `references/`, and progressive disclosure works the same way it does in Claude Code. Skills don't sync across surfaces, so upload per account and per device.

If you want all 11 skills in one command, use the Claude Code plugin install above — that's the fastest path for the full pack.

### Cursor

Copy each skill's SKILL.md into your Cursor rules directory:

```bash
git clone https://github.com/inhouseseo/superseo-skills.git
for dir in superseo-skills/skills/*/; do
  cp "$dir/SKILL.md" .cursor/rules/"$(basename "$dir")".md
done
```

Cursor rule files are static prompts, so the agent can't dynamically load sibling directories. Paste a `references/` file into the conversation when the skill calls for one, or keep the repo open in a second Cursor workspace for the agent to grep.

### Any other agent

Copy the content of any `skills/<skill-name>/SKILL.md` into your system prompt. Each file is a complete, standalone prompt — the bundled references are optional depth the agent loads from `skills/<name>/references/` when a step asks for them.

---

## What InhouseSEO adds

The skills in this repo handle anything an agent can research live — audits, briefs, writing, E-E-A-T, clusters, snippets, standalone link tactics. What they can't do is run against historical Search Console data or monitor a site over time. That's where [InhouseSEO](https://inhouseseo.ai) picks up.

- **GSC data warehouse** — 16 months of Search Console history, period-over-period, keyword-level tracking
- **Nightly signals** — traffic drops, content decay, cannibalization, CTR-gap wins, ranking moves, competitor alerts
- **Site crawler** — 24+ technical issue types, internal link graph, schema, orphan pages
- **13 GSC-backed workflows** — weekly-report, keyword-opportunities, traffic-decline-recovery, content-decay, cannibalization, top-movers, ranking-changes, compare-periods, technical-health, internal-links, index-coverage, serp-features, competitor-intelligence
- **9 higher-conversion link-building playbooks** — link reclamation, existing relationships, testimonials, broken links, reactive and proactive digital PR, linkable assets, niche edits, ego bait
- **MCP connector** — one-click connect to Claude, everything runs against live data

Free 14-day trial at **[inhouseseo.ai](https://inhouseseo.ai)**.

---

## License

Released under the **[Apache License 2.0](LICENSE)**.

You are free to use, modify, and redistribute these skills — including for your own sites, agency client work, derivative works, and commercial products. Apache 2.0 requires that you preserve the copyright notice and the `NOTICE` file in any redistribution, and that substantial modifications be marked; see the full license text for details.

If you build something interesting on top of these skills, we'd love to hear about it — drop a note at [hello@inhouseseo.ai](mailto:hello@inhouseseo.ai).

---

## Contributing

Found a better framing? A tactic we missed? A CTR benchmark that's more current than ours? PRs welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for the style guide and submission flow — the short version is: take positions, be specific, cite primary sources, and pass the skills' own anti-slop audit.

For issues with how a skill performs in the wild, open an issue with the exact prompt, the model, and the output.

## Security

This repository contains no executable code — the security surface is limited to the Markdown files a Claude agent reads when running a skill. See [SECURITY.md](SECURITY.md) for the full scope and reporting process.

---

## Star history

[![Star History Chart](https://api.star-history.com/svg?repos=inhouseseo/superseo-skills&type=Date)](https://star-history.com/#inhouseseo/superseo-skills&Date)

If these skills save you time on your next audit, brief, or rewrite, a star helps other SEOs find them.

---

**Built by [InhouseSEO](https://inhouseseo.ai).**
