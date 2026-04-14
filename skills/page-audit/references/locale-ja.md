# Japanese Locale Overrides for Page Audit (日本語)

Load this file when auditing a Japanese-language page. Everything below is additive on top of the 7-dimension audit in `SKILL.md` — character count rules replace the English defaults, and the E-E-A-T + Discover + engagement dimensions get Japanese-specific scoring notes.

Credit: Japanese SEO ecosystem and E-E-A-T conventions contributed by [Shin Kitagawa](https://github.com/kitasinkita).

## Character count thresholds (Dimension 5: Technical On-Page SEO)

Japanese prose is denser than English and Google truncates by pixel width. Override the English character counts as follows when scoring the audited page:

| Element | English default | Japanese override |
|---|---|---|
| Title tag | Under 60 characters / 580px | **28-32 full-width characters** |
| Meta description | Under 140 characters | **70-80 full-width characters** (mobile shows ~50) |
| H1 | No explicit limit | 40 full-width characters max |
| Featured snippet answer | 40-60 words | **80-120 characters** |
| "First 100 words" rule | First 100 words | **First 200-300 characters** |
| Internal links per 1,000 words | 3-5 | **2-3 per 1,000 characters** |

If the audited page has a title over 32 full-width characters, it's being truncated in Japanese SERPs regardless of how well it scores against English rules. Flag as a Dimension 5 finding with specific truncation estimate.

**Yahoo! News constraint**: if the audited site is a Yahoo! News distribution partner (check footer, meta tags, or publisher info), the syndicated title is capped at **13 full-width characters** — this is a separate constraint from the canonical `<title>` and must be evaluated independently.

## Dimension 3: E-E-A-T — Japanese conventions

Japanese E-E-A-T reads differently. When scoring the four E-E-A-T pillars on a Japanese page, recalibrate:

### Experience (most underrated factor — Japanese edition)
- Look for 取材 (on-the-ground reporting), 事例紹介 (case studies with named companies and dates), 実測 (measured-first-hand data)
- First-person 「筆者が～」 / 「実際に試した」 framings are stronger signals than third-person summaries
- Stock photos and generic illustrations are negative signals — original photos/screenshots/diagrams are positive

### Expertise
- Credentials format: 「○○大学教授」 「元○○省」 — title and affiliation are the primary signal, often more than a detailed bio
- Citations of 総務省, 経済産業省, IPA, NICT, 矢野経済研究所, IDC Japan carry materially more trust weight than generic "industry expert" framing
- Check: does the author have a verifiable specialty? A 専門分野 (beat) line is a strong signal on Japanese news sites

### Authoritativeness (Japanese reversal)
- **Corporate brand often outweighs personal brand in Japan.** The publication's reputation (日経, NHK, IT Media, 朝日, 東洋経済) carries authority on its own. A named author on a respected publication = strong signal even without a verifiable LinkedIn.
- Check for 運営会社 (company info) pages, 編集方針 (editorial policy), and 特定商取引法 disclosures — these are Japanese trust-page table stakes
- Linked topical cluster: does this page sit inside a 特集 (feature section) or 連載 (series)? That's equivalent to the English "part of a topical cluster" signal

### Trustworthiness
- 免責事項 (disclaimer) page present and linked?
- 訂正 (corrections) policy visible?
- 広告表示 (advertising disclosure) for affiliate/sponsored content? Japan has strict 景品表示法 rules — missing disclosure on a commercial page is a strong negative signal
- Update timestamps use 最終更新：YYYY年MM月DD日 format; if missing on time-sensitive content, flag

**For YMYL Japanese content** (medical, legal, financial): the bar is higher. Look for 監修 (supervising editor) credits with institutional affiliation, not just an author byline. 「医師監修」 「弁護士監修」 are the minimum for YMYL pages on respectable Japanese sites.

## Dimension 6: Engagement and Discoverability — Japanese specifics

**Google Discover is disproportionately important in Japan.** High smartphone penetration + commuter reading habits make Discover a major traffic source, especially for news and editorial content. Check:

- OGP image ≥ 1200x630px, original, visually compelling (not a stock photo)
- `<meta name="robots" content="max-image-preview:large">` present — this is a Discover hard requirement
- NewsArticle schema with `datePublished` and `dateModified` (if news media)
- Headline emotionally engaging but not clickbait — Discover penalizes clickbait harder than it penalizes any other headline style

**Yahoo! JAPAN share check**: Yahoo! JAPAN holds ~15% of Japanese search and uses Google's index with its own filtering + Twitter/X ingestion via Yahoo! Realtime Search. If the audited page is in a topic where social signals matter, evaluate the Twitter/X presence of its URL (shares, linked discussions).

**はてなブックマーク potential**: a uniquely Japanese social-bookmarking signal. A page on the はてブ front page typically correlates with a visible Google ranking bump. Does the page have a shareable title/hook that would play well on はてブ (tech readers, opinion, counter-narratives)?

**SmartNews / NewsPicks / Yahoo! News syndication eligibility**: for news-media sites, evaluate whether the article is formatted for these distribution partners (clean HTML, short lede, consistent 見出し structure).

## Dimension 7: Conversion and Business Impact — Japanese news caveat

The default Dimension 7 scoring assumes commercial conversion goals. For Japanese news media and editorial content, conversion is the wrong frame:

- Newsletter subscriptions (メルマガ) as primary KPI instead of purchase/lead
- Related article recommendations (関連記事) as engagement driver
- SNS share buttons prominent and functional (Twitter/X, LINE, Facebook in that rough order for Japanese readers)
- Return-visit optimization: 連載 / 特集 links drive second visits
- Discover / Google News impressions potential as a success metric, not a secondary concern

If the audited page is a 広告記事 (sponsored content), check for proper 広告 / PR labeling per 景品表示法. Missing disclosure is both a Dimension 3 trust hit and a regulatory risk.

## Semantic fingerprint — Japanese nuance

When running Phase 1B (Semantic Context Analysis) on a Japanese page, add notation variants to the analysis:

- Does the page cover all relevant notation variants of the primary keyword? (カタカナ / ひらがな / 漢字 / ローマ字)
- If the SERP shows different clusters for different notation variants, the page needs to pick one primary and weave 1-2 others in
- Example: 「人工知能」 and 「AI」 often map to different search intents — academic/policy vs tech/business. Missing the variant your SERP actually ranks for is a Dimension 2 gap.

## Business context note

Japanese sites often have distinct patterns that English audit rules miss. When asking the user for business context before the audit, add these adaptations:

- What is the site's 運営体制 (operating structure)? (editorial team / solo / corporate)
- Does it syndicate to Yahoo! News, SmartNews, or NewsPicks?
- Is there an existing 編集方針 (editorial policy) or author byline convention?
- What regulatory constraints apply? (YMYL sectors have 景品表示法 + sector-specific rules)

## Cross-surface note

This file is self-contained and doesn't reference sibling locale files. Keep it that way — every audit-relevant Japanese rule should live here, one level deep from `SKILL.md`.
