# m5tree v1.0 - the tree with M5 in place of ATR14, and new setups on M5

2023-01-02 .. 2026-09-22 (923 sessions); vollab run VOLLAB_20261122_001; declaration 433ef5a4e19f574c. Same picks, same prices, same books (Rs 5 L each, 3 positions, 1/3 each, 0.35 a round trip, D/ENS 50:50 restarted each January).

## Verdict

**Part 1 - replace ATR14 with M5 (lanes and S1): FAIL.** The daily gain over the frozen tree is -5.04 bp a day [-15.13, +4.83]; a year +49.04% vs +68.90%; worst fall 37.83% vs 37.90%.
PASS needs the interval above 0 and a worst fall no deeper. A PASS is a candidate for a forward paper book beside the frozen tree (its own freeze date); nothing in the frozen tree changes.

**Part 2 - new setups on M5 (Holm over V1-V3):** V1 FAIL (-1.59 bp a day [-4.63, +1.24], Holm p 1.0000); V2 FAIL (-1.86 bp a day [-7.19, +3.43], Holm p 1.0000); V3 FAIL (+0.31 bp a day [-2.05, +2.53], Holm p 1.0000).

## Every tree

| tree | what | a year | worst fall | 5% CVaR a day | gain vs frozen, bp a day | one-sided p | Holm p | verdict | trades | exposure |
|---|---|---|---|---|---|---|---|---|---|---|
| FROZEN | the frozen tree (ATR14 lanes, the frozen setups) | +68.90% | 37.90% | -4.25% | - | - | n/a | - | 1073 | 0.74 |
| LANE | M5 lanes only (S1 on ATR14) | +52.35% | 34.60% | -4.68% | -4.16 [-14.06, +5.37] | 0.8047 | n/a | shown only | 1071 | 0.73 |
| S1M5 | S1's dip in M5 units only (ATR14 lanes) | +69.21% | 37.90% | -4.23% | +0.07 [-0.36, +0.64] | 0.3844 | n/a | shown only | 1075 | 0.74 |
| LANEMIX | M5 lanes with the ATR rule's jumpy share | +49.50% | 29.96% | -4.48% | -4.92 [-13.67, +3.47] | 0.8750 | n/a | shown only | 1081 | 0.74 |
| M5TREE | M5 in both places: lanes and S1's dip | +49.04% | 37.83% | -4.74% | -5.04 [-15.13, +4.83] | 0.8446 | n/a | FAIL | 1073 | 0.73 |
| V1 | every dip in M5 units (S1, S3, C1, C2, N1) | +62.35% | 37.90% | -4.28% | -1.59 [-4.63, +1.24] | 0.8531 | 1.0000 | FAIL | 1070 | 0.74 |
| V2 | V1, dips only on normal volume | +61.28% | 36.70% | -4.29% | -1.86 [-7.19, +3.43] | 0.7541 | 1.0000 | FAIL | 1055 | 0.73 |
| V3 | V1, dips halved after a stressed NIFTY close | +70.20% | 37.90% | -4.33% | +0.31 [-2.05, +2.53] | 0.3943 | 1.0000 | FAIL | 1079 | 0.74 |
| V4 | skip picks in the window's bottom fifth of sigma5 (snooped) | +62.53% | 33.69% | -4.06% | -1.55 [-8.39, +4.70] | 0.6757 | n/a | shown only | 995 | 0.67 |
| ALL | M5 lanes + every dip in M5 units | +35.30% | 39.50% | -4.74% | -8.94 [-19.51, +0.93] | 0.9577 | n/a | shown only | 1066 | 0.73 |

Per year (%):

