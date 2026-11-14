# whylab - are the 14 Nov claims about the model's picks true? (WHY_20261114_001)

whylab v1.0 | declaration e3967dd85a42d063 (fixed 2026-11-14 20:45 IST, before any run on real data) | tree run TREE_20261109_001 | 9,598 ranks 1-3 picks of D and ENS, ETFs out | 108 s

Each claim is judged in four cells - D and ENS, each in 2020-23 and in 2024-26 - with 95% intervals (blocks of 10 signal days). **TRUE needs all four.** The pick's own move = its return from the D1 open minus the average stock's return over the same days.

## Verdicts

| # | claim | verdict | calm picks | jumpy picks |
|---|---|---|---|---|
| 1 | Picks come after a hard fall | **PARTLY** | PARTLY | TRUE |
| 2 | Picks are the most volatile stocks | **PARTLY** | FALSE | TRUE |
| 3 | A simple rule could do the model's job | R1 (biggest 5-day fall in ATRs): **MODEL BETTER**; R2 (lowest RSI 7): **MODEL BETTER** | - | - |
| 4 | The gain is the model's choice, not only the type of stock (fallen and volatile) | **MODEL ADDS** | MODEL ADDS | MODEL ADDS |
| 5 | The move is a rebound: a bigger fall before, a bigger gain after | **NOT RELIABLE** | NOT RELIABLE | NOT RELIABLE |
| 6 | The move is fast (by the D2 close) | **BUILDS TO D5** | BUILDS TO D5 | MIXED |
| 7 | The move fades after D5 | **NOT RELIABLE** | NOT RELIABLE | NOT RELIABLE |
| 8 | The move comes with a volume burst | **NOT SHOWN** | NOT SHOWN | NOT SHOWN |
| 9 | Closing near the 20-day low warns of a further fall first | **NOT RELIABLE** | NOT RELIABLE | NOT RELIABLE |
| 10 | News or results drive the move | **NOT TESTED** - no announcement data in the pipeline | - | - |

Calm and jumpy use the tree's lanes (from 2021; their 2020-23 cell is 2021-23).

## 1. Picks come after a hard fall - **PARTLY**

Measured: share of picks in the day's bottom 20% by 5-day return (chance 20%).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | 45.1% [39.7, 50.5] **MORE THAN CHANCE** | 66.2% [59.9, 72.3] **MOST** | 53.1% [48.9, 57.4] |
| ENS | 51.2% [46.1, 56.3] **MORE THAN CHANCE** | 66.5% [60.9, 71.9] **MOST** | 57.3% [53.4, 61.2] |

Beside it (bottom-20% shares, D / ENS, 2020-26): RSI 7 47.8% / 50.8%; position in the 20-day range 43.3% / 46.5%; 20-day return 45.7% / 46.8%; 60-day return 33.8% / 32.6%.
- calm picks: D 2020-23 27.0% [21.7, 32.5] MORE THAN CHANCE; D 2024-26 51.3% [42.9, 59.7] MORE THAN CHANCE; ENS 2020-23 33.7% [28.6, 39.2] MORE THAN CHANCE; ENS 2024-26 51.5% [44.9, 58.4] MORE THAN CHANCE -> PARTLY
- jumpy picks: D 2020-23 74.9% [68.2, 81.0] MOST; D 2024-26 78.7% [73.7, 83.8] MOST; ENS 2020-23 85.1% [80.0, 89.8] MOST; ENS 2024-26 83.1% [78.2, 87.3] MOST -> TRUE

## 2. Picks are the most volatile stocks - **PARTLY**

Measured: share of picks in the day's top 20% by ATR % (chance 20%).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | 47.4% [41.5, 52.8] **MORE THAN CHANCE** | 71.3% [67.1, 75.3] **MOST** | 56.5% [52.2, 60.7] |
| ENS | 42.7% [37.5, 48.0] **MORE THAN CHANCE** | 64.6% [60.1, 68.6] **MOST** | 51.4% [47.6, 55.3] |

