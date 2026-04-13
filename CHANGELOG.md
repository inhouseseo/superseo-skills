# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2026-04-13

Restructures every skill to the bundled-references layout so the skills work identically in every environment (Claude Code plugin, Claude Desktop, Cursor, bare markdown). The 39 research files from the old top-level `research/content-writing/` and `research/linkbuilding/` folders have been distributed into per-skill `references/` folders, and 28 new skill-specific reference files have been written to fill gaps where the skill body pointed at material that didn't exist. Installs as a Claude Code plugin marketplace with one command.

### Added

- **`.claude-plugin/marketplace.json`** — plugin marketplace manifest so users can install with `/plugin marketplace add inhouseseo/superseo-skills` followed by `/plugin install superseo-skills@superseo-skills`. All 11 skills are listed by path; the bundled `references/` folders install alongside automatically.
- **28 new skill-specific reference files** written across 9 skills to fill gaps in the n×n skill-to-research coverage analysis (see below). Highlights:
  - `page-audit/references/` — `pop-test-hierarchy.md`, `eeat-scoring-rubric-compact.md`, `semantic-entity-checklist.md`, `content-types-audit-summary.md`
  - `keyword-deep-dive/references/` — `ctr-benchmarks-by-position.md`, `zero-click-and-aio-impact.md`, `serp-features-recognition.md`, `serp-volatility-heuristics.md`, `difficulty-from-serp-signals.md`
  - `semantic-gap-analysis/references/` — `eav-triple-worked-examples.md`, `predicate-verb-fields.md`, `gap-classification-rubric.md`
  - `eeat-audit/references/` — `ymyl-scoring-rubric.md`, `fastest-eeat-wins.md`, `experience-detection-playbook.md`, `author-schema-templates.md`
  - `topic-cluster-planning/references/` — `first-link-weight-evidence.md`, `publishing-sequence-decisions.md`, `spoke-selection-worked-example.md`
  - `featured-snippet-optimizer/references/` — `query-format-matching-expanded.md`, `snippet-format-templates.md`, `aio-vs-snippet-decision.md`
  - `linkbuilding/references/` — `anchor-text-safety-guide.md`, `phase-classification-tree.md`, `link-velocity-redflags.md`
  - `expert-interview/references/` — `question-bank-by-topic.md`, `knowledge-doc-template.md`
  - `content-brief/`, `write-content/`, `improve-content/` — shared `content-types-overview.md` decision table across all 23 content types
- **"Bundled references" sections** added to every SKILL.md body. Each reference file is tagged with the specific step, rule, or situation that triggers loading it, so the agent pulls one file at a time instead of preloading the whole folder.

### Changed

- **Per-skill `references/` layout**. The old top-level `research/content-writing/` and `research/linkbuilding/` folders have been split apart and distributed into `skills/<name>/references/` subfolders. Each skill now ships with only the reference files it actually uses. This matches Anthropic's canonical pptx/docx skill pattern and fixes the Claude Desktop / Cursor caveat where sibling directories couldn't auto-resolve.
- **Content-type templates** (23 total) now live in `skills/<name>/references/content-types/` under `write-content`, `improve-content`, `eeat-audit`, and `featured-snippet-optimizer` — each skill gets the subset it actually needs. Previously all 23 were in one top-level `research/content-writing/` folder.
- **Link-building tactic playbooks** (9 total) moved from `research/linkbuilding/` to `skills/linkbuilding/references/tactics/`. The SKILL.md now references tactics by slug (`entity-stacking.md`, `guest-posting.md`, etc.) instead of by the old `tactic-NN-[slug]` numbered naming.
- **SKILL.md paths updated**: the 4 skills that had explicit `research/content-writing/` or `research/linkbuilding/` references in their bodies (`content-brief`, `write-content`, `improve-content`, `linkbuilding`) now point at local `references/...` paths. No skill references the removed top-level research folder anymore.
- **README Quick Start rewritten** around the plugin marketplace install as the primary path, with manual install as a fallback. Claude Desktop / Cursor sections now explain the Project Knowledge / on-demand-paste options for the bundled references instead of referencing a top-level research folder.
- **README "What's inside"** reorganized to describe references by which skill bundles them, rather than by the old monolithic `research/` structure.

### Fixed

- **Write-once reference parity**. In v0.1.0 some skill bodies referenced material (e.g., "load the POP test hierarchy", "load the YMYL scoring rubric") that didn't exist as a standalone file. The n×n analysis surfaced 28 such gaps; each now has a dedicated reference file written to match the existing v0.1.0 writing quality (voice, citation density, specificity, anti-slop compliance).
- **Cross-environment consistency**. Because each skill now bundles its own references, the Claude Desktop / Cursor paste workflow no longer needs a separate step for loading the research library — the references are in the same folder as the SKILL.md and can be uploaded to Project Knowledge or pasted in when the skill calls for them.


Initial public release of the SuperSEO Skills pack: 11 opinionated Claude skills for SEO, plus 23 content-type templates, a 16-module writing technique library, and 9 link-building tactic playbooks. Production-tested at InhouseSEO, open-sourced under the Apache License 2.0.