| tree | 2023 | 2024 | 2025 | 2026 |
|---|---|---|---|---|
| FROZEN | -2.87 | +165.45 | +146.27 | +10.71 |
| LANE | +9.35 | +132.28 | +39.82 | +34.88 |
| S1M5 | -2.87 | +169.64 | +145.85 | +9.94 |
| LANEMIX | +15.76 | +112.52 | +54.70 | +17.32 |
| M5TREE | +9.35 | +129.90 | +30.17 | +34.88 |
| V1 | -1.37 | +148.64 | +128.25 | +8.40 |
| V2 | +6.51 | +115.16 | +152.30 | +2.39 |
| V3 | -1.37 | +178.40 | +122.09 | +18.60 |
| V4 | +7.14 | +157.67 | +94.12 | +13.69 |
| ALL | +2.64 | +88.78 | +30.05 | +22.21 |

V2 and V3 against V1 (what the gate adds, shown only): V2 -0.27 bp a day [-4.91, +4.47]; V3 +1.90 bp a day [-0.26, +4.52].

## Part 1 in detail

### The lanes: ATR14 vs M5, each engine pick entering in the period

M5 used on 4962 of 5198 engine picks (the rest keep ATR14: no forecast, or fewer than 100 forecast picks in the window).

open net = bought at the D1 open, sold at the D5 close; setup = the earliest of the 7 frozen setups (its primary exit). Both on every pick, whatever its lane did.

| engine | atr_lane | m5_lane | picks | open_net_avg | open_win_pct | setup_fill_pct | setup_net_avg | setup_win_pct |
|---|---|---|---|---|---|---|---|---|
| D | calm | calm | 1251 | +0.47 | 48.0 | 26.4 | +0.50 | 47.9 |
| D | calm | jumpy | 219 | +1.99 | 50.7 | 22.4 | +1.15 | 51.0 |
| D | jumpy | calm | 329 | +0.01 | 48.0 | 38.6 | +1.84 | 54.3 |
| D | jumpy | jumpy | 724 | +2.53 | 56.6 | 33.4 | +2.47 | 56.2 |
| ENS | calm | calm | 1434 | +0.46 | 47.4 | 30.5 | +0.74 | 52.4 |
| ENS | calm | jumpy | 234 | +1.60 | 51.3 | 25.6 | +0.96 | 61.7 |
| ENS | jumpy | calm | 320 | +0.45 | 47.8 | 41.2 | +3.40 | 62.9 |
| ENS | jumpy | jumpy | 687 | +2.00 | 56.8 | 34.9 | +2.69 | 55.4 |
| both | calm | calm | 2685 | +0.46 | 47.7 | 28.6 | +0.64 | 50.5 |
| both | calm | jumpy | 453 | +1.79 | 51.0 | 24.1 | +1.04 | 56.9 |
| both | jumpy | calm | 649 | +0.22 | 47.9 | 39.9 | +2.63 | 58.7 |
| both | jumpy | jumpy | 1411 | +2.27 | 56.7 | 34.2 | +2.58 | 55.8 |

By year:

| year | engine | picks | with_m5 | atr_jumpy_pct | m5_jumpy_pct | calm_to_jumpy | jumpy_to_calm |
|---|---|---|---|---|---|---|---|
| 2022 | D | 3 | 3 | 33.3 | 66.7 | 1 | 0 |
| 2022 | ENS | 3 | 3 | 33.3 | 66.7 | 1 | 0 |
| 2023 | D | 734 | 694 | 11.2 | 14.2 | 38 | 16 |
| 2023 | ENS | 733 | 694 | 12.0 | 16.0 | 52 | 23 |
| 2024 | D | 732 | 689 | 55.6 | 66.4 | 141 | 62 |
| 2024 | ENS | 746 | 700 | 50.7 | 62.6 | 149 | 60 |
| 2025 | D | 627 | 609 | 49.9 | 21.2 | 12 | 192 |
| 2025 | ENS | 714 | 691 | 43.3 | 18.8 | 9 | 184 |
| 2026 | D | 427 | 415 | 58.5 | 51.1 | 27 | 59 |
| 2026 | ENS | 479 | 464 | 48.2 | 42.0 | 23 | 53 |

### S1's dip: 1 ATR14 vs 1 M5-ATR (every engine pick in the period, whatever its lane)