- calm picks: D 2020-23 22.9% [17.2, 29.0] NO; D 2024-26 41.8% [35.1, 48.3] MORE THAN CHANCE; ENS 2020-23 20.5% [15.5, 25.4] NO; ENS 2024-26 36.7% [31.1, 42.5] MORE THAN CHANCE -> FALSE
- jumpy picks: D 2020-23 96.9% [95.2, 98.6] MOST; D 2024-26 96.2% [93.6, 98.6] MOST; ENS 2020-23 96.3% [93.8, 98.6] MOST; ENS 2024-26 95.5% [92.5, 98.3] MOST -> TRUE

## 3. A simple rule could do the model's job

Per signal day: the mean net (buy the D1 open, sell the D5 close, 0.35 points) of the engine's ranks 1-3 vs each rule's 3 stocks from the same universe, paired by day (points per trade).

**R1 - biggest 5-day fall in ATRs: MODEL BETTER**

| engine | period | model | rule | everything | model - rule | rule - everything | model picks in rule's top 10 | rupees/day traded (model / rule) | cell |
|---|---|---|---|---|---|---|---|---|---|
| D | 2020-23 | +1.19 | -0.07 | -0.01 | +1.27 [+0.78, +1.78] | -0.06 [-0.36, +0.26] | 11.0% | Rs 7.90 cr / Rs 18.16 cr | MODEL BETTER |
| D | 2024-26 | +1.17 | -0.80 | -0.32 | +1.97 [+1.47, +2.51] | -0.47 [-0.84, -0.11] | 12.8% | Rs 14.17 cr / Rs 29.52 cr | MODEL BETTER |
| D | 2020-26 | +1.19 | -0.36 | -0.14 | +1.55 [+1.19, +1.93] | -0.22 [-0.46, +0.02] | 11.7% | Rs 10.10 cr / Rs 23.47 cr | - |
| ENS | 2020-23 | +1.51 | -0.07 | -0.01 | +1.58 [+1.11, +2.06] | -0.06 [-0.36, +0.26] | 13.3% | Rs 9.07 cr / Rs 18.16 cr | MODEL BETTER |
| ENS | 2024-26 | +0.89 | -0.80 | -0.33 | +1.70 [+1.21, +2.21] | -0.47 [-0.84, -0.11] | 14.5% | Rs 16.20 cr / Rs 29.52 cr | MODEL BETTER |
| ENS | 2020-26 | +1.26 | -0.37 | -0.14 | +1.63 [+1.29, +2.00] | -0.22 [-0.46, +0.02] | 13.8% | Rs 10.84 cr / Rs 23.47 cr | - |

**R2 - lowest RSI 7: MODEL BETTER**

| engine | period | model | rule | everything | model - rule | rule - everything | model picks in rule's top 10 | rupees/day traded (model / rule) | cell |
|---|---|---|---|---|---|---|---|---|---|
| D | 2020-23 | +1.19 | +0.47 | -0.01 | +0.72 [+0.16, +1.26] | +0.49 [+0.02, +0.97] | 12.6% | Rs 7.90 cr / Rs 7.21 cr | MODEL BETTER |
| D | 2024-26 | +1.17 | -0.57 | -0.32 | +1.74 [+1.16, +2.34] | -0.26 [-0.69, +0.19] | 21.7% | Rs 14.17 cr / Rs 10.69 cr | MODEL BETTER |
| D | 2020-26 | +1.19 | +0.05 | -0.14 | +1.13 [+0.73, +1.55] | +0.18 [-0.14, +0.55] | 16.3% | Rs 10.10 cr / Rs 8.08 cr | - |
| ENS | 2020-23 | +1.51 | +0.47 | -0.01 | +1.04 [+0.49, +1.62] | +0.49 [+0.02, +0.97] | 12.9% | Rs 9.07 cr / Rs 7.21 cr | MODEL BETTER |
| ENS | 2024-26 | +0.89 | -0.59 | -0.33 | +1.48 [+0.96, +1.99] | -0.26 [-0.69, +0.19] | 19.1% | Rs 16.20 cr / Rs 10.69 cr | MODEL BETTER |
| ENS | 2020-26 | +1.26 | +0.04 | -0.14 | +1.22 [+0.82, +1.63] | +0.18 [-0.14, +0.55] | 15.4% | Rs 10.84 cr / Rs 8.08 cr | - |

## 4. The gain is the model's choice, not only the type of stock (fallen and volatile) - **MODEL ADDS**

