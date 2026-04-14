# Japanese Locale Overrides for Link Building (日本語)

Load this file when building links for a Japanese-language site. Everything below is additive on top of the 9 tactic playbooks in `references/tactics/` — the phase classification stays the same, but the target platforms, directories, and authority sources change materially for Japanese markets.

Credit: Japanese platform list and authority sources contributed by [Shin Kitagawa](https://github.com/kitasinkita).

## The Japanese linking ecosystem in two sentences

The US/EU tactics (Wikidata, Crunchbase, Chamber of Commerce, HARO) still work but they don't cover most of the Japanese referring-domain opportunity. Japan has its own dominant platforms for entity stacking, press distribution, technical content syndication, and directory listings — miss them and you ship a foundation-phase link profile that reads "foreign site."

## Entity stacking — Japanese-specific additions

Add these to the Week 2 entity stacking pass from `references/tactics/entity-stacking.md`:

**Content and technical publishing (high-value for tech/SaaS/AI businesses):**

| Platform | Type | Why it matters |
|---|---|---|
| note | 総合コンテンツプラットフォーム | High domain authority, broad reach, indexed fast |
| Qiita | 技術情報共有 | The standard for developer content in Japan. Essential if your audience is engineers. |
| Zenn | 技術情報共有 | Newer developer community, growing authority, GitHub-flavored |
| Wantedly | 企業プロフィール・採用 | Company profile + culture page. Dofollow company URL. |
| Eight (Sansan) | ビジネスSNS | Japanese LinkedIn equivalent. Company profile page. |

**Editorial and business media:**

| Platform | Type | Why it matters |
|---|---|---|
| NewsPicks | ニュースキュレーション + コメント | Business readers, expert-commenter model. Picks drive traffic. |
| はてなブログ | ブログ | Publish content; はてなブックマーク signals can boost indexing |

**Press distribution (Japan-specific, high leverage for news media and product launches):**

| Platform | Type | Notes |
|---|---|---|
| PR TIMES | プレスリリース配信 | The dominant Japanese press release distribution service. Releases get picked up by Yahoo! News, SmartNews, and downstream news sites regularly. |
| ValuePress | プレスリリース配信 | Alternative PR distribution. Useful secondary channel. |

Execution note: PR TIMES press releases that feature in Yahoo! News or SmartNews typically earn 10-30 incidental news-site backlinks from the pickup chain. One well-crafted PR TIMES release can do the work of 10 cold outreach emails for foundation-phase sites.

## Citations and directories — Japanese equivalents

The English tactic-02 playbook (`references/tactics/citations-directories.md`) targets US/EU directory patterns. For Japanese sites, replace or supplement with:

**General directories:**
- **iタウンページ** — NTT's business directory. Free, high authority, dofollow. Foundation-phase mandatory.
- **エキテン** — Local business reviews + profile. Strong for service businesses.
- **マピオン** — Maps and business listings.

**Government registries (free, government-issued authority):**
- **法人番号公表サイト** — National Tax Agency's company registry. Free listing for any registered Japanese corporation. Government-issued authority signal.
- **e-Gov 法人情報** — Cabinet Office integrated business information portal.

**Media and news syndication partnerships** (pursue after foundation links are in place):
- **Yahoo! News** — distribution partner program. Hard to get into but the highest-authority news syndication in Japan.
- **SmartNews** — news aggregator distribution partner. Easier bar than Yahoo! News.
- **Gunosy** — news aggregator distribution partner.

**Professional and industry bodies:**
- **日本新聞協会** — Japan Newspaper Publishers Association. Relevant for news-media sites.
- **JPNIC (日本ネットワークインフォメーションセンター)** — for tech/infrastructure companies.

## Japanese authority sources (for citation and guest posting pitches)

When pitching guest posts, citing research, or establishing topical authority, prefer these Japanese institutional sources over generic English ones:

| Category | Primary sources |
|---|---|
| Tech and digital policy | 総務省, 経済産業省, デジタル庁 |
| Cybersecurity | IPA (情報処理推進機構), NICT, JPCERT/CC |
| AI and data regulation | AI戦略会議, 個人情報保護委員会 |
| Industry research data | 矢野経済研究所, IDC Japan, MM総研 |
| Standards bodies | JIS (日本産業規格), JIPDEC |
| Academic and publication | 国立情報学研究所 (NII), CiNii (academic papers index) |

Linking from your content out to these sources is a trust signal; getting linked back from them is a DR 70+ win per domain.

## Anchor text safety — Japanese considerations

Japanese anchor text distribution follows the same ratio rules from `references/anchor-text-safety-guide.md` (branded 40-50%, naked URL 15-20%, generic 15-20%, partial 10-15%, exact ≤5%). But some Japanese-specific nuances:

- **Notation variants count as separate anchors**: 「AI」 and 「エーアイ」 are not the same anchor from Google's perspective. If you're building links with 「AI」 and your site targets 「エーアイ」 as primary, the anchor equity is split.
- **Japanese exact-match anchors are less spammy-looking in the native market**. 「SEO対策」 as an anchor is common on legitimate Japanese sites in a way that "SEO services" would look manipulative in English. The same 5% ceiling still applies, but interpret "exact match" relative to Japanese norms.
- **Generic anchors have Japanese equivalents** you'll see in the wild: 「こちら」 「詳細はこちら」 「続きを読む」 — all generic, all fine in small volumes.

## Phase classification — Japanese-market adjustments

The phase classification tree in `references/phase-classification-tree.md` uses site age, indexed content, and brand presence as signals. For Japanese sites, add these:

- **Is there a note account with the business name?** Foundation-phase Japanese sites without note presence are under-stacked.
- **Is the business listed on 法人番号公表サイト?** Corporate entities without a government registry listing lose a free authority signal.
- **Is there a Yahoo! JAPAN entry in the brand search?** Yahoo! JAPAN branded results are a separate visibility layer from Google — a missing Yahoo! presence signals foundation-phase even for sites that look established on Google.

## Link velocity — Japanese seasonality

Japan has sharper content-cycle seasonality than most Western markets:

- **年度末 (March 31) and 年度始め (April 1)** drive press release and hiring-content spikes. Publishing link-worthy content or PR TIMES releases in these windows gets more pickup than off-cycle.
- **お盆 (mid-August) and 年末年始 (late Dec–early Jan)** are publication dead zones. Link velocity drops, and so do editorial responses. Plan outreach and announcements around these.
- **10月 (start of second half fiscal year)** drives another press release cycle for corporate announcements.

These cycles matter because sudden link velocity changes across the Japanese market can be misread by link-velocity monitoring (`references/link-velocity-redflags.md`) — adjust the baseline for the calendar.

## Cross-surface note

This file is self-contained and doesn't reference the `_cjk-common` or `_news-common` pattern from the original PR. Every link-building rule for Japanese-market sites lives here, one level deep from `SKILL.md`. Keep it that way when you edit.
