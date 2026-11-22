# anydaylab v1.0.2 - setups for any weekday vs the tree's weekly setups, with the 2024 split (ANYDAY_20261122_002)

Karan, 22 Nov 2026: *"Non Tuesday(weekly) setups which are better than weekly setups. Find."* - then, on FOUND+WEEKLY's smaller worst fall in ANYDAY_20261122_001: *"Go"* (search before 2024, test on 2024-26). Rules: `ANYDAY_DECLARATION.json` sha256 `8f73a261a2d7167a` (declared before any run). Picks: 32076 rows (D 15819, ENS 16257; 0 ETF rows left out), complete 32074, pooled 25831, signal days 2020-01-16 .. 2026-09-15; every price before 2024-01-01: 15712 (half A 8283, half B 7429; signal days 2020-01-16 .. 2023-12-15); signal day on or after it: 9946.

## THE DECISION - does FOUND+WEEKLY cut the worst fall in 2024-01-01 .. 2026-09-22? **DEAD**

Declared before the run. Part B searched and judged only picks whose every price is before 2024-01-01; both trees then started again with Rs 5 L a book on 2024-01-01 and ran to 2026-09-22 - days no found setup saw. Both books together (Rs 2.5 L each):

| start day | FROZEN: a year, worst fall | FOUND+WEEKLY: a year, worst fall | worst fall lower |
|---|---|---|---|
| 1 (2024-01-01) | +127.8%, 15.5% | +121.5%, 15.6% | no |
| 2 (2024-01-02) | +128.0%, 15.5% | +121.7%, 15.6% | no |
| 3 (2024-01-03) | +126.6%, 15.6% | +120.4%, 15.7% | no |
| 4 (2024-01-04) | +127.3%, 15.6% | +121.0%, 15.7% | no |
| 5 (2024-01-05) | +119.4%, 16.1% | +113.5%, 16.1% | no |
| mean | +125.8%, 15.7% | +119.7%, 15.7% | |

- Worst fall lower on all 5 start days: **no**
- A year at most 5 points under FROZEN's: **no** (FOUND+WEEKLY +119.7%, FROZEN +125.8%)
- The worst-fall cut (FROZEN's minus FOUND+WEEKLY's, mean of the 5 start days): -0.06 points. Its 95% interval over 200 paired reruns (each: a random start day of the 5 and 2% of the picks dropped at random - the same for both trees): [-0.27, +2.55], the cut above 0 in 48% of them. Above 0: **no**

CONFIRMED = all three. LEAD = the first two (FOUND+WEEKLY goes on the paper ledger beside FROZEN). DEAD = anything else.

Shown, not deciding - the same cut with history re-ordered (the two daily value paths rebuilt from 21-session blocks, the same blocks for both, 2000 draws, start day 1): -0.06 points [-1.26, +2.77], above 0 in 41% of the draws. A worst fall is one episode, so this check rarely clears 0 even when a cut is real (README: the planted crash world).

FOUND+WEEKLY = S1 S2 S3 C1 C2 C3 N1 + **F1** = mkt_d_drawdown_252 <= -0.0615472 AND niftyrealty_ret_1d > 0.0085034 AND soul_m_self_n rose (fresh exit). Found on half A before 2024-01-01.

