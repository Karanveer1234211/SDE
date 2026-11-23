# exitlab v1.0 - an exit meta model for the frozen tree

2023-01-06 .. 2026-09-22 (919 sessions; every rule averaged over 5 start days); declaration 7c5b2067aaee4c0a; vollab run VOLLAB_20261122_001.

## Verdict

**EXIT MODEL (M1): FAIL.** Against the frozen exits +0.86 bp a day [-8.06, +9.80]; against mechanics only -5.78 bp a day [-13.15, +0.75]; a year +81.95% vs +78.33%; worst fall 44.00% vs 31.41% (means of 5 starts).
PASS needs both intervals above 0 and a worst fall no deeper. A PASS is a candidate exit rule for a forward paper book beside the frozen tree; nothing in the frozen tree changes.

**M5: ADDS NOTHING.** On 11139 identical decisions with an M5 forecast, M1's squared error minus M2's: +65.2 [-781.3, +885.5] (bp^2; above 0 = M5 predicts better).

## Every rule (5 starts, paired days)

| rule | what | a year | worst fall | D a year | D worst fall | ENS a year | ENS worst fall | trades taken | exposure |
|---|---|---|---|---|---|---|---|---|---|
| FROZEN | the frozen tree (scheduled exits) | +78.33% | 31.41% | +82.47% | 32.02% | +71.69% | 38.76% | 1073 | 0.74 |
| M0 | sell when the mechanics-only model says so | +109.88% | 34.93% | +113.78% | 32.10% | +99.20% | 46.89% | 1606 | 0.78 |
| M1 | sell when the full model says so (THE EXIT MODEL) | +81.95% | 44.00% | +85.06% | 36.61% | +74.72% | 53.92% | 1604 | 0.74 |
| M2 | sell when the full model + M5 says so | +85.99% | 48.72% | +97.57% | 38.44% | +71.63% | 59.06% | 1593 | 0.75 |
| OPEN6 | every trade sells at the first executable open after its scheduled exit close | +113.69% | 37.62% | +116.24% | 39.27% | +108.65% | 38.53% | 1069 | 0.92 |

| comparison | what it shows | account, bp a day | p (one-sided) | D book | ENS book |
|---|---|---|---|---|---|
| M1 vs FROZEN | decision (a): the exit model against the frozen exits | +0.86 [-8.06, +9.80] | 0.4264 | +0.64 [-8.65, +9.97] | +0.71 [-12.04, +13.22] |
| M1 vs M0 | decision (b): the exit model against mechanics only | -5.78 [-13.15, +0.75] | 0.9508 | -5.83 [-13.95, +1.59] | -5.32 [-15.20, +4.15] |
| M0 vs FROZEN | mechanics only against the frozen exits | +6.64 [-2.20, +15.84] | 0.0737 | +6.48 [-1.83, +15.20] | +6.03 [-7.89, +19.92] |
| M2 vs FROZEN | the exit model + M5 against the frozen exits | +1.75 [-7.46, +11.09] | 0.3563 | +3.29 [-6.16, +12.49] | -0.01 [-13.04, +12.75] |
| M2 vs M1 | what M5 adds to the exit model, in money | +0.89 [-2.01, +4.00] | 0.2816 | +2.64 [-0.56, +6.09] | -0.72 [-4.75, +3.44] |
| OPEN6 vs FROZEN | more time in the trade (the D6-open shadow) | +7.32 [+3.66, +10.59] | 0.0000 | +6.86 [+1.92, +11.34] | +7.91 [+4.48, +10.95] |

Karan's goal (worst fall -25% or better, keeping 70% of the frozen tree's return): FROZEN not met; M0 not met; M1 not met; M2 not met; OPEN6 not met.

## Does each model predict? (the tree's valid decisions of each year)

y = the return from tomorrow's executable open to the scheduled exit, bp. R2 against the training mean (y clipped as in training); sold = predicted below 0; M5 coverage = rows with an M5 forecast.

| year | model | train_rows | train_m5_rows | tree_rows | tree_rows_m5 | r2_oos | rank_corr | sold_pct | y_if_sell | y_if_hold |
|---|---|---|---|---|---|---|---|---|---|---|
| 2023 | M0 | 25366 | 339 | 3818 | 3672 | -0.0068 | +0.065 | 55.4 | -2.8 | +52.6 |
| 2023 | M1 | 25366 | 339 | 3818 | 3672 | -0.0254 | +0.050 | 54.3 | +0.8 | +47.0 |
| 2023 | M2 | 25366 | 339 | 3818 | 3672 | -0.0254 | +0.050 | 54.3 | +0.8 | +47.0 |
| 2024 | M0 | 40507 | 4942 | 2767 | 2611 | +0.0322 | +0.126 | 40.5 | -36.2 | +60.8 |
| 2024 | M1 | 40507 | 4942 | 2767 | 2611 | +0.0162 | +0.092 | 39.8 | -27.7 | +54.1 |
| 2024 | M2 | 40507 | 4942 | 2767 | 2611 | +0.0192 | +0.092 | 35.9 | -23.2 | +46.6 |
| 2025 | M0 | 51390 | 8277 | 3067 | 2962 | +0.0156 | +0.087 | 45.1 | -19.6 | +49.1 |
| 2025 | M1 | 51390 | 8277 | 3067 | 2962 | +0.0157 | +0.081 | 33.9 | -22.3 | +38.8 |
| 2025 | M2 | 51390 | 8277 | 3067 | 2962 | +0.0117 | +0.081 | 34.0 | -12.7 | +33.9 |
| 2026 | M0 | 63463 | 12028 | 1934 | 1894 | -0.0029 | +0.045 | 46.5 | -32.5 | -0.3 |
| 2026 | M1 | 63463 | 12028 | 1934 | 1894 | -0.0212 | +0.085 | 36.2 | -54.3 | +7.0 |
| 2026 | M2 | 63463 | 12028 | 1934 | 1894 | -0.0147 | +0.095 | 35.6 | -50.3 | +4.1 |

