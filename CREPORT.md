# whylab part C - which entry suits each kind of pick, inside the frozen tree (C_20261115_001)

whylab v1.5 | C declaration bf55408b6dc602a9 (fixed 2026-11-15 14:06 IST, before any C run) | tree run TREE_20261109_001 ['2021-01-01', '2026-09-22'] | 30 s

Engine D's picks, ranks 1-3, in the frozen tree's book (setuplab's own code: Rs 5 L, 3 positions, the same five start days, exits and 0.35 pp). Each variant routes ONE kind's picks to ONE choice; every other pick keeps the frozen tree's decision. Choices: **open** = buy at the D1 open; **frozen** = only through the frozen setups S1-N1 (any lane); **confirm** = the kind's confirmation rule (a MIXED pick: its top reason's).

**Verdict** (fixed before the run): the variant's book grows faster than the frozen tree's in 2021-23 AND 2024-26 (95% intervals above 0), survives the many-tests check (Benjamini-Hochberg, 5%, the weaker period) and its worst fall is no deeper -> BEATS THE TREE. A kind needs 100 picks in each period to be judged. **Everything here is in-sample** (the tree, part P's kinds and these rules were all built on 2020-26): a winner is a candidate for a NEW tree with its own freeze date, judged by the forward paper test.

## Checks

- The rebuild gives the TREE run's own numbers: D tree +117.4415% a year, worst fall 24.1102%, Rs 5 L -> Rs 423.8769 L; baseline +58.2535% / 46.7148% -> PASSED.
- Part P kind on 3,996 of 3,996 D picks in the window; their own bars match the watchlist on 3,996.

## Verdicts

| kind | choice | picks 2021-23 / 2024-26 | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|
| - | **the frozen tree** | - | +117.4% | 24.1% | Rs 423.9 L | - | - | - |
| - | baseline (every pick at the open) | - | +58.3% | 46.7% | Rs 72.2 L | - | - | - |
| trend | open | 480 / 730 | +89.0% | 41.3% | Rs 189.7 L | -6.8 [-32.8, +17.4] / -22.3 [-56.1, +12.6] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | frozen | 480 / 730 | +98.7% | 28.9% | Rs 252.6 L | -10.2 [-28.3, +7.4] / -7.9 [-32.5, +15.8] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | confirm | 480 / 730 | +93.1% | 39.6% | Rs 214.5 L | -9.2 [-33.9, +15.5] / -15.2 [-45.8, +16.5] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | open | 366 / 145 | +105.7% | 25.2% | Rs 307.8 L | -7.1 [-26.1, +11.7] / -4.0 [-19.2, +11.9] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | frozen | 366 / 145 | +75.8% | 28.5% | Rs 125.4 L | -20.8 [-42.6, -0.3] / -22.3 [-43.1, -1.6] | 55.6% | **MAY BE CHANCE** |
| position | confirm | 366 / 145 | +73.8% | 28.5% | Rs 117.7 L | -24.8 [-46.0, -5.0] / -20.3 [-45.4, +3.2] | 55.6% | **NO CLEAR DIFFERENCE** |
| volatility | open | 473 / 34 | +112.1% | 24.1% | Rs 368.1 L | -5.6 [-17.1, +5.3] / +0.8 [-2.8, +4.4] | - | **TOO FEW** |
| volatility | frozen | 473 / 34 | +110.1% | 24.1% | Rs 347.2 L | -0.3 [-13.2, +12.3] / -7.0 [-16.0, -0.5] | - | **TOO FEW** |
| volatility | confirm | 473 / 34 | +109.4% | 20.4% | Rs 340.7 L | -1.3 [-18.5, +14.6] / -6.6 [-15.9, +0.1] | - | **TOO FEW** |
| returns | open | 144 / 127 | +122.0% | 25.9% | Rs 477.9 L | +8.1 [-7.7, +23.8] / -4.4 [-24.2, +14.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | frozen | 144 / 127 | +104.7% | 32.9% | Rs 300.2 L | -11.4 [-20.8, -2.2] / -0.3 [-12.4, +10.0] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | confirm | 144 / 127 | +97.1% | 29.7% | Rs 241.3 L | -17.2 [-32.3, -1.9] / -2.0 [-16.3, +10.6] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | open | 225 / 278 | +103.7% | 37.4% | Rs 291.7 L | -2.9 [-26.3, +20.9] / -10.8 [-38.3, +14.3] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | frozen | 225 / 278 | +121.4% | 24.4% | Rs 470.0 L | -1.2 [-9.1, +7.4] / +5.2 [-5.9, +16.7] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | confirm | 225 / 278 | +104.2% | 21.1% | Rs 296.5 L | +0.2 [-20.2, +22.6] / -13.6 [-35.3, +7.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED position + volatility | open | 198 / 75 | +106.5% | 24.7% | Rs 315.2 L | -5.3 [-22.7, +10.5] / -5.1 [-19.3, +8.9] | - | **TOO FEW** |
| MIXED position + volatility | frozen | 198 / 75 | +108.7% | 20.4% | Rs 334.6 L | -4.7 [-23.5, +14.5] / -3.6 [-11.9, +4.9] | - | **TOO FEW** |
| MIXED position + volatility | confirm | 198 / 75 | +113.6% | 20.6% | Rs 381.8 L | -2.8 [-23.4, +19.0] / -0.7 [-11.3, +9.5] | - | **TOO FEW** |
| MIXED trend + volatility | open | 25 / 133 | +111.6% | 24.1% | Rs 363.2 L | +0.1 [-2.4, +2.4] / -5.9 [-22.2, +9.4] | - | **TOO FEW** |
| MIXED trend + volatility | frozen | 25 / 133 | +124.4% | 24.1% | Rs 506.5 L | +3.3 [-3.4, +13.5] / +3.2 [-8.1, +13.8] | - | **TOO FEW** |
| MIXED trend + volatility | confirm | 25 / 133 | +123.5% | 24.1% | Rs 494.6 L | +2.4 [-5.7, +12.6] / +3.3 [-8.4, +14.3] | - | **TOO FEW** |
| MIXED position + returns | open | 123 / 35 | +117.3% | 20.5% | Rs 422.6 L | +0.1 [-18.5, +18.9] / -0.2 [-9.5, +11.7] | - | **TOO FEW** |
| MIXED position + returns | frozen | 123 / 35 | +111.0% | 21.3% | Rs 355.9 L | -5.8 [-21.9, +9.6] / -0.1 [-9.3, +9.8] | - | **TOO FEW** |
| MIXED position + returns | confirm | 123 / 35 | +106.5% | 23.7% | Rs 314.9 L | -7.6 [-23.5, +6.6] / -2.6 [-11.3, +6.8] | - | **TOO FEW** |

## Each kind's picks under each choice (plan level, 2021-26; shown)

| kind | choice | picks | trades | net per trade | net per pick (skipped = 0) | missed winners | best / worst close after entry |
|---|---|---|---|---|---|---|---|
| trend | tree | 1,210 | 629 | +1.84% | +0.96% | 30.7% | +4.85% / -1.85% |
| trend | open | 1,210 | 1,210 | +1.41% | +1.41% | 0.0% | +5.62% / -3.32% |
| trend | frozen | 1,210 | 508 | +2.10% | +0.88% | 37.3% | +4.66% / -1.24% |
| trend | confirm | 1,210 | 203 | -0.23% | -0.04% | 42.8% | +1.47% / -1.53% |
| position | tree | 511 | 220 | +2.49% | +1.07% | 30.3% | +4.85% / -1.87% |
| position | open | 511 | 511 | +1.86% | +1.86% | 0.0% | +4.94% / -2.66% |
| position | frozen | 511 | 68 | +0.71% | +0.09% | 49.7% | +1.72% / -1.07% |
| position | confirm | 511 | 89 | +0.60% | +0.10% | 41.1% | +1.85% / -1.08% |
| volatility | tree | 507 | 234 | +0.37% | +0.17% | 27.2% | +1.75% / -1.24% |
| volatility | open | 507 | 507 | +0.35% | +0.35% | 0.0% | +2.13% / -1.33% |
| volatility | frozen | 507 | 104 | +0.19% | +0.04% | 42.4% | +0.87% / -0.79% |
| volatility | confirm | 507 | 105 | -0.08% | -0.02% | 28.6% | +1.06% / -0.94% |
| returns | tree | 271 | 119 | +1.09% | +0.48% | 38.0% | +3.65% / -1.73% |
| returns | open | 271 | 271 | +1.30% | +1.30% | 0.0% | +4.77% / -2.47% |
| returns | frozen | 271 | 73 | +1.63% | +0.44% | 46.9% | +3.43% / -1.70% |
| returns | confirm | 271 | 123 | -0.70% | -0.32% | 20.3% | +1.18% / -1.94% |
| MIXED returns + trend | tree | 503 | 275 | +1.76% | +0.96% | 28.2% | +4.97% / -1.81% |
| MIXED returns + trend | open | 503 | 503 | +1.14% | +1.14% | 0.0% | +5.23% / -3.26% |
| MIXED returns + trend | frozen | 503 | 221 | +2.08% | +0.91% | 35.4% | +5.08% / -1.45% |
| MIXED returns + trend | confirm | 503 | 72 | -0.18% | -0.03% | 44.3% | +1.73% / -1.22% |
| MIXED position + volatility | tree | 273 | 112 | +1.45% | +0.60% | 33.0% | +3.73% / -1.37% |
| MIXED position + volatility | open | 273 | 273 | +1.11% | +1.11% | 0.0% | +3.92% / -2.47% |
| MIXED position + volatility | frozen | 273 | 42 | +0.49% | +0.08% | 47.6% | +2.34% / -0.60% |
| MIXED position + volatility | confirm | 273 | 55 | +1.13% | +0.23% | 34.8% | +1.95% / -0.29% |
| MIXED trend + volatility | tree | 158 | 72 | +1.17% | +0.53% | 25.3% | +3.76% / -1.50% |
| MIXED trend + volatility | open | 158 | 158 | +0.13% | +0.13% | 0.0% | +4.12% / -3.38% |
| MIXED trend + volatility | frozen | 158 | 45 | +3.29% | +0.94% | 32.3% | +5.02% / -0.09% |
| MIXED trend + volatility | confirm | 158 | 9 | +0.04% | +0.00% | 35.4% | +2.09% / -2.36% |
| MIXED position + returns | tree | 158 | 88 | +0.54% | +0.30% | 26.6% | +3.26% / -1.86% |
| MIXED position + returns | open | 158 | 158 | +1.41% | +1.41% | 0.0% | +4.80% / -2.56% |
| MIXED position + returns | frozen | 158 | 35 | +0.19% | +0.04% | 43.0% | +3.02% / -0.96% |
| MIXED position + returns | confirm | 158 | 45 | +0.76% | +0.22% | 27.2% | +2.11% / -0.94% |

Net % per trade after 0.35 pp. Missed winners = the kind's picks with no trade whose D1-open trade would have made money. Best / worst close after entry = the mean, over trades, of the highest and lowest close from the entry to the exit.

Files: variants.csv (every variant's book and comparison), groups.csv, picks.csv (each pick: kind, lane, the tree's action, its open, frozen and confirmation trades), daily.csv (each variant's daily log difference from the tree). Research only: the frozen tree does not change.