### Added

**Skills** (`skills/<name>/SKILL.md`, canonical Claude Code discovery layout):
- `page-audit` — 7-dimension audit of any URL with competitor SERP research
- `content-brief` — writer-ready brief from a target keyword, with SERP gap analysis
- `write-content` — complete SEO article with generation-time anti-AI-slop ruleset
- `improve-content` — rewrite an existing page with the same anti-slop rules
- `keyword-deep-dive` — single-keyword opportunity analysis with 90-day ranking plan
- `semantic-gap-analysis` — entities and subtopics missing from your page vs the top 3
- `eeat-audit` — score E-E-A-T on what's demonstrated, not declared
- `topic-cluster-planning` — hub-and-spoke architecture with publishing order
- `featured-snippet-optimizer` — rewrite the answer block to win the snippet
- `linkbuilding` — phase-appropriate tactics from 9 playbooks
- `expert-interview` — extract first-party expertise through targeted questions

**Research library** (`research/`):
- 23 content-type templates with exact H1/H2 structure, schema, featured snippet format, and word count targets per type (`research/content-writing/technique-18` through `technique-40`)
- 16 writing technique modules covering information gain, anti-AI-slop defense, voice injection, E-E-A-T signal embedding, SERP-driven writing, topic cluster strategy, and quality scoring (`research/content-writing/technique-01` through `technique-17`, with `technique-09` intentionally omitted)
- 9 link-building tactic playbooks with search operators, pitch angles, and realistic conversion rates (`research/linkbuilding/`)

**Project files**:
- `SECURITY.md` documenting the prompt-only security surface and private disclosure process at `hello@inhouseseo.ai`
- `CONTRIBUTING.md` with style guide, Conventional Commits convention, and review policy
- `NOTICE` file with the required Apache 2.0 attribution
- `.gitignore` with standard macOS / editor / secrets patterns

### Fixed

- **Claude Code install path**: skills were initially laid out as flat `skills/<name>.md` files which do not match Claude Code's canonical discovery layout. Restructured to `skills/<name>/SKILL.md` using `git mv` to preserve rename history. README install instructions updated accordingly.
- **README template count**: corrected "25 content-type templates" to the accurate 23 (techniques 18-40 in the content-writing folder), with a clarifying note that the 16 files numbered 01-17 form the separate writing technique library.
- **`write-content` persistence default**: first-use business-context persistence now recommends `~/.claude/projects/<path>/memory/business-context.md` as the safe default in Claude Code. Writing to `CLAUDE.md` is now explicit opt-in only, to avoid silently appending content to the user's project-wide instructions file.
- **Inline citations added** to statistical claims in `page-audit`, `featured-snippet-optimizer`, and `keyword-deep-dive` skills. Sources: the Google Information Gain patent (US11769017B1) via Search Engine Journal, Kyle Roof's PageOptimizer Pro (US patent 10540263), SearchPilot's internal-linking split-test case studies, First Page Sage's 2026 CTR by ranking position study, Ahrefs' December 2025 AI Overview impact report, and Seer Interactive's September 2025 AIO CTR study.
- **Unverified stat removed**: the "+264% impressions from internal links" claim in `page-audit` was not traceable to SearchPilot's actual published case studies. Replaced with the verified 5-25% organic traffic uplift range from their real split-test results.
- **`research/content-writing/technique-06-geo-optimization.md` numbers**: the "92% of AI Overview citations come from top-10 ranking pages" claim was wrong — Ahrefs' own study reported 76% in mid-2025 and 38% in the February 2026 update. Stat corrected and sourced. Other GEO key-statistics bullets trimmed or re-attributed.
- **README note on research-library loading**: Claude Desktop / Claude.ai and Cursor rule files don't dynamically load sibling directories, so the `research/` references in skill bodies won't auto-resolve in those environments. Added a short note to the Quick Start for both, with two work-arounds.

### Changed

- **License: Apache 2.0** (originally released under CC BY-NC 4.0 and switched the same day for OSI compatibility). Apache 2.0 is permissive, requires attribution and `NOTICE` preservation, and includes an explicit patent grant. Commercial use, modification, and redistribution are now allowed.

### Credits

- Skills methodology informed by work from Koray Tuğberk GÜBÜR (semantic networks and entity/predicate/EAV analysis), Kyle Roof (POP test hierarchy, `pageoptimizer.pro`), and Lily Ray (demonstrated E-E-A-T over declared bios)
- Anti-AI-slop ruleset draws on [Wikipedia's AI cleanup project](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing), StyloAI's stylometric research, [blader/humanizer](https://github.com/blader/humanizer), and [conorbronsdon/avoid-ai-writing](https://github.com/conorbronsdon/avoid-ai-writing)
- GEO research references the [Princeton / Georgia Tech / AI2 / IIT Delhi GEO paper (Aggarwal et al., KDD 2024)](https://arxiv.org/abs/2311.09735)

[Unreleased]: https://github.com/inhouseseo/superseo-skills/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/inhouseseo/superseo-skills/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/inhouseseo/superseo-skills/releases/tag/v0.1.0
