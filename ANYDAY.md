# anydaylab v1.0 - setups for any weekday vs the tree's weekly setups (ANYDAY_20261122_001)

Karan, 22 Nov 2026: *"Non Tuesday(weekly) setups which are better than weekly setups. Find."* Rules: `ANYDAY_DECLARATION.json` sha256 `45d6d5e83839ee74` (declared before any run). Picks: 32076 rows (D 15819, ENS 16257; 0 ETF rows left out), complete 32074, pooled 25831 (half A 13712, half B 12119), signal days 2020-01-16 .. 2026-09-15.

## Verdict

| part | what | judged | BETTER than WEEKLY | TIE | WORSE |
|---|---|---:|---:|---:|---:|
| A | the twins (S1-S3, C1-C3 with a daily rolling 'bad week'), every pick | 14 | **0** | 2 | 12 |
| B | the open search: found on half A, judged once on half B | 10 | **5** | 5 | 0 |

BETTER = the setup's net per trade minus WEEKLY's on the same picks and exit has a one-sided p at most 0.05 / K (Part A: K = 14, p <= 0.0036; Part B: K = 10, p <= 0.0050) and its 95% interval above 0. TIE = no clear difference either way. WORSE = the 95% interval below 0.

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

## Part B - the open search

828 conditions (203 features x 4 + the twins' 'below 0' + 14 price conditions); 9 features left out as weekly or weekday-bound (`excluded.csv`). Searched: 13712 pooled picks of half A; hidden: 12119 of half B.

### d5 (sold at the pick's D5 close)

Screened: 823 singles, 5000 pairs kept, 5000 triples kept; 315 checked for every condition earning its place; 60 finalists, 37 qualify. WEEKLY on half A: +1.07 per trade; on half B: +0.84.

| # | setup | half A: trades a year, net [95%] | half B: trades, net [95%] | half B vs WEEKLY [95%] | p | Tuesday share | verdict | adds nothing on half B |
|---|---|---|---|---|---:|---:|---|---|
| 1 | mkt_d_rsi14 <= 49.0049 AND indiavix_ret_1d <= -0.0197726 AND soul_m_self_n rose | 43, +4.55 [+2.97, +6.26] | 266, +3.97 [+1.80, +6.33] | +3.12 [+1.02, +5.45] | 0.0032 | 14% | **BETTER** | none |
| 2 | d_atr_pct > 5.34378 AND d_wq_35 fell AND d_realvol_60 <= 41.2741 | 29, +4.60 [+2.70, +6.71] | 196, +2.06 [-0.16, +4.46] | +1.21 [-0.93, +3.59] | 0.1509 | 28% | **TIE** | d_atr_pct > 5.34378; d_realvol_60 <= 41.2741 |
| 3 | d_adx14 > 36.5056 AND d_wq_19 > 1.69091 AND x_z_d_pos_in_52w_range <= -0.167914 | 42, +4.29 [+2.69, +5.86] | 204, +1.96 [-0.24, +4.26] | +1.11 [-0.97, +3.36] | 0.1638 | 22% | **TIE** | d_adx14 > 36.5056; d_wq_19 > 1.69091; x_z_d_pos_in_52w_range <= -0.167914 |
| 4 | d_bb_bw_20 > 0.285755 AND d_vol_yz_50 > 0.0384012 AND x_rank_d_realvol_20 <= 0.446056 | 31, +5.70 [+2.52, +8.33] | 210, +3.65 [-1.10, +7.85] | +2.81 [-1.85, +6.78] | 0.1121 | 17% | **TIE** | d_bb_bw_20 > 0.285755; d_vol_yz_50 > 0.0384012; x_rank_d_realvol_20 <= 0.446056 |
| 5 | mkt_d_realvol_20 > 15.1581 AND mkt_d_adx14 > 25.669 AND soul_m_self_n rose | 36, +4.20 [+2.44, +6.31] | 255, +3.95 [+1.48, +6.54] | +3.10 [+0.72, +5.65] | 0.0063 | 45% | **TIE** | none |

### fresh (sold 4 sessions after the entry)

Screened: 823 singles, 5000 pairs kept, 5000 triples kept; 221 checked for every condition earning its place; 60 finalists, 49 qualify. WEEKLY on half A: +1.26 per trade; on half B: +1.26.

| # | setup | half A: trades a year, net [95%] | half B: trades, net [95%] | half B vs WEEKLY [95%] | p | Tuesday share | verdict | adds nothing on half B |
|---|---|---|---|---|---:|---:|---|---|
| 1 | mkt_d_rsi14 <= 49.0049 AND indiavix_ret_1d <= -0.0197726 AND soul_m_self_n rose | 43, +7.55 [+5.19, +10.41] | 266, +6.37 [+3.05, +10.05] | +5.10 [+1.77, +8.74] | 0.0024 | 14% | **BETTER** | none |
| 2 | d_amihud_60 rose AND mkt_d_rsi14 <= 49.0049 AND mkt_d_dist_from_52wh > -2.37071 | 30, +6.91 [+4.87, +9.11] | 225, +3.67 [+1.28, +5.35] | +2.41 [-0.08, +4.21] | 0.0129 | 18% | **TIE** | d_amihud_60 rose |
| 3 | mkt_d_realvol_20 > 15.1581 AND mkt_d_adx14 > 25.669 AND soul_m_self_n rose | 36, +7.53 [+4.75, +10.92] | 255, +7.14 [+3.67, +10.90] | +5.87 [+2.53, +9.57] | 0.0004 | 45% | **BETTER** | none |
| 4 | d_upside_vol_ratio <= 1.12737 AND niftybank_ret_1d > 0.00439676 AND soul_m_self_n rose | 56, +6.48 [+3.94, +8.66] | 351, +4.71 [+2.02, +7.21] | +3.45 [+0.81, +6.00] | 0.0047 | 49% | **BETTER** | none |
| 5 | d_dist_from_52wh <= -7.73569 AND niftymetal_ret_1d > 0.00751853 AND soul_m_self_n rose | 71, +5.88 [+3.57, +8.08] | 395, +5.35 [+2.64, +7.76] | +4.08 [+1.44, +6.51] | 0.0009 | 48% | **BETTER** | none |

## Part C - money in the tree (TREE.json's books; descriptive)

Ranks 1-3, D and ENS, Rs 5 L a book, 3 positions, 2021-01-01 .. 2026-09-22, the mean of 5 start days. FROZEN = the tree as frozen (it reproduces TREE.json's own history). These years were seen by every setup here: a better number is a lead for the forward ledger, not proof.

| tree | D: a year, worst fall | ENS: a year, worst fall | both (Rs 2.5 L each): a year, worst fall | trades a week (both) | both vs FROZEN, bp a day [95%] |
|---|---|---|---|---:|---|
| FROZEN | +117.4%, 24.1% | +107.5%, 29.5% | +112.8%, 25.9% | 5.62 | - |
| TWINS-13 | +81.1%, 36.1% | +92.3%, 35.3% | +87.2%, 33.3% | 6.00 | -4.87 [-12.02, +1.82] |
| TWINS-5 | +68.4%, 37.8% | +78.9%, 40.5% | +74.1%, 37.9% | 6.00 | -7.68 [-15.74, +0.32] |
| FOUND | +85.3%, 27.1% | +103.0%, 32.2% | +95.1%, 27.7% | 5.16 | -3.12 [-9.61, +3.28] |
| FOUND+WEEKLY | +113.9%, 25.1% | +105.2%, 26.2% | +109.8%, 21.0% | 5.62 | -0.59 [-3.17, +2.09] |

FROZEN = S1 S2 S3 C1 C2 C3 N1. TWINS-13 / TWINS-5 = the six weekly setups replaced by their twins (N1 kept). FOUND = Part B's judged setups that are BETTER (if none: those not WORSE) + N1, in place of the weekly six. FOUND+WEEKLY = the frozen seven and the found ones together. A pick takes its earliest fill (a tie: the listed order).

## Checks

- picks: 32076 rows (D 15819, ENS 16257; 0 ETF rows left out), complete 32074, pooled 25831 (half A 13712, half B 12119), signal days 2020-01-16 .. 2026-09-15
- twins: dw_ret_13w and d_ret_5s known at the signal close on 100.0% / 100.0% of the pooled picks; 0 stocks without a cache file
- missing columns: none
- frozen setups vs FINAL_001: 28 of 28 (setup, engine, exit) give FINAL_001's trades and net exactly
- the tree replayed: 2021-01-01 .. 2026-09-22; FROZEN REPRODUCES TREE.json's history (D tree +117.44% a year, worst fall 24.11%)
- estimated time: about 0.1 to 0.2 hours
- excluded_weekly: ['w_ret_4w', 'w_ret_13w', 'w_close_pos', 'w_vol_vs_4w', 'dow_0', 'dow_1', 'dow_3', 'dow_4', 'dow_5']
- time: 8.7 minutes

## How to read it

- Net per trade = sell price / buy price - 1 - 0.35 points. Every setup buys at the open of the first watch day (D1-D5) where all its conditions hold, reading the values at the close before - the frozen setups' own rule.
- WEEKLY's trades are all Tuesday entries; the twins and the found setups can enter on any weekday (the 'Tuesday entries' column shows how often they still do).
- 'Adds nothing on half B' names a condition whose own contribution (the setup's trades against the trades it would add without that condition) is not clearly above 0 on half B: the setup without it is the cleaner candidate.
- Part A judges 14 declared setups on every pick. Part B's numbers on half A are where the setups were found (optimistic); half B never took part in the search, so its numbers are the fair ones. WEEKLY's half-B numbers are not new (the weekly setups were chosen on every stock), which favours WEEKLY.
- A BETTER setup still goes to a new freeze with its own date and is judged by the forward ledger beside the frozen tree; nothing here changes the tree.
