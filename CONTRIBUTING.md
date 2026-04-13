# Contributing

Thanks for considering a contribution. The skills in this repo are actively used for client SEO work and affiliate sites, so improvements that make them sharper or more accurate are welcome. Most of the value is in concrete methodology — specific numbers, named frameworks, contrarian findings from primary sources — not generic best-practices.

## What we welcome

- **Bug fixes** in skill prompts (factual errors, broken references, outdated data)
- **Better citations** for statistical claims (primary sources beat secondary sources; direct patent / study links beat blog posts)
- **New content-type templates** for `skills/write-content/references/content-types/` (and the matching `skills/improve-content/references/content-types/` copy) if the type is genuinely underserved
- **New link-building playbooks** for `skills/linkbuilding/references/tactics/` with realistic conversion rates from your own tests
- **Anti-slop ruleset additions** — new structural tells, banned vocabulary, or detection heuristics that you've seen catch AI content in the wild
- **Translations** of individual skills to other languages (keep the English version alongside)

## What we don't want

- Generic SEO advice that's already covered in the top 10 results for the topic — if you have to explain why it matters, it probably isn't differentiated enough
- "Best practices" posts rewritten as prompts — the repo's whole point is opinionated methodology, not consensus
- Marketing framing (adjectives like "powerful", "robust", "seamless", "comprehensive") — the skill files are meant to pass their own anti-slop audit
- AI-generated skill prompts without human editing — if you can tell Opus wrote it in one session, the reviewer will too
- Changes that duplicate what's already in the commercial InhouseSEO product without offering something substantively new

## Style guide

The skills are written to sound like a practitioner explaining something to a peer, not like documentation. A few rules the reviewer will apply to any PR:

1. **Take positions.** "We tested this and X works better than Y" beats "both X and Y have merits." Hedging triggers rejection.
2. **Specific over general.** Name the technique, cite the study, use real numbers. "~40-60 words" is better than "concise". "Kyle Roof's POP test hierarchy" is better than "Google's signals".
3. **No banned slop vocab.** The writing skills document ~50 banned words (`delve`, `leverage`, `landscape`, `seamless`, `furthermore`, `moreover`, `pivotal`, `robust`, `harness`, `showcase`, `comprehensive` as adjective, etc.). Don't use them in skill prose either.
4. **No rule-of-three groupings.** Use 2 or 4 items instead.
5. **Em dashes: max 1-2 per 1000 words.** Colons and periods do the same job.
6. **Show, don't state.** "You click a result, wait three seconds, hit back" beats "page speed affects user experience".
7. **Cite primary sources.** Link directly to the patent, the study, the tool's own documentation — not to a blog that links to the thing.

## How to submit

1. **Fork** the repo
2. **Create a feature branch** with a descriptive name:
   ```bash
   git checkout -b fix/content-brief-intent-length
   git checkout -b feat/skill-technical-audit
   git checkout -b docs/readme-install-fix
   ```
3. **Make focused commits** with [Conventional Commits](https://www.conventionalcommits.org/) style messages:
   - `fix(skill-name): what you fixed and why`
   - `feat(skill-name): what you added and why`
   - `docs(area): what you documented`
   - `refactor(area): structural changes without behavior changes`
4. **One logical change per commit.** Rebase and squash if you accumulate noise.
5. **Open a PR** to `main` with a short description of what changed and why. If it's a new skill or a major addition, include a brief note on how you tested it (which model, which prompt, what the output looked like).

## Review process

- First response within 3-5 days
- Review is pragmatic: does the change make the skill sharper, more accurate, or more honest?
- Expect feedback on voice and specificity more than on file structure
- We may suggest tightening, removing duplication, or adding citations before merging
- Approved PRs get squash-merged into `main` with a clean message

## License

By submitting a PR you agree that your contribution will be licensed under the [Apache License 2.0](LICENSE) alongside the rest of the repo. Please keep the existing `NOTICE` file entries intact.

## Questions

Open an issue on the repo for anything that doesn't fit above, or ping `hello@inhouseseo.ai`.