Measured: pick's D1-open-to-D5-close return minus its 10 look-alike unpicked stocks' (points).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | +1.27 [+0.86, +1.71] **MODEL ADDS** | +1.52 [+1.03, +2.00] **MODEL ADDS** | +1.37 [+1.06, +1.70] |
| ENS | +1.47 [+1.07, +1.91] **MODEL ADDS** | +1.22 [+0.79, +1.62] **MODEL ADDS** | +1.37 [+1.07, +1.68] |

- D 2020-26: the pick's own move +1.36 [+1.04, +1.71] = the look-alikes' own move -0.01 [-0.13, +0.12] + the model's choice +1.37 [+1.06, +1.70] (points).
- ENS 2020-26: the pick's own move +1.41 [+1.08, +1.75] = the look-alikes' own move +0.04 [-0.07, +0.16] + the model's choice +1.37 [+1.07, +1.68] (points).
- calm picks: D 2020-23 +0.87 [+0.47, +1.31] MODEL ADDS; D 2024-26 +1.60 [+1.00, +2.24] MODEL ADDS; ENS 2020-23 +0.91 [+0.50, +1.36] MODEL ADDS; ENS 2024-26 +1.28 [+0.73, +1.83] MODEL ADDS -> MODEL ADDS
- jumpy picks: D 2020-23 +1.78 [+0.96, +2.58] MODEL ADDS; D 2024-26 +1.45 [+0.78, +2.15] MODEL ADDS; ENS 2020-23 +1.93 [+1.00, +2.84] MODEL ADDS; ENS 2024-26 +1.15 [+0.53, +1.77] MODEL ADDS -> MODEL ADDS

## 5. The move is a rebound: a bigger fall before, a bigger gain after - **NOT RELIABLE**

Measured: own move D1 open to D5 close, most-fallen third of picks minus least-fallen third (points).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | +0.87 [-0.20, +2.01] **NONE** | -0.05 [-1.42, +1.27] **NONE** | +0.55 [-0.29, +1.39] |
| ENS | +1.28 [+0.17, +2.52] **REBOUND** | -0.11 [-1.24, +1.04] **NONE** | +0.66 [-0.15, +1.53] |

Every stock, not only picks (the same thirds within each day): 2020-23 +0.25 [+0.10, +0.41], 2024-26 +0.24 [+0.09, +0.38] points.
- calm picks: D 2020-23 +0.70 [-0.47, +1.95] NONE; D 2024-26 -1.19 [-2.86, +0.52] NONE; ENS 2020-23 +0.54 [-0.64, +1.99] NONE; ENS 2024-26 -0.90 [-1.99, +0.27] NONE -> NOT RELIABLE
- jumpy picks: D 2020-23 +1.12 [-1.03, +3.35] NONE; D 2024-26 +0.96 [-0.95, +2.86] NONE; ENS 2020-23 +1.18 [-0.76, +3.13] NONE; ENS 2024-26 +0.29 [-1.69, +2.21] NONE -> NOT RELIABLE

## 6. The move is fast (by the D2 close) - **BUILDS TO D5**

Measured: own move D1 open to D2 close / D2 close to D5 close (points).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | +0.74 [+0.50, +0.98] / +0.47 [+0.17, +0.79] **BUILDS TO D5** | +0.85 [+0.60, +1.12] / +0.74 [+0.40, +1.11] **BUILDS TO D5** | +0.78 [+0.61, +0.96] / +0.58 [+0.35, +0.82] |
| ENS | +0.94 [+0.71, +1.17] / +0.59 [+0.28, +0.93] **BUILDS TO D5** | +0.60 [+0.37, +0.82] / +0.63 [+0.28, +0.99] **BUILDS TO D5** | +0.80 [+0.63, +0.97] / +0.61 [+0.36, +0.85] |