The worst fall of each book, start day 1 (every fall's dates in `falls.csv`, the daily values in `curves.csv`):

| window | tree | D tree: worst fall, peak -> trough | ENS tree | both |
|---|---|---|---|---|
| 2024 on | FROZEN | 20.1%, 2025-11-07 -> 2026-01-23 | 20.5%, 2024-07-31 -> 2024-10-25 | 15.5%, 2025-11-14 -> 2025-12-08 |
| 2024 on | FOUND+WEEKLY | 20.1%, 2025-11-07 -> 2026-01-23 | 25.0%, 2024-07-31 -> 2024-11-22 | 15.6%, 2025-11-14 -> 2025-12-08 |
| 2021 on | FROZEN | 24.1%, 2023-01-05 -> 2023-02-24 | 29.5%, 2023-01-20 -> 2023-02-22 | 25.9%, 2023-01-20 -> 2023-02-22 |
| 2021 on | FOUND+WEEKLY | 24.1%, 2023-01-05 -> 2023-02-24 | 29.5%, 2023-01-20 -> 2023-02-22 | 26.2%, 2023-01-20 -> 2023-02-22 |

## Verdict (per trade)

| part | what | judged | BETTER than WEEKLY | TIE | WORSE |
|---|---|---:|---:|---:|---:|
| A | the twins (S1-S3, C1-C3 with a daily rolling 'bad week'), every pick | 14 | **0** | 2 | 12 |
| B | the open search: found on half A before 2024-01-01, judged once on half B before it | 5 | **1** | 4 | 0 |
| D | stratlab's two confirmed triggers, on the stocks stratlab hid from its search | 2 | **0** | 2 | 0 |

BETTER = the setup's net per trade minus WEEKLY's on the same picks and exit has a one-sided p at most 0.05 / K (Part A: K = 14, p <= 0.0036; Part B: K = 5, p <= 0.0100; Part D: K = 2, p <= 0.0250) and its 95% interval above 0. TIE = no clear difference either way. WORSE = the 95% interval below 0. TOO FEW = trades on fewer than 30 signal days (or resamples without spread): no verdict.

## The bar: WEEKLY (S1-S3, C1-C3 as the tree uses them - each pick's earliest fill)

| setup | trades | a year | net/trade at the D5 close [95%] | net/trade, fresh exit | Tuesday entries |
|---|---:|---:|---|---:|---:|
| WEEKLY (earliest of S1 S2 S3 C1 C2 C3) | 6273 | 941 | +0.97 [+0.48, +1.46] | +1.26 | 90% |
| S1 | 1218 | 183 | +1.40 [+0.76, +2.08] | +2.23 | 91% |
| S2 | 2327 | 349 | +1.43 [+0.73, +2.17] | +1.90 | 88% |
| S3 | 1709 | 256 | +1.27 [+0.65, +1.92] | +1.90 | 91% |
| C1 | 3255 | 488 | +0.97 [+0.44, +1.49] | +1.44 | 90% |
| C2 | 2896 | 435 | +1.02 [+0.39, +1.63] | +1.51 | 91% |
| C3 | 2528 | 379 | +1.12 [+0.46, +1.78] | +1.31 | 92% |
| N1 (any day) | 2704 | 406 | +0.80 [+0.23, +1.39] | +1.34 | 28% |

WEEKLY on all pooled picks: 6273 trades, +0.97 per trade [+0.48, +1.46] at the D5 close.

## Part A - the twins (declared; nothing searched)

Each weekly setup with `w_ret_13w fell` swapped for a twin read at every close: **tw13** = the 13-week return (close / close 65 sessions before - 1) is lower than it was 5 sessions before; **tw5** = the last 5 sessions fell (close / close 5 sessions before - 1 is below 0). Exit: the D5 close (the originals' exit). Every pooled pick.

| twin | trades | a year | net/trade [95%] | Tuesday entries | vs WEEKLY [95%] | p | verdict | vs its weekly original [95%] |
|---|---:|---:|---|---:|---|---:|---|---|
| S1-tw13 | 3870 | 581 | +0.45 [+0.12, +0.79] | 27% | -0.51 [-0.91, -0.11] | 0.9936 | **WORSE** | -0.95 [-1.43, -0.46] |
| S2-tw13 | 8907 | 1337 | +0.66 [+0.24, +1.11] | 20% | -0.31 [-0.65, +0.03] | 0.9662 | **TIE** | -0.78 [-1.27, -0.27] |
| S3-tw13 | 5335 | 801 | +0.42 [+0.04, +0.80] | 25% | -0.54 [-0.87, -0.23] | 0.9996 | **WORSE** | -0.85 [-1.30, -0.39] |
| C1-tw13 | 8983 | 1348 | +0.31 [-0.03, +0.67] | 25% | -0.65 [-0.99, -0.32] | 0.9999 | **WORSE** | -0.66 [-1.06, -0.25] |
| C2-tw13 | 7766 | 1165 | +0.37 [-0.00, +0.77] | 26% | -0.60 [-0.91, -0.28] | 0.9999 | **WORSE** | -0.65 [-1.10, -0.22] |
| C3-tw13 | 8621 | 1294 | +0.48 [+0.02, +0.94] | 24% | -0.48 [-0.83, -0.13] | 0.9973 | **WORSE** | -0.63 [-1.07, -0.21] |
| tw13 lane (earliest of the six) | 15675 | 2352 | +0.45 [+0.06, +0.83] | 22% | -0.52 [-0.83, -0.21] | 0.9996 | **WORSE** | - |
| S1-tw5 | 4145 | 622 | +0.41 [+0.10, +0.74] | 27% | -0.55 [-0.95, -0.15] | 0.9966 | **WORSE** | -0.99 [-1.47, -0.50] |
| S2-tw5 | 8882 | 1333 | +0.66 [+0.21, +1.13] | 20% | -0.31 [-0.64, +0.03] | 0.9667 | **TIE** | -0.78 [-1.26, -0.30] |
| S3-tw5 | 5702 | 856 | +0.42 [+0.04, +0.81] | 25% | -0.55 [-0.86, -0.22] | 0.9995 | **WORSE** | -0.85 [-1.31, -0.39] |
| C1-tw5 | 9718 | 1458 | +0.27 [-0.06, +0.61] | 25% | -0.70 [-1.03, -0.36] | 1.0000 | **WORSE** | -0.70 [-1.10, -0.29] |
| C2-tw5 | 8303 | 1246 | +0.31 [-0.06, +0.69] | 26% | -0.65 [-0.97, -0.33] | 1.0000 | **WORSE** | -0.71 [-1.15, -0.27] |
| C3-tw5 | 8182 | 1228 | +0.52 [+0.01, +1.01] | 25% | -0.44 [-0.78, -0.10] | 0.9947 | **WORSE** | -0.59 [-1.03, -0.17] |
| tw5 lane (earliest of the six) | 15605 | 2342 | +0.47 [+0.05, +0.87] | 22% | -0.50 [-0.81, -0.19] | 0.9993 | **WORSE** | - |

A twin's conditions: its weekly original's, with the weekly one swapped (see `twins.csv`).

## Part B - the open search (before 2024-01-01 only)

820 conditions (201 features x 4 + the twins' 'below 0' + 14 price conditions); 11 features left out as weekly or weekday-bound (`excluded.csv`). Searched: 8283 pooled picks of half A whose every price is before 2024-01-01; hidden: 7429 of half B, the same days. The thirds' cut-offs: half A before 2024-01-01.

Month-bound inputs (kept in the search, named here): soul_m_self_n (99% of its changes). Their changes fall on a month's first session - Soul's memory is rebuilt once a month, so 'soul_m_self_n rose' means the session before the entry was a month's first: the entry is the month's 2nd session. 'Month-start entries' = a setup's entries in a month's first 3 sessions (about 14% if a setup ignored the month; `bound.csv` has every input).

### d5 (sold at the pick's D5 close)

Screened: 815 singles, 5000 pairs kept, 5000 triples kept; 255 checked for every condition earning its place; 60 finalists, 0 qualify. WEEKLY on half A: +1.17 per trade; on half B: +0.79.

| # | setup | half A: trades a year, net [95%] | half B: trades, net [95%] | half B vs WEEKLY [95%] | p | Tuesday share | month-start entries | verdict | adds nothing on half B |
|---|---|---|---|---|---:|---:|---:|---|---|
| - | no rule qualified on half A | | | | | | | | |

### fresh (sold 4 sessions after the entry)

Screened: 815 singles, 5000 pairs kept, 5000 triples kept; 265 checked for every condition earning its place; 60 finalists, 16 qualify. WEEKLY on half A: +1.30 per trade; on half B: +1.17.

| # | setup | half A: trades a year, net [95%] | half B: trades, net [95%] | half B vs WEEKLY [95%] | p | Tuesday share | month-start entries | verdict | adds nothing on half B |
|---|---|---|---|---|---:|---:|---:|---|---|
| 1 | d_dist_from_20h <= -3.11666 AND d_mdi14_rrank20 <= 0.35 AND soul_m_self_n rose | 25, +9.38 [+4.17, +13.32] | 87, +6.00 [+0.72, +9.81] | +4.84 [-0.23, +8.27] | 0.0138 | 28% | 100% | **TIE** | d_dist_from_20h <= -3.11666; soul_m_self_n rose |
| 2 | d_atr_pct > 5.22275 AND mkt_d_rsi14 > 62.4493 AND soul_m_self_n rose | 31, +8.28 [+3.96, +12.15] | 101, +4.81 [+1.41, +9.97] | +3.65 [+0.11, +8.87] | 0.0549 | 16% | 98% | **TIE** | d_atr_pct > 5.22275; mkt_d_rsi14 > 62.4493 |
| 3 | mkt_d_drawdown_252 <= -0.0615472 AND niftyrealty_ret_1d > 0.0085034 AND soul_m_self_n rose | 59, +7.21 [+3.96, +10.90] | 201, +5.95 [+3.43, +9.48] | +4.78 [+1.84, +8.36] | 0.0025 | 17% | 99% | **BETTER** | none |
| 4 | x_rank_d_ema20_angle_deg <= 0.15724 AND nifty500_ret_1d <= -0.00168932 AND niftyfinservice_ret_1d > 0.0055567 | 36, +7.82 [+3.66, +10.10] | 123, +6.28 [+0.94, +10.22] | +5.11 [-0.17, +9.23] | 0.0166 | 45% | 0% | **TIE** | nifty500_ret_1d <= -0.00168932 |
| 5 | d_donch_pos_20 <= 0.29231 AND d_mdi14_rrank10 <= 0.3 AND soul_m_self_n rose | 36, +8.14 [+3.23, +11.59] | 119, +4.24 [-1.17, +8.83] | +3.08 [-2.14, +7.23] | 0.1038 | 26% | 100% | **TIE** | d_donch_pos_20 <= 0.29231; d_mdi14_rrank10 <= 0.3; soul_m_self_n rose |

### The judged setups after 2024-01-01 (every stock; never searched; descriptive)

9946 pooled picks with a signal day on or after 2024-01-01. WEEKLY there: +0.94 per trade at the D5 close (the weekly setups were chosen on every day, which favours WEEKLY).

| id | setup | exit | trades | net/trade [95%] | vs WEEKLY [95%] | month-start entries |
|---|---|---|---:|---|---|---:|
| - | d_dist_from_20h <= -3.11666 AND d_mdi14_rrank20 <= 0.35 AND soul_m_self_n rose | fresh | 133 | +1.20 [-2.89, +5.17] | -0.10 [-3.99, +3.63] | 100% |
| - | d_atr_pct > 5.22275 AND mkt_d_rsi14 > 62.4493 AND soul_m_self_n rose | fresh | 194 | +0.43 [-2.76, +3.98] | -0.87 [-4.09, +2.80] | 99% |
| F1 | mkt_d_drawdown_252 <= -0.0615472 AND niftyrealty_ret_1d > 0.0085034 AND soul_m_self_n rose | fresh | 465 | +3.97 [+0.45, +7.61] | +2.67 [-0.67, +6.15] | 100% |
| - | x_rank_d_ema20_angle_deg <= 0.15724 AND nifty500_ret_1d <= -0.00168932 AND niftyfinservice_ret_1d > 0.0055567 | fresh | 83 | +3.53 [-0.52, +4.62] | +2.23 [-2.17, +3.70] | 0% |
| - | d_donch_pos_20 <= 0.29231 AND d_mdi14_rrank10 <= 0.3 AND soul_m_self_n rose | fresh | 216 | +2.21 [-0.65, +4.95] | +0.91 [-1.94, +3.62] | 100% |

## Part D - stratlab's confirmed triggers (STRATLAB_20261122_001)

Declared before this run. Judged on the 12996 pooled picks of the stocks stratlab hid from its own search (sha256('stratlab-v1|SYMBOL') odd), against WEEKLY on those picks (+0.91 per trade), sold at the D5 close. 'Fell twice' = it fell at the close before the entry and at the close before that.

| setup | conditions | trades (days) | net/trade [95%] | fresh exit | Tuesday entries | vs WEEKLY [95%] | p | verdict | every pick: net, vs WEEKLY |
|---|---|---|---|---:|---:|---|---:|---|---|
| ST1 | d_donch_pos_20 <= 0.216092 AND d_body_ratio_rmean20 fell AND d_body_ratio_rmean20 fell the session before AND x_z_d_donch_pos_20 > -0.290994 | 206 (123) | +1.05 [-0.45, +2.39] | +1.14 | 32% | +0.14 [-1.31, +1.45] | 0.4213 | **TIE** | +1.93, +0.96 |
| ST2 | d_donch_pos_20 <= 0.216092 AND d_body_ratio_rmean50 fell AND d_body_ratio_rmean50 fell the session before AND x_z_d_donch_pos_20 > -0.290994 | 199 (112) | +0.90 [-0.43, +2.49] | -0.51 | 29% | -0.01 [-1.31, +1.48] | 0.5058 | **TIE** | +1.68, +0.72 |

## Part C - money in the tree (TREE.json's books)

### THE TEST: 2024-01-01 .. 2026-09-22 (the tree started again on the split; FOUND's setups never saw these days)

Ranks 1-3, D and ENS, Rs 5 L a book on the first session on or after 2024-01-01, picks with a signal day from then on, 3 positions, the mean of 5 start days.

| tree | D: a year, worst fall | ENS: a year, worst fall | both (Rs 2.5 L each): a year, worst fall | trades a week (both) | both vs FROZEN, bp a day [95%] | both: worst-fall cut vs FROZEN, points [95%, 200 paired reruns] | the cut with history re-ordered [95%] |
|---|---|---|---|---:|---|---|---|
| FROZEN | +138.8%, 20.1% | +111.2%, 20.5% | +125.8%, 15.7% | 5.55 | - | - | - |
| TWINS-13 | +65.2%, 36.1% | +128.9%, 35.3% | +101.4%, 33.7% | 6.02 | -5.16 [-16.75, +6.39] | -18.02 | -18.21 [-23.92, +1.83] |
| TWINS-5 | +60.7%, 37.8% | +116.5%, 40.5% | +92.1%, 38.1% | 6.02 | -7.07 [-20.09, +4.93] | -22.42 | -22.60 [-30.25, +3.40] |
| FOUND | +115.1%, 18.1% | +100.2%, 32.2% | +107.9%, 25.0% | 4.95 | -4.46 [-13.87, +4.68] | -9.32 | -9.62 [-12.37, +4.50] |
| FOUND+WEEKLY | +133.7%, 20.1% | +103.7%, 25.0% | +119.7%, 15.7% | 5.54 | -1.12 [-4.35, +1.66] | -0.06 [-0.27, +2.55] | -0.06 [-1.26, +2.77] |
| STRATLAB | +108.7%, 18.1% | +98.1%, 28.4% | +103.6%, 22.4% | 5.01 | -5.30 [-14.19, +3.65] | -6.78 | -7.02 [-11.12, +6.37] |
| STRATLAB+WEEKLY | +125.6%, 24.3% | +111.1%, 20.5% | +118.7%, 18.4% | 5.58 | -1.24 [-4.80, +2.12] | -2.71 | -2.55 [-7.15, +2.87] |

FROZEN = S1 S2 S3 C1 C2 C3 N1. TWINS-13 / TWINS-5 = the six weekly setups replaced by their twins (N1 kept; declared, never searched). FOUND = Part B's judged setups that are BETTER (if none: those not WORSE) + N1, in place of the weekly six. FOUND+WEEKLY = the frozen seven and the found ones together. STRATLAB / STRATLAB+WEEKLY = the same with Part D's triggers (stratlab searched every day, so 2024 on is NOT unseen for them). A pick takes its earliest fill (a tie: the listed order). The worst-fall cut = FROZEN's worst fall minus the tree's (both books, the mean of the 5 start days; above 0 = it falls less); its 95% interval over 200 paired reruns (a random start day, 2% of the picks dropped, the same draws for both trees; FOUND+WEEKLY only). Re-ordered history = the cut of start day 1 with both daily value paths rebuilt from the same 21-session blocks (2000 draws; shown, not deciding).

### 2021 on (descriptive: FROZEN reproduces TREE.json's own history; FOUND's setups saw 2021-23)

Ranks 1-3, D and ENS, Rs 5 L a book, 3 positions, 2021-01-01 .. 2026-09-22, the mean of 5 start days.

| tree | D: a year, worst fall | ENS: a year, worst fall | both (Rs 2.5 L each): a year, worst fall | trades a week (both) | both vs FROZEN, bp a day [95%] | both: worst-fall cut vs FROZEN, points [95%, 200 paired reruns] | the cut with history re-ordered [95%] |
|---|---|---|---|---:|---|---|---|
| FROZEN | +117.4%, 24.1% | +107.5%, 29.5% | +112.8%, 25.9% | 5.62 | - | - | - |
| TWINS-13 | +81.1%, 36.1% | +92.3%, 35.3% | +87.2%, 33.3% | 6.00 | -4.87 [-12.02, +1.82] | -7.39 | -7.28 [-20.52, +4.07] |
| TWINS-5 | +68.4%, 37.8% | +78.9%, 40.5% | +74.1%, 37.9% | 6.00 | -7.68 [-15.74, +0.32] | -11.96 | -11.96 [-26.51, +7.26] |
| FOUND | +84.7%, 27.1% | +100.6%, 32.2% | +93.4%, 27.3% | 5.14 | -3.32 [-9.27, +2.54] | -1.43 | -1.40 [-14.47, +8.65] |
| FOUND+WEEKLY | +113.8%, 24.1% | +106.5%, 29.5% | +110.3%, 26.2% | 5.61 | -0.47 [-2.35, +1.05] | -0.30 [-0.99, +1.71] | -0.30 [-1.61, +2.12] |
| STRATLAB | +82.5%, 28.1% | +99.2%, 28.7% | +91.7%, 24.0% | 5.21 | -3.60 [-9.74, +2.06] | +1.89 | +1.89 [-13.44, +8.22] |
| STRATLAB+WEEKLY | +115.1%, 30.1% | +109.5%, 29.5% | +112.5%, 29.2% | 5.63 | -0.28 [-2.56, +1.83] | -3.28 | -3.25 [-7.33, +2.20] |

FROZEN = S1 S2 S3 C1 C2 C3 N1. TWINS-13 / TWINS-5 = the six weekly setups replaced by their twins (N1 kept; declared, never searched). FOUND = Part B's judged setups that are BETTER (if none: those not WORSE) + N1, in place of the weekly six. FOUND+WEEKLY = the frozen seven and the found ones together. STRATLAB / STRATLAB+WEEKLY = the same with Part D's triggers (stratlab searched every day, so 2024 on is NOT unseen for them). A pick takes its earliest fill (a tie: the listed order). The worst-fall cut = FROZEN's worst fall minus the tree's (both books, the mean of the 5 start days; above 0 = it falls less); its 95% interval over 200 paired reruns (a random start day, 2% of the picks dropped, the same draws for both trees; FOUND+WEEKLY only). Re-ordered history = the cut of start day 1 with both daily value paths rebuilt from the same 21-session blocks (2000 draws; shown, not deciding).

## Checks

- picks: 32076 rows (D 15819, ENS 16257; 0 ETF rows left out), complete 32074, pooled 25831, signal days 2020-01-16 .. 2026-09-15; every price before 2024-01-01: 15712 (half A 8283, half B 7429; signal days 2020-01-16 .. 2023-12-15); signal day on or after it: 9946
- twins: dw_ret_13w and d_ret_5s known at the signal close on 100.0% / 100.0% of the pooled picks; 0 stocks without a cache file
- missing columns: none
- frozen setups vs FINAL_001: 28 of 28 (setup, engine, exit) give FINAL_001's trades and net exactly
- the tree replayed: 2021-01-01 .. 2026-09-22; FROZEN REPRODUCES TREE.json's history (D tree +117.44% a year, worst fall 24.11%)
- estimated time: about 0.1 to 0.2 hours
- excluded_weekly: ['w_ret_4w', 'w_ret_13w', 'w_close_pos', 'w_vol_vs_4w', 'dow_0', 'dow_1', 'dow_2', 'dow_3', 'dow_4', 'dow_5', 'dow_6']
- month-bound inputs (kept, named): soul_m_self_n 99%
- time: 7.5 minutes

## How to read it

- Net per trade = sell price / buy price - 1 - 0.35 points. Every setup buys at the open of the first watch day (D1-D5) where all its conditions hold, reading the values at the close before - the frozen setups' own rule.
- WEEKLY's trades are all Tuesday entries; the twins and the found setups can enter on any weekday (the 'Tuesday entries' column shows how often they still do).
- 'Adds nothing on half B' names a condition whose own contribution (the setup's trades against the trades it would add without that condition) is not clearly above 0 on half B: the setup without it is the cleaner candidate.
- Part A judges 14 declared setups on every pick. Part B's numbers on half A are where the setups were found (optimistic); half B never took part in the search, so its numbers are the fair ones. WEEKLY's half-B numbers are not new (the weekly setups were chosen on every stock), which favours WEEKLY.
- A BETTER setup still goes to a new freeze with its own date and is judged by the forward ledger beside the frozen tree; nothing here changes the tree.
- v1.0.2 THE SPLIT: half B shares its days with half A, so a setup built on market-wide conditions (VIX, Nifty RSI, a sector's day) is not checked by the hidden stocks alone. The split fixes that: the search saw nothing from 2024-01-01 on, and the tree is then run on those days. A worst fall is one episode; the bootstrap rebuilds the two paths from the same blocks of sessions to show how much of a cut is luck.
- Worst fall = the two-book value against its running peak, marked to market daily (setuplab's rule).
