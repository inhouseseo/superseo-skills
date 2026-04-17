# Japanese Locale Overrides (日本語)

Load this file when writing SEO content for Japanese-language markets. Everything below is additive on top of the English rules in `SKILL.md` — character counts, anti-slop vocabulary, voice rules, and content-type guidance all override their English defaults for Japanese targets.

Credit: Japanese anti-slop rules, notation variant framework, and ecosystem data contributed by [Shin Kitagawa](https://github.com/kitasinkita).

## Character counts

Google truncates by pixel width (~580px title, ~920px meta description). CJK characters are roughly 2x wider than Latin characters, so the English count rules don't carry over.

| Element | English default | Japanese override |
|---|---|---|
| Title tag | 50-60 chars | **28-32 full-width characters** |
| Meta description | 150-160 chars | **70-80 full-width characters** (~50 on mobile) |
| H1 | No hard limit | 40 full-width characters max (avoid mobile line-break) |
| Featured snippet (paragraph) | 40-60 words | 80-120 characters |
| Featured snippet (list item) | One sentence | 30-50 characters per item |
| "First 100 words" rule | First 100 words | **First 200-300 characters** |
| Internal links per 1,000 words | 3-5 | **2-3 per 1,000 characters** |

Japanese prose is ~2x denser than English (kanji compounds carry a lot of meaning per character), so the SKILL.md's word-count guidance translates like this:

| English intent band | Japanese character band |
|---|---|
| 500-1,000 words (short, transactional) | 1,000-2,000 characters |
| 800-1,500 words (news, landing) | 1,600-3,000 characters |
| 1,500-3,000 words (informational) | 3,000-6,000 characters |
| 2,000-4,000 words (commercial) | 4,000-8,000 characters |
| 3,000+ words (pillar, ultimate guide) | 6,000+ characters |

Rule stays the same: match the average length of the top 5 ranking results + 10%. Convert SERP samples to characters, don't pad to a word-count target.

## Anti-slop — Japanese AI tells

These patterns are distinct from English AI tells. Japanese LLM output has its own fingerprint — apply these rules on top of the English `anti-slop-ruleset.md`.

### Tier 1 (always remove — highest-signal Japanese AI tells)

**Sentence-ending patterns:**
- 「～と言えるでしょう」「～ではないでしょうか」
- 「～について詳しく見ていきましょう」「～を見ていきましょう」
- 「～について解説します」「～をご紹介します」
- 「～が求められています」「～が期待されています」

**Filler modifiers:**
- 「さまざまな」(use specific examples instead)
- 「幅広い」「多角的な」「包括的な」「網羅的に」
- 「注目を集めています」「話題となっています」
- 「急速に進化しています」「ますます重要になっています」
- 「大きな注目を集めている」

**Opening patterns — never start an article or section with these:**
- 「近年、」「昨今、」
- 「現代社会において」「AI技術の進化に伴い」
- 「デジタル化が進む中で」「グローバル化が進む現代において」

### Tier 2 (flag when clustered — 3+ per article = AI signal)

- 「また、」「さらに、」「加えて、」as paragraph starters more than 2x
- 「一方で、」「つまり、」more than 2x
- 「実際に」more than 3x
- 「重要なのは」「ポイントは」「興味深いことに」

### Tier 3 (structural)

- **Uniform paragraph endings**: every paragraph ending with 「～です。」 or 「～ます。」 — mix with 「だ。」 「である。」 or fragment endings
- **Register drift**: pick one register (だ/である or です/ます) and maintain it across the article
- **Topic-marker repetition**: every sentence starting with 「～は」 — vary the sentence structure
- **Connector chain**: 「まず～。次に～。そして～。最後に～。」 — break the pattern

### Replacements (AI → human)

| AI Japanese | Human alternative |
|---|---|
| さまざまな | [list specific examples] |
| 活用する | 使う |
| 推進する | 進める |
| 実施する | やる、行う |
| 検討する | 考える |
| 注目を集めている | [use a concrete number or fact] |
| 重要な役割を果たす | [specify what it actually does] |
| ～と言えるでしょう | ～だ。/ ～である。 |

## Voice and register

- The English "use contractions" rule doesn't translate. Instead, **avoid unnecessary 漢語 (Sino-Japanese compounds) when 和語 (native Japanese) is clearer**:
  - 「実施する」→「やる」「行う」
  - 「検討する」→「考える」
  - 「活用する」→「使う」
- **Register choice**: match the target site's existing tone and keep it consistent.
  - **だ/である調**: news, analysis, academic, thought leadership
  - **です/ます調**: blog posts, how-to guides, customer-facing content
- **Bar conversation test (Japanese edition)**: would you say this to a colleague at 居酒屋? If not, it's too stiff. 「当該施策の実施により顕著な改善が認められた」→「やってみたら、はっきり数字が変わった」
- **Don't overuse 敬語 in news or analysis**. Reserve polite forms for direct quotes and customer-facing copy.

## Notation variants (表記ゆれ対策)

Japanese has four writing systems, which fragments keyword search volume. For every target keyword, identify all variants and decide which is primary:

| Variant type | Example |
|---|---|
| カタカナ | エーアイ、エージェント |
| ひらがな | えーあい |
| 漢字 | 人工知能 |
| ローマ字 / 英語 | AI, agent |
| Space variants | 「AI エージェント」 vs 「AIエージェント」 |
| Long vowel marks | 「サーバー」 vs 「サーバ」 |

**How to use this in the brief:**
1. List every variant you find in Google's autocomplete and the top 10 results
2. Pick the primary based on apparent search volume (usually the most-cited form in the SERP)
3. Include 1-2 additional variants naturally in the body for coverage
4. Note which variants map to different search intents — e.g., 「人工知能」 skews academic/policy, 「AI」 skews tech/business

Different notation often reveals different clusters. Don't assume Google treats them as equivalent.

## Content-type overrides — news media (Japanese)

Japanese news content has specific structural conventions on top of the English news-article template:

- **リード文 (lead)**: 5W1H summarized in the first 1-2 sentences (40-60 characters total). Most important fact first.
- **本文 register**: default to だ/である調. です/ます調 reads as blog-style and loses news credibility.
- **記者クレジット**: 「取材・文：○○」at the article end, not a Western-style author bio box.
- **Yahoo! News constraint**: if the site is a Yahoo! News distribution partner, the syndicated title is capped at **13 full-width characters** — the tightest constraint in Japanese publishing. Write the title for this limit from the start.
- **画像キャプション**: concise but information-dense. Alt text should describe the image specifically — do not duplicate the article title.
- **更新表示**: explicit "最終更新：YYYY年MM月DD日 HH:MM" timestamp. Append updates in chronological order.

**Japanese news H2 template** — when writing a Japanese news article, use these Japanese-literal H2 headings instead of translated English ones. The inverted-pyramid structure from the English `news-article.md` template maps one-to-one:

| English news-article.md H2 | Japanese equivalent |
|---|---|
| Key takeaways | 要点 |
| What happened | 何が起きたか |
| Why it matters | なぜ重要か |
| What to expect next | 今後の見通し |
| Background / Context | 背景・文脈 |
| FAQ | よくある質問 |

## GEO — Japanese specifics

Japanese LLM search (Google AI Overview, Perplexity Japan, ChatGPT search) has the same recency and citation-first behavior as English LLM search, plus these adjustments:

- **Answer block length**: 80-120 characters (not 40-60 words)
- **Source attribution format**: 「（出典名、年）」 — e.g., 「（Ahrefs、2026）」 「（総務省、2025）」
- **FAQ items**: each answer in 80-120 characters, FAQPage JSON-LD unchanged
- **Entity naming**: use the dominant notation variant as the primary form. Alternate variants can appear in the body for coverage but shouldn't confuse the primary entity.
- **Authority sources (high-credibility for Japanese GEO)**: 総務省, 経済産業省, デジタル庁, IPA (情報処理推進機構), NICT, JPCERT/CC, 矢野経済研究所, IDC Japan, MM総研. Cite these instead of generic "industry sources."

## Japanese SEO ecosystem — what matters beyond Google

- **Yahoo! JAPAN** (~15% of Japanese search) uses Google's index but filters differently. Yahoo! Realtime Search ingests Twitter/X, so social signals have more weight in Japan than in other markets.
- **Google Discover** is disproportionately important in Japan — high smartphone penetration makes it a major news/content traffic source. OGP images must be ≥1200x630px, `<meta name="robots" content="max-image-preview:large">` is required.
- **はてなブックマーク** is a uniquely Japanese social-bookmarking signal. A front-page entry there correlates with Google visibility gains (causal direction unclear, but the correlation is strong enough to be worth optimizing for).
- **News aggregators that matter**: Yahoo! News, SmartNews, Gunosy — all three are syndication partners worth pursuing for news-media sites.

## Japanese E-E-A-T conventions

Japanese E-E-A-T reads differently from Western E-E-A-T:

- **Corporate brand > personal brand**. In Japan, the publication's reputation usually outweighs the individual author's name. 日経, NHK, IT Media carry authority on their own.
- **Credentials format**: 「○○大学教授」 「元○○省」 — title and affiliation are the primary authority signal, often more than a detailed bio.
- **Author credit format**: 「取材・文：○○」 at the article end. Western author-bio boxes with photos feel out of place on Japanese news sites.
- **Government and industry-body citations are strong trust signals**. 総務省, IPA, NICT, university research — these carry more weight per citation than general "expert said" framing.
- **AI-assisted content transparency**: if the site uses AI in its pipeline, disclose the verification process. Fact-checking pipelines and editorial review substitute for individual author authority.

## Cross-surface note

This file is intentionally self-contained and doesn't inherit from sibling files. Everything Claude needs to write Japanese-market SEO content lives here — no multi-hop reference chains. Keep it that way when you edit.