- calm picks: D 2020-23 +0.46 [+0.22, +0.70] / +0.38 [+0.08, +0.73] BUILDS TO D5; D 2024-26 +1.04 [+0.70, +1.41] / +0.53 [+0.13, +0.95] BUILDS TO D5; ENS 2020-23 +0.57 [+0.32, +0.83] / +0.32 [+0.01, +0.64] BUILDS TO D5; ENS 2024-26 +0.56 [+0.27, +0.84] / +0.71 [+0.33, +1.10] BUILDS TO D5 -> BUILDS TO D5
- jumpy picks: D 2020-23 +1.41 [+0.95, +1.88] / +0.35 [-0.19, +0.89] FAST; D 2024-26 +0.69 [+0.34, +1.06] / +0.93 [+0.42, +1.49] BUILDS TO D5; ENS 2020-23 +1.72 [+1.23, +2.27] / +0.44 [-0.27, +1.16] FAST; ENS 2024-26 +0.64 [+0.29, +0.99] / +0.54 [+0.02, +1.11] BUILDS TO D5 -> MIXED

## 7. The move fades after D5 - **NOT RELIABLE**

Measured: own move D5 close to D10 close (points).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | +0.15 [-0.28, +0.62] **FLAT** | +0.49 [-0.02, +1.00] **FLAT** | +0.28 [-0.06, +0.61] |
| ENS | +0.28 [-0.12, +0.70] **FLAT** | +0.41 [-0.05, +0.90] **FLAT** | +0.34 [+0.02, +0.65] |

D5 close to the D6 open (own move): D +0.16 [+0.09, +0.22]; ENS +0.15 [+0.09, +0.22].
- calm picks: D 2020-23 +0.32 [-0.12, +0.78] FLAT; D 2024-26 +1.06 [+0.32, +1.76] KEEPS GOING; ENS 2020-23 +0.34 [-0.09, +0.78] FLAT; ENS 2024-26 +1.14 [+0.54, +1.77] KEEPS GOING -> NOT RELIABLE
- jumpy picks: D 2020-23 -0.65 [-1.48, +0.16] FLAT; D 2024-26 +0.01 [-0.65, +0.70] FLAT; ENS 2020-23 -0.85 [-1.73, +0.19] FLAT; ENS 2024-26 -0.39 [-1.08, +0.37] FLAT -> NOT RELIABLE

## 8. The move comes with a volume burst - **NOT SHOWN**

Measured: D1-D3 volume vs its own 20-day average (log) / vs look-alike stocks (log).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | -0.159 [-0.215, -0.109] / +0.148 [+0.097, +0.196] **NONE** | -0.161 [-0.230, -0.088] / +0.278 [+0.213, +0.344] **NONE** | -0.160 [-0.202, -0.118] / +0.197 [+0.157, +0.236] |
| ENS | -0.187 [-0.237, -0.140] / +0.124 [+0.078, +0.168] **NONE** | -0.185 [-0.248, -0.122] / +0.249 [+0.195, +0.305] **NONE** | -0.186 [-0.225, -0.150] / +0.173 [+0.137, +0.208] |

- calm picks: D 2020-23 -0.074 [-0.132, -0.021] / +0.110 [+0.047, +0.174] NONE; D 2024-26 -0.011 [-0.095, +0.070] / +0.295 [+0.214, +0.375] NONE; ENS 2020-23 -0.101 [-0.155, -0.048] / +0.111 [+0.056, +0.168] NONE; ENS 2024-26 -0.137 [-0.214, -0.063] / +0.197 [+0.127, +0.265] NONE -> NOT SHOWN
- jumpy picks: D 2020-23 -0.353 [-0.463, -0.253] / +0.201 [+0.097, +0.308] NONE; D 2024-26 -0.287 [-0.380, -0.194] / +0.264 [+0.181, +0.346] NONE; ENS 2020-23 -0.350 [-0.440, -0.254] / +0.207 [+0.117, +0.306] NONE; ENS 2024-26 -0.239 [-0.339, -0.142] / +0.306 [+0.232, +0.384] NONE -> NOT SHOWN

## 9. Closing near the 20-day low warns of a further fall first - **NOT RELIABLE**

Measured: share hitting -8% under the D1 open by D5: third closest to the 20-day low minus the farthest (points).

| engine | 2020-23 | 2024-26 | 2020-26 (shown, not judged) |
|---|---|---|---|
| D | +12.38 [+4.97, +19.77] **HOLDS** | +4.03 [-3.38, +11.03] **NONE** | +10.60 [+5.24, +15.69] |
| ENS | +8.95 [+1.70, +16.49] **HOLDS** | +9.89 [+2.01, +17.20] **HOLDS** | +10.02 [+4.98, +14.90] |