## The exit model's sales (the tree's planned trades in the period, before the slot limit)

| group | trades | changed_avg | changed_sum | better_pct |
|---|---|---|---|---|
| D all sold early | 596 | -0.04 | -25.5 | 50.7 |
| D bought by open | 404 | +0.17 | +69.3 | 53.5 |
| D bought by S1 | 10 | -1.35 | -13.5 | 50.0 |
| D bought by S2 | 59 | -0.65 | -38.6 | 35.6 |
| D bought by S3 | 8 | +0.23 | +1.9 | 62.5 |
| D bought by C1 | 21 | -2.33 | -48.9 | 33.3 |
| D bought by C2 | 3 | -1.97 | -5.9 | 0.0 |
| D bought by C3 | 30 | -0.49 | -14.6 | 40.0 |
| D bought by N1 | 61 | +0.41 | +25.0 | 59.0 |
| D sold after 1 close(s) | 265 | -0.08 | -20.7 | 48.3 |
| D sold after 2 close(s) | 179 | +0.01 | +1.1 | 51.4 |
| D sold after 3 close(s) | 151 | -0.08 | -11.8 | 53.6 |
| D sold after 4 close(s) | 1 | +5.87 | +5.9 | 100.0 |
| ENS all sold early | 1167 | -0.05 | -60.2 | 54.0 |
| ENS bought by open | 1050 | -0.06 | -59.7 | 54.8 |
| ENS bought by S1 | 4 | -4.29 | -17.2 | 25.0 |
| ENS bought by S2 | 37 | +0.02 | +0.7 | 43.2 |
| ENS bought by S3 | 9 | -2.34 | -21.1 | 44.4 |
| ENS bought by C1 | 16 | +0.09 | +1.4 | 50.0 |
| ENS bought by C2 | 1 | -0.99 | -1.0 | 0.0 |
| ENS bought by C3 | 18 | +0.02 | +0.3 | 44.4 |
| ENS bought by N1 | 32 | +1.13 | +36.3 | 56.2 |
| ENS sold after 1 close(s) | 432 | -0.39 | -166.9 | 53.5 |
| ENS sold after 2 close(s) | 344 | -0.03 | -9.2 | 51.7 |
| ENS sold after 3 close(s) | 388 | +0.24 | +93.3 | 56.2 |
| ENS sold after 4 close(s) | 3 | +7.53 | +22.6 | 100.0 |

changed = the trade's net with the model's exit minus with the scheduled exit (points): above 0 = a loss avoided or a gain locked, below 0 = a gain missed.

## The rows

- trades: 5071 tree (planned, before the slot limit, the whole window) + 14346 hypothetical (ranks 4-10)
- rows: 71939 (tree 18118, hypothetical 53821); valid decisions 71591; moot 348 (a sale that could not come before the scheduled exit); 0 evenings after the watchlist's calendar left out
- panel features missing from the panel: none
- M5: pick_forecasts.csv: 6705 rows; 4032 of 19417 trades with a forecast

## Read this

- What is new (Karan's correction): trailing stops and the recovery study already reacted to events after entry; this learns the value of holding on at every eligible close, across the calm open buys and all seven setups.
- Ranks 4-10 are hypothetical trades used for training only; money is the D and ENS top-three books.
- The lockbox is spent and the frozen tree was drawn on 2020-26 data; a PASS earns a forward paper book, nothing more.

## Checks

- this book vs setuplab's tree_plan and tree_sim (frozen trees, 5 start days): D tree: trades same, values within 1.4e-13; ENS tree: trades same, values within 1.4e-13
- the frozen tree vs TREE.json's history: REPRODUCES (D tree +117.44% a year, worst fall 24.11%)
- picks: 27285 engine picks of D and ENS ranks 1-10 (21940 distinct), 8154 of them ranks 1-3; 0 distinct dropped (prices not matched: none)
- exits: the scheduled exits rebuilt here equal triggerlab's frozen trades (D and ENS)
- identity: the frozen books are triggerlab's (vollab's book = triggerlab's book on the frozen trades); a rule that never sells gives the frozen trades exactly
- period: 2023-01-06 .. 2026-09-22, 919 sessions, each rule the mean of 5 accounts started 2023-01-02 .. 2023-01-06
- libraries: python 3.13.12, pandas 2.3.3, numpy 2.4.1, scikit-learn 1.5.2, pyarrow 21.0.0 (the models' numbers depend on scikit-learn's version)
- time: 2.1 minutes