| group | picks | net_atr_avg | win_atr_pct | net_m5_avg | win_m5_pct |
|---|---|---|---|---|---|
| filled both, same day | 225 | +1.81 | 52.4 | +1.81 | 52.4 |
| filled both, another day | 0 | - | - | - | - |
| gained (M5 only) | 36 | - | - | +2.44 | 52.8 |
| lost (ATR14 only) | 16 | -1.40 | 31.2 | - | - |
| neither | 4921 | - | - | - | - |

### Trades actually taken: frozen tree vs M5 tree

| engine | group | n | win_pct | avg | payoff | sum |
|---|---|---|---|---|---|---|
| D | same entry | 316 | 52.5 | +1.23 | 1.50 | +387.9 |
| D | re-timed (FROZEN) | 22 | 54.5 | +1.20 | 1.18 | +26.3 |
| D | re-timed (M5TREE) | 22 | 50.0 | -0.31 | 0.92 | -6.9 |
| D | added (M5TREE only) | 195 | 55.9 | +0.80 | 1.04 | +155.3 |
| D | dropped (FROZEN only) | 196 | 52.6 | +1.66 | 1.62 | +326.1 |
| ENS | same entry | 314 | 52.2 | +1.32 | 1.61 | +415.7 |
| ENS | re-timed (FROZEN) | 22 | 59.1 | +0.48 | 0.77 | +10.6 |
| ENS | re-timed (M5TREE) | 22 | 40.9 | -3.49 | 0.74 | -76.8 |
| ENS | added (M5TREE only) | 204 | 51.5 | +0.88 | 1.26 | +180.2 |
| ENS | dropped (FROZEN only) | 203 | 46.3 | +1.04 | 1.55 | +211.7 |

### Each lane of each tree (taken trades)

| tree | engine | lane | n | win_pct | avg | avg_win | avg_loss | payoff | sum |
|---|---|---|---|---|---|---|---|---|---|
| FROZEN | D | calm | 415 | 51.1 | +1.19 | +6.25 | -4.10 | 1.52 | +492.6 |
| FROZEN | D | jumpy | 119 | 58.0 | +2.08 | +6.86 | -4.51 | 1.52 | +247.7 |
| FROZEN | ENS | calm | 456 | 49.1 | +0.92 | +6.65 | -4.62 | 1.44 | +417.5 |
| FROZEN | ENS | jumpy | 83 | 56.6 | +2.66 | +8.66 | -5.18 | 1.67 | +220.5 |
| FROZEN | both | calm | 871 | 50.1 | +1.04 | +6.46 | -4.38 | 1.47 | +910.1 |
| FROZEN | both | jumpy | 202 | 57.4 | +2.32 | +7.59 | -4.79 | 1.58 | +468.2 |
| M5TREE | D | calm | 433 | 52.2 | +0.58 | +5.31 | -4.58 | 1.16 | +251.9 |
| M5TREE | D | jumpy | 100 | 60.0 | +2.84 | +8.29 | -5.33 | 1.56 | +284.4 |
| M5TREE | ENS | calm | 462 | 50.0 | +0.64 | +5.79 | -4.52 | 1.28 | +293.7 |
| M5TREE | ENS | jumpy | 78 | 60.3 | +2.89 | +8.78 | -6.05 | 1.45 | +225.4 |
| M5TREE | both | calm | 895 | 51.1 | +0.61 | +5.55 | -4.55 | 1.22 | +545.7 |
| M5TREE | both | jumpy | 178 | 60.1 | +2.86 | +8.51 | -5.64 | 1.51 | +509.8 |

## Part 2 in detail

Fills of the five dip setups against the frozen setups' (engine picks in the period):