Beside it, the same with RSI 7 / SDE 3 in place of the 20-day position (2020-26): D +10.41 [+5.01, +15.63] / +7.06 [+2.74, +11.08]; ENS +10.08 [+4.87, +15.14] / +8.60 [+4.42, +12.42].
- calm picks: D 2020-23 -1.09 [-8.84, +6.28] NONE; D 2024-26 +4.78 [-4.76, +13.63] NONE; ENS 2020-23 -3.15 [-10.13, +3.76] NONE; ENS 2024-26 +11.98 [+3.87, +19.77] HOLDS -> NOT RELIABLE
- jumpy picks: D 2020-23 +7.29 [-2.44, +16.55] NONE; D 2024-26 +0.31 [-9.63, +9.38] NONE; ENS 2020-23 +5.17 [-4.91, +14.52] NONE; ENS 2024-26 +1.86 [-8.60, +11.98] NONE -> NOT RELIABLE

## What the picks look like on the signal day (ranks 1-3, 2020-26)

Average percentile among the day's stocks (0.50 = typical; low = the bottom of the day), with the picks' and the universe's medians.

| measure | D percentile | ENS percentile | D median | ENS median | universe median |
|---|---|---|---|---|---|
| signal-day return | 0.34 [0.32, 0.36] | 0.31 [0.29, 0.33] | -1.1% | -1.1% | -0.1% |
| 5-day return | 0.32 [0.29, 0.34] | 0.27 [0.25, 0.29] | -3.5% | -4.2% | -0.0% |
| 20-day return | 0.40 [0.36, 0.43] | 0.37 [0.34, 0.40] | -0.6% | -1.4% | +0.6% |
| 60-day return | 0.52 [0.48, 0.55] | 0.53 [0.49, 0.56] | +10.9% | +13.9% | +3.4% |
| RSI 7 | 0.36 [0.33, 0.39] | 0.32 [0.29, 0.34] | 42.32 | 40.19 | 50.35 |
| position in the 20-day range | 0.39 [0.36, 0.42] | 0.35 [0.32, 0.37] | 0.39 | 0.33 | 0.49 |
| above the 52-week low | 0.62 [0.59, 0.65] | 0.64 [0.61, 0.67] | +90.1% | +99.6% | +46.5% |
| below the 52-week high | 0.46 [0.42, 0.49] | 0.46 [0.42, 0.49] | -23.0% | -21.3% | -19.0% |
| ATR % (14-day) | 0.72 [0.68, 0.75] | 0.70 [0.67, 0.73] | 5.3% | 5.0% | 3.7% |
| 20-day volatility | 0.65 [0.61, 0.68] | 0.62 [0.59, 0.65] | 3.1% | 2.9% | 2.3% |
| signal-day volume vs 20-day average | 0.57 [0.55, 0.58] | 0.55 [0.53, 0.56] | 0.86 | 0.82 | 0.72 |
| rupees traded a day (20-day median) | 0.48 [0.46, 0.50] | 0.49 [0.48, 0.51] | Rs 9.57 cr | Rs 10.50 cr | Rs 10.64 cr |
| share price | 0.35 [0.32, 0.38] | 0.38 [0.36, 0.40] | Rs 145 | Rs 191 | Rs 385 |
| SDE 3 | 0.37 [0.35, 0.39] | 0.33 [0.31, 0.34] | -0.52 | -0.65 | -0.02 |
| SDE 10 | 0.38 [0.35, 0.41] | 0.35 [0.32, 0.37] | -0.17 | -0.20 | 0.01 |

Calm and jumpy picks separately: profile.csv.

## The path after the pick (own move, ranks 1-3, 2020-26)

| engine | D1 close | D2 close | D3 close | D4 close | D5 close | D6 close | D7 close | D8 close | D9 close | D10 close | D6 open |
|---|---|---|---|---|---|---|---|---|---|---|---|
| D | +0.44 | +0.78 | +0.98 | +1.20 | +1.36 | +1.42 | +1.48 | +1.56 | +1.59 | +1.63 | +1.52 |
| ENS | +0.56 | +0.80 | +1.05 | +1.23 | +1.41 | +1.58 | +1.61 | +1.68 | +1.69 | +1.75 | +1.56 |

