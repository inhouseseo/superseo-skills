# Security Policy

## Scope

This repository is a prompt-only collection of Claude skills and methodology documents. It contains **no executable code**: no hooks, no scripts, no binaries, no package manifests, no network calls made by the repository itself. The security surface is limited to the Markdown files a Claude agent reads when running one of the skills.

When a user runs one of these skills, the agent may:

- Fetch URLs the user explicitly supplies
- Run Google searches for keywords the user explicitly supplies
- Read the content of pages the user points it at
- Return the analysis back to the conversation

All of these actions are explicit and user-initiated. The skills do not instruct the agent to collect credentials, make calls to third-party APIs beyond the user's own search / fetch tools, persist data outside the conversation, or escalate permissions. The only optional persistence any skill suggests is that `write-content` may (on first use) ask the agent to save user-supplied business context to a location the user designates (`CLAUDE.md`, a project memory file, or similar) — and only with the user's explicit choice.

## Out of scope

Issues in any of the following are **not** security concerns of this repository and should be reported to the relevant vendor:

- **Claude Code, Claude Desktop, Claude.ai, Cursor, or any other AI agent platform** that may run these skills. Report to the platform vendor.
- **Web-fetch, web-search, or browser tools** that the agent uses when running a skill. Those are the agent's capabilities, not introduced by this repo.
- **The commercial InhouseSEO platform** referenced in the README. Contact InhouseSEO directly.

## Reporting a vulnerability

If you find a security concern in one of the skills — for example, a prompt that could cause an agent to leak data, perform unwanted writes, execute something the user did not authorize, or escalate permissions beyond user intent — please report it privately:

**Email:** `hello@inhouseseo.ai` with subject line starting with `[SECURITY]`

Please do **not** open a public GitHub issue for security reports.

We aim to acknowledge reports within 72 hours and ship a fix or clarification within 2 weeks for confirmed issues.

### What to include in a report

- The specific skill file affected (for example `skills/write-content/SKILL.md`)
- The exact prompt, sequence of actions, or agent behavior that causes the concern
- The agent environment where you observed the issue (Claude Code, Claude Desktop, Cursor, etc.) and the model version if known
- A minimal reproduction if available

## Good-faith policy

We take security concerns seriously and will work with reporters in good faith. Reporters who disclose privately and give us time to respond will be credited in the fix commit (with permission) and mentioned in the repo's changelog.

Note that this repository is licensed under the [Apache License 2.0](LICENSE) and provided without warranty. The license disclaims warranties of any kind, but that does not change our commitment to addressing security issues promptly.