| variant | setup | frozen_fills | fills | gained | lost | moved | net_gained_avg | net_lost_avg |
|---|---|---|---|---|---|---|---|---|
| M5TREE | S1 | 241 | 261 | 36 | 16 | 0 | +2.44 | -1.40 |
| M5TREE | S3 | 385 | 385 | 0 | 0 | 0 | - | - |
| M5TREE | C1 | 745 | 745 | 0 | 0 | 0 | - | - |
| M5TREE | C2 | 653 | 653 | 0 | 0 | 0 | - | - |
| M5TREE | N1 | 645 | 645 | 0 | 0 | 0 | - | - |
| V1 | S1 | 241 | 261 | 36 | 16 | 0 | +2.44 | -1.40 |
| V1 | S3 | 385 | 358 | 28 | 55 | 0 | +0.03 | +0.34 |
| V1 | C1 | 745 | 750 | 42 | 37 | 0 | -0.56 | +2.53 |
| V1 | C2 | 653 | 625 | 56 | 84 | 0 | +0.60 | +0.50 |
| V1 | N1 | 645 | 638 | 19 | 26 | 23 | -0.81 | +2.54 |
| V2 | S1 | 241 | 146 | 20 | 115 | 0 | +0.93 | +2.57 |
| V2 | S3 | 385 | 189 | 18 | 214 | 0 | -1.22 | +2.53 |
| V2 | C1 | 745 | 476 | 35 | 304 | 0 | -0.82 | +2.75 |
| V2 | C2 | 653 | 378 | 47 | 322 | 0 | +0.48 | +2.18 |
| V2 | N1 | 645 | 318 | 14 | 341 | 27 | -0.47 | +3.03 |
| V3 | S1 | 241 | 334 | 101 | 8 | 0 | +1.11 | -0.29 |
| V3 | S3 | 385 | 411 | 48 | 22 | 0 | +0.01 | -0.41 |
| V3 | C1 | 745 | 788 | 58 | 15 | 0 | -0.22 | +3.05 |
| V3 | C2 | 653 | 716 | 99 | 36 | 0 | +0.66 | -0.97 |
| V3 | N1 | 645 | 660 | 25 | 10 | 26 | +0.57 | -1.89 |

V2: 484 of 1212 picks with a V1 dip fill keep none under the volume gate; 0 picks have no volume baseline (no fill under V2). V3: NIFTY stressed on 30.0% of the period's closes.

## Diagnostic: the frozen tree's taken trades by M5 quintile

net per sigma = net / sigma5. Flat across the quintiles = M5 sizes the move, not the edge (the research report's check).

| quintile | trades | sigma5_avg | net_avg | win_pct | net_per_sigma |
|---|---|---|---|---|---|
| 1 | 205 | 3.86 | +0.28 | 50.2 | +0.074 |
| 2 | 204 | 5.67 | +0.77 | 48.0 | +0.123 |
| 3 | 204 | 6.61 | +1.60 | 51.0 | +0.239 |
| 4 | 204 | 7.72 | +1.78 | 53.9 | +0.224 |
| 5 | 205 | 10.08 | +2.91 | 57.6 | +0.280 |

## Read this

- M5 was chosen in vollab as the most accurate forecast over these same months (on accuracy, not money): a small head start for Part 1.
- V1-V3 come from the research report (literature), fixed before this run. V4 was chosen after seeing vollab's stage B quintiles: snooped, shown only.
- The lockbox is spent; a PASS here is a candidate for a forward paper book, judged at its own month 6 and 12.

## Checks

- this book vs setuplab's tree_plan and tree_sim (frozen trees, 5 start days): D tree: trades same, values within 1.4e-13; ENS tree: trades same, values within 1.4e-13
- the frozen tree vs TREE.json's history: REPRODUCES (D tree +117.44% a year, worst fall 24.11%)
- picks: 8154 engine picks of D and ENS ranks 1-3 (6705 distinct); 0 dropped (prices not matched: none)
- forecasts: pick_forecasts.csv: 6705 rows, 4209 with M5; 4209 of 6705 distinct picks matched
- identity: the M5 machinery without forecasts reproduces the frozen trades and books exactly
- period: 2023-01-02 .. 2026-09-22, 923 sessions; the books start empty at 2023-01-02
- window: M5 used on 4962 of 5198 engine picks entering in the period
- volume: 0 distinct picks without a 20-bar volume baseline (V2 cannot fill them)
- dropped: no planned trade lacked prices
- time: 0.8 minutes