Points from the D1 open, after taking out the average stock's move; intervals and calm / jumpy in path.csv.

## 12 examples, drawn at random (seed 7), not chosen

| group | stock | signal day | rank | 5-day return | RSI 7 | 20-day position | ATR % | D1 | D2 | D3 | D5 | D10 | hit -8% | D1-D3 volume |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| D CALM | IPCALAB | 2023-12-11 | 2 | -2.9% (pct 0.17) | 48 | 0.61 | 2.5% | -2.1% | -1.4% | -0.9% | +0.9% | -5.0% | no | 0.7x |
| D CALM | IRB | 2024-04-25 | 1 | +3.8% (pct 0.57) | 61 | 0.65 | 4.7% | +0.8% | +1.1% | -0.4% | +2.2% | -8.2% | no | 0.8x |
| D CALM | DREAMFOLKS | 2026-02-09 | 3 | +2.8% (pct 0.30) | 50 | 0.31 | 4.8% | +5.5% | +3.2% | +1.6% | -2.6% | -6.0% | no | 0.8x |
| D JUMPY | NELCO | 2022-03-07 | 2 | -8.3% (pct 0.14) | 20 | 0.01 | 6.2% | +2.9% | +8.1% | +13.5% | +12.7% | +10.1% | no | 1.5x |
| D JUMPY | FCL | 2025-04-16 | 2 | +12.1% (pct 0.81) | 60 | 0.77 | 5.6% | +3.8% | +3.9% | +3.6% | +4.5% | -0.1% | no | 0.7x |
| D JUMPY | NACLIND | 2025-09-24 | 2 | -9.6% (pct 0.01) | 26 | 0.01 | 5.6% | +4.8% | +0.4% | -4.6% | -7.7% | +3.4% | yes | 0.8x |
| ENS CALM | RTNPOWER | 2022-09-15 | 1 | -1.0% (pct 0.37) | 59 | 0.67 | 4.8% | +2.0% | -3.1% | -6.1% | -4.1% | -12.2% | yes | 1.2x |
| ENS CALM | BLKASHYAP | 2025-11-17 | 3 | -8.3% (pct 0.03) | 15 | 0.07 | 3.6% | -2.5% | -1.8% | -3.6% | -9.1% | -5.5% | yes | 1.1x |
| ENS CALM | DIXON | 2026-01-16 | 1 | -10.5% (pct 0.02) | 15 | 0.01 | 4.1% | +2.7% | -0.5% | -2.0% | -3.5% | -5.0% | no | 0.9x |
| ENS JUMPY | APCL | 2021-11-23 | 2 | -16.2% (pct 0.00) | 14 | 0.02 | 6.5% | +6.4% | +5.0% | +2.1% | -0.1% | +0.6% | no | 1.2x |
| ENS JUMPY | SKYGOLD | 2025-06-20 | 2 | -17.4% (pct 0.00) | 19 | 0.05 | 5.5% | -1.0% | +0.5% | +3.9% | +3.4% | +1.4% | no | 0.6x |
| ENS JUMPY | GALLANTT | 2025-08-19 | 2 | -19.9% (pct 0.00) | 23 | 0.04 | 7.1% | +3.0% | +1.8% | -0.3% | -2.4% | +0.2% | no | 0.3x |

Returns D1..D10 are from the D1 open (raw, not own move).

## Data checks

- Gate: net here = the tree's D1 net on 32,074 of 32,074 complete picks (100.00%, needs 99%) - **PASSED**; no outcome here: 0.
- Universe: 1,471,565 stock-days, 1,436 symbols (median 856 stocks a day after 5,259 ETF rows); NSE's ETF list not found (name rule only).
- Bars: 0 stock-days without bars, 0 without a bar on the day; 0 symbols missing from the cache.
- Picks: 32,076 (ranks 1-10, both engines); not in the panel that day: 0.
- Look-alike controls: 25,832 of 25,832 picked stock-days matched (10 stocks each), mean distance 0.042 in percentile units.

## Not tested

- Claim 10 (news, results): the pipeline has no company-announcement data. Nothing here stands in for it.
- What D itself leans on (part K): needs D's own training code; see the declaration's model_part.

