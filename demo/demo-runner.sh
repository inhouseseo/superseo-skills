#!/bin/bash
# Demo runner. Replays a real captured page-audit run. The audit content
# is a real run of the page-audit skill against backlinko.com/title-tags
# (full output in audit-output.md, 354 lines). Paced for video.
#
# Order is engineered so the GIF's first impression frame lands on the
# scorecard, not a loading spinner.

set -e

B="\033[1m"; D="\033[2m"; R="\033[0m"
GREEN="\033[92m"; CYAN="\033[96m"; YELLOW="\033[93m"
MAGENTA="\033[95m"; GREY="\033[90m"; RED="\033[91m"
BG_RED="\033[41m"; BG_GRN="\033[42m"; BG_YEL="\033[43m"

# ───────── SLIDE 1: super-fast skill activation ─────────
clear
printf "${B}${MAGENTA}superseo-skills${R} ${D}page-audit${R} ${GREY}·${R} a real URL\n"
printf "${GREY}─────────────────────────────────────────────────────────────${R}\n\n"
sleep 0.3

printf "${B}> ${R}"
sleep 0.2
msg="run page-audit on backlinko.com/title-tags"
for ((i=0; i<${#msg}; i++)); do
  printf "%s" "${msg:$i:1}"
  sleep 0.018
done
printf "\n\n"
sleep 0.25

printf "${CYAN}● ${R}Loading skill ${B}page-audit${R}\n"
sleep 0.18
printf "${CYAN}● ${R}Fetching ${D}backlinko.com/hub/seo/title-tag${R} ${RED}→ 404${R}\n"
sleep 0.45
printf "${CYAN}● ${R}Finding canonical: ${B}backlinko.com/title-tags${R} ${GREEN}✓${R}\n"
sleep 0.35
printf "${CYAN}● ${R}Googling \"title tag\" · reading top 10 SERP\n"
sleep 0.35
printf "${CYAN}● ${R}Reading top 3 competitors:\n"
sleep 0.10
printf "    ${GREY}1.${R} semrush.com  ${GREY}2.${R} ahrefs.com  ${GREY}3.${R} developers.google.com\n"
sleep 0.30
printf "${CYAN}● ${R}Running 7-dimension audit ${GREY}(POP · Info Gain · E-E-A-T · Semantic)${R}\n"
sleep 1.4

# ───────── SLIDE 2: HERO. scorecard with big number ─────────
clear
printf "${B}${MAGENTA}page-audit${R} ${GREY}·${R} ${B}backlinko.com/title-tags${R}\n"
printf "${GREY}─────────────────────────────────────────────────────────────${R}\n\n"

printf "  ${B}SCORECARD${R}                                  ${B}${YELLOW}43${R}${B} / 70${R}  ${YELLOW}■■■■■${R}${GREY}■■${R}\n"
printf "  ${GREY}┌──────────────────────────────────────┬──────┬─────────┐${R}\n"
printf "  ${GREY}│${R} 1. Information Gain & Originality    ${GREY}│${R} ${BG_YEL}${B} 6/10 ${R} ${GREY}│${R} ${YELLOW}YELLOW${R} ${GREY}│${R}\n"
printf "  ${GREY}│${R} ${B}2. Semantic Depth & Completeness${R}     ${GREY}│${R} ${BG_RED}${B} 6/10 ${R} ${GREY}│${R} ${RED}${B} RED  ${R} ${GREY}│${R}\n"
printf "  ${GREY}│${R} 3. E-E-A-T Signals                   ${GREY}│${R} ${BG_YEL}${B} 6/10 ${R} ${GREY}│${R} ${YELLOW}YELLOW${R} ${GREY}│${R}\n"
printf "  ${GREY}│${R} 4. Structure, Readability, TTV       ${GREY}│${R} ${BG_GRN}${B} 7/10 ${R} ${GREY}│${R} ${GREEN}${B}GREEN ${R} ${GREY}│${R}\n"
printf "  ${GREY}│${R} 5. Technical On-Page SEO             ${GREY}│${R} ${BG_GRN}${B} 7/10 ${R} ${GREY}│${R} ${YELLOW}YELLOW${R} ${GREY}│${R}\n"
printf "  ${GREY}│${R} 6. Engagement & Discoverability      ${GREY}│${R} ${BG_YEL}${B} 6/10 ${R} ${GREY}│${R} ${YELLOW}YELLOW${R} ${GREY}│${R}\n"
printf "  ${GREY}│${R} 7. Conversion & Business Impact      ${GREY}│${R} ${BG_RED}${B} 5/10 ${R} ${GREY}│${R} ${YELLOW}YELLOW${R} ${GREY}│${R}\n"
printf "  ${GREY}└──────────────────────────────────────┴──────┴─────────┘${R}\n"
sleep 0.6

printf "\n  ${B}TL;DR${R}  Ranks on domain strength, not content superiority.\n"
printf "         ${RED}#1 threat:${R}  zero mention of AI Overviews / ChatGPT.\n"
printf "         ${YELLOW}#1 unused:${R}  Backlinko's own 11.8M-result study, buried.\n"
sleep 4.6

# ───────── SLIDE 3: competitive position ─────────
clear
printf "${B}${MAGENTA}page-audit${R} ${GREY}·${R} ${B}backlinko.com/title-tags${R}\n"
printf "${GREY}─────────────────────────────────────────────────────────────${R}\n\n"

printf "  ${B}TOP 3 COMPETITORS${R} ${GREY}(fetched + read end-to-end)${R}\n"
printf "  ${GREY}┌─────────────┬───────┬───────────────────────────────┐${R}\n"
printf "  ${GREY}│${R} ${B}Competitor${R}  ${GREY}│${R} ${B}Words${R} ${GREY}│${R} ${B}Unique weapon${R}                 ${GREY}│${R}\n"
printf "  ${GREY}├─────────────┼───────┼───────────────────────────────┤${R}\n"
printf "  ${GREY}│${R} Semrush  #1 ${GREY}│${R} 2,700 ${GREY}│${R} ${CYAN}AI Overviews + ChatGPT angle${R}  ${GREY}│${R}\n"
printf "  ${GREY}│${R} Ahrefs   #2 ${GREY}│${R} 3,300 ${GREY}│${R} ${CYAN}1M-domain dataset (68.54%%)${R}    ${GREY}│${R}\n"
printf "  ${GREY}│${R} Google   #3 ${GREY}│${R} 2,200 ${GREY}│${R} ${CYAN}Primary-source authority${R}      ${GREY}│${R}\n"
printf "  ${GREY}└─────────────┴───────┴───────────────────────────────┘${R}\n\n"
sleep 1.3

printf "  ${B}TOP 5 QUICK WINS${R}\n"
sleep 0.10
printf "  ${GREEN}1.${R} Rewrite meta description ${GREY}(152ch, draft below)${R}\n"
sleep 0.16
printf "  ${GREEN}2.${R} Add 45-word snippet definition under \"What Is a Title Tag?\"\n"
sleep 0.16
printf "  ${GREEN}3.${R} Ship FAQPage schema on the 3 strongest Q&A pairs\n"
sleep 0.16
printf "  ${GREEN}4.${R} Differentiate the H1 from the title tag ${GREY}(violates own rule)${R}\n"
sleep 0.16
printf "  ${GREEN}5.${R} Promote the 11.8M-result study to its own H2 + chart\n"
sleep 3.0

# ───────── SLIDE 4: rewritten title + meta ─────────
clear
printf "${B}${MAGENTA}page-audit${R} ${GREY}·${R} ${B}backlinko.com/title-tags${R}\n"
printf "${GREY}─────────────────────────────────────────────────────────────${R}\n\n"

printf "  ${B}REWRITTEN TITLE TAG${R}\n"
printf "  ${GREY}CURRENT${R}  ${D}Title Tags: How to Write Them (+ Steal Our Formulas)${R}  ${GREY}50ch${R}\n"
sleep 0.7
printf "  ${GREEN}${B}REWRITE${R}  ${B}Title Tags: Write Them to Rank in Google & AI Search${R}  ${GREY}52ch${R}\n"
printf "           ${CYAN}↑${R} only title on the SERP that mentions AI search\n"
sleep 1.8

printf "\n  ${B}REWRITTEN META DESCRIPTION${R}\n"
printf "  Title tags make or break your CTR. Learn Backlinko's 3C\n"
printf "  Framework, 6 rules, 3 proven formulas, and what 11.8M\n"
printf "  search results reveal.                                ${GREY}(132ch)${R}\n"
sleep 1.7

printf "\n  ${GREY}─────────────────────────────────────────────────────────${R}\n"
printf "  ${B}1${R} page fetch  ${GREY}·${R}  ${B}2${R} SERP queries  ${GREY}·${R}  ${B}4${R} competitor reads\n"
printf "  ${GREEN}✓${R} no GSC  ${GREEN}✓${R} no exports  ${GREEN}✓${R} no paste-in data\n"
printf "  ${GREY}full audit (354 lines) → demo/audit-output.md${R}\n"
sleep 3.0
