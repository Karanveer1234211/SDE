# skiplab - SK1 (skiplab v1.0)

Declaration sha256 `0fe32bffb8fb9a08` (declared 2026-11-14, before any run). Tree run TREE_20261109_001, TAGS run TAGS_20261108_001; panel `C:\QuantData\cache_daily\panel_oc\panel.parquet`. 214 s.

## Verdict first

- **4 of 5 filters REPEATABLE**: #1 sde10 below -0.591 (Q1) AND D_range_pct 8.333 and above (Q4); #3 Tm1_eff below -0.1391 (Q1) AND D_cpr_width_pct below -1.541 (Q1); #4 Tm1_range 1.169 and above (Q4) AND D_donch_pos_20 below 0.02837 (Q1); #5 D_ema20_angle_deg below -0.7765 (Q1) AND D_WQ_33 0.9296 and above (Q4)
- Searched 773,357 filters (158 measures) on 1,331 never-caught jumpy picks of Oct 2021-2023; 547,091 eligible; judged on 2,521 picks from 2024 (never used to choose).

| # | filter | discovery picks | discovery net % | test picks | test net % inside | rest | inside - rest [95%] | excess over Smallcap 250 [95%] | p | Holm limit | verdict |
|---|---|---:|---:|---:|---:|---:|---|---|---:|---:|---|
| 1 | sde10 below -0.591 (Q1) AND D_range_pct 8.333 and above (Q4) | 92 | +8.15 | 140 | +7.05 | +3.10 | +3.95 [+2.04, +6.08] | +5.54 [+3.97, +7.32] | 0.0005 | 0.0050 | **REPEATABLE** |
| 2 | D_WQ_38 -0.0105 and above (Q4) AND D_WQ_20 -0.0008517 and above (Q4) | 92 | +8.02 | 141 | +5.80 | +3.17 | +2.64 [-0.31, +5.97] | +4.40 [+2.74, +6.56] | 0.0400 | 0.0250 | **NOT REPEATABLE** |
| 3 | Tm1_eff below -0.1391 (Q1) AND D_cpr_width_pct below -1.541 (Q1) | 100 | +7.97 | 214 | +6.22 | +3.05 | +3.18 [+1.61, +4.78] | +5.34 [+4.15, +6.57] | 0.0005 | 0.0063 | **REPEATABLE** |
| 4 | Tm1_range 1.169 and above (Q4) AND D_donch_pos_20 below 0.02837 (Q1) | 98 | +7.95 | 147 | +6.66 | +3.11 | +3.55 [+1.34, +5.88] | +5.14 [+3.38, +7.09] | 0.0025 | 0.0083 | **REPEATABLE** |
| 5 | D_ema20_angle_deg below -0.7765 (Q1) AND D_WQ_33 0.9296 and above (Q4) | 116 | +7.94 | 240 | +5.99 | +3.03 | +2.95 [+0.87, +5.11] | +4.50 [+2.99, +6.13] | 0.0025 | 0.0125 | **REPEATABLE** |

REPEATABLE = inside beat the rest of the never-caught picks AND beat Smallcap 250, both with 95% intervals above 0, kept by Holm across the 5 (0.025). Year by year (picks inside, net inside, net of the rest):

- #1: discovery 2021 12 at +5.76, 2022 54 at +7.28, 2023 26 at +11.06; test 2024 52 at +8.93 vs +3.57, 2025 53 at +7.17 vs +1.95, 2026 35 at +4.05 vs +3.47
- #2: discovery 2021 17 at +4.42, 2022 64 at +8.17, 2023 11 at +12.78; test 2024 61 at +5.07 vs +3.72, 2025 44 at +6.29 vs +2.08, 2026 36 at +6.44 vs +3.30
- #3: discovery 2021 15 at +4.84, 2022 65 at +7.68, 2023 20 at +11.22; test 2024 88 at +8.45 vs +3.44, 2025 64 at +4.19 vs +2.15, 2026 62 at +5.16 vs +3.29
- #4: discovery 2021 10 at +4.21, 2022 71 at +8.15, 2023 17 at +9.29; test 2024 53 at +7.47 vs +3.63, 2025 48 at +6.87 vs +2.01, 2026 46 at +5.51 vs +3.32
- #5: discovery 2021 10 at +6.44, 2022 80 at +7.29, 2023 26 at +10.53; test 2024 67 at +7.25 vs +3.59, 2025 114 at +5.18 vs +1.79, 2026 59 at +6.10 vs +3.19

## Tradability check (descriptive)

Never caught is known only after D5, so each filter was also read at the T0 close on EVERY jumpy pick of ranks 1-3 in the test years (caught or not): buying them at the D1 open against what the frozen tree did with the same picks (its setup trade, 0 when it skipped). Capacity ignored.

| # | engine | picks | of them never caught | D1 open -> D5 close % | tree % | difference [95%] |
|---|---|---:|---:|---:|---:|---|
| 1 | D | 118 | 61 | +2.91 | +0.98 | +1.93 [-0.06, +3.99] |
| 1 | ENS | 116 | 60 | +2.27 | +0.70 | +1.57 [-0.75, +4.29] |
| 2 | D | 85 | 51 | +3.44 | +0.88 | +2.55 [+0.46, +4.44] |
| 2 | ENS | 91 | 48 | +1.45 | +0.49 | +0.96 [-0.84, +2.85] |
| 3 | D | 124 | 75 | +4.09 | +1.39 | +2.69 [+0.64, +4.66] |
| 3 | ENS | 132 | 70 | +2.64 | +1.72 | +0.92 [-0.86, +2.77] |
| 4 | D | 108 | 64 | +4.59 | +1.63 | +2.96 [+1.80, +4.24] |
| 4 | ENS | 117 | 61 | +3.17 | +1.44 | +1.73 [+0.42, +2.94] |
| 5 | D | 186 | 92 | +2.80 | +1.83 | +0.98 [-0.74, +2.70] |
| 5 | ENS | 175 | 88 | +2.08 | +1.57 | +0.51 [-1.36, +2.58] |

## Who they are: never-caught jumpy picks against caught jumpy and calm picks

Buy at the D1 open, sell at the D5 close, net % after 0.35 pp; excess = over Smallcap 250 on the same dates; MFE / MAE from the D1 open over D1-D5; up5 / up10 = touched +5% / +10%; dn8 = touched -8%. 95% intervals over signal days.

| period | ranks | group | picks | net % [95%] | excess % [95%] | win | MFE % | MAE % | up5 | up10 | dn8 | OPEN6 % | setup trade % |
|---|---|---|---:|---|---|---:|---:|---:|---:|---:|---:|---:|---:|
| discovery | 1-10 | N jumpy, never caught | 1,331 | +2.58 [+1.55, +3.56] | +2.76 [+2.19, +3.40] | 58.2% | +9.53 | -4.70 | 67.9% | 36.3% | 16.8% | +2.93 | - |
| discovery | 1-10 | C jumpy, caught | 751 | -2.45 [-4.26, -0.61] | -1.02 [-1.96, -0.13] | 37.3% | +6.21 | -9.20 | 44.7% | 19.3% | 54.6% | -2.07 | +1.83 |
| discovery | 1-10 | K calm | 6,829 | +0.57 [+0.13, +1.01] | +0.68 [+0.40, +1.00] | 49.9% | +5.14 | -3.75 | 36.6% | 13.2% | 11.7% | +0.87 | - |
| discovery | 1-3 | N jumpy, never caught | 494 | +3.02 [+1.88, +4.28] | +3.30 [+2.37, +4.35] | 59.7% | +9.94 | -4.60 | 69.8% | 37.9% | 16.0% | +3.39 | - |
| discovery | 1-3 | C jumpy, caught | 293 | -1.51 [-3.23, +0.37] | -0.48 [-1.86, +0.84] | 38.9% | +6.42 | -8.73 | 44.7% | 21.8% | 52.2% | -0.90 | +2.74 |
| discovery | 1-3 | K calm | 1,957 | +0.82 [+0.31, +1.35] | +0.89 [+0.46, +1.37] | 50.8% | +5.48 | -3.93 | 39.4% | 15.1% | 13.0% | +1.15 | - |
| discovery | 4-10 | N jumpy, never caught | 837 | +2.32 [+1.18, +3.36] | +2.44 [+1.86, +3.08] | 57.3% | +9.29 | -4.75 | 66.8% | 35.4% | 17.3% | +2.67 | - |
| discovery | 4-10 | C jumpy, caught | 458 | -3.05 [-5.00, -1.04] | -1.36 [-2.28, -0.34] | 36.2% | +6.08 | -9.50 | 44.8% | 17.7% | 56.1% | -2.82 | +1.25 |
| discovery | 4-10 | K calm | 4,872 | +0.47 [+0.02, +0.93] | +0.59 [+0.31, +0.91] | 49.5% | +5.01 | -3.68 | 35.5% | 12.5% | 11.2% | +0.76 | - |
| test | 1-10 | N jumpy, never caught | 2,521 | +3.31 [+2.28, +4.34] | +2.77 [+2.17, +3.39] | 61.6% | +9.72 | -4.44 | 69.0% | 38.7% | 15.8% | +3.78 | - |
| test | 1-10 | C jumpy, caught | 1,320 | -2.52 [-3.65, -1.36] | -1.72 [-2.34, -1.14] | 35.0% | +5.64 | -9.05 | 39.6% | 18.2% | 53.3% | -2.17 | +1.97 |
| test | 1-10 | K calm | 6,105 | +0.13 [-0.39, +0.64] | +0.71 [+0.44, +1.00] | 45.4% | +5.57 | -4.56 | 40.0% | 15.2% | 16.6% | +0.44 | - |
| test | 1-3 | N jumpy, never caught | 947 | +3.39 [+2.31, +4.48] | +2.97 [+2.24, +3.69] | 61.8% | +9.94 | -4.48 | 72.1% | 40.2% | 16.3% | +3.87 | - |
| test | 1-3 | C jumpy, caught | 502 | -2.27 [-3.21, -1.31] | -1.63 [-2.28, -0.97] | 35.5% | +5.69 | -8.96 | 42.6% | 17.1% | 53.2% | -1.83 | +2.52 |
| test | 1-3 | K calm | 1,540 | +0.63 [-0.01, +1.32] | +1.20 [+0.72, +1.73] | 47.1% | +6.31 | -4.71 | 44.8% | 18.6% | 17.5% | +1.02 | - |
| test | 4-10 | N jumpy, never caught | 1,574 | +3.27 [+2.16, +4.35] | +2.66 [+2.00, +3.29] | 61.6% | +9.59 | -4.42 | 67.1% | 37.8% | 15.6% | +3.72 | - |
| test | 4-10 | C jumpy, caught | 818 | -2.68 [-4.07, -1.24] | -1.78 [-2.57, -1.02] | 34.7% | +5.61 | -9.10 | 37.8% | 18.8% | 53.3% | -2.38 | +1.64 |
| test | 4-10 | K calm | 4,565 | -0.04 [-0.55, +0.45] | +0.54 [+0.28, +0.82] | 44.8% | +5.31 | -4.51 | 38.4% | 14.1% | 16.3% | +0.24 | - |

## What sets the never-caught picks apart (N against caught jumpy picks C)

AUC = the chance a never-caught pick has the higher value than a caught one (0.5 = no difference). Kept when the test years point the same way.

| measure | family | median N | median C | median K | AUC N vs C discovery | test | same side |
|---|---|---:|---:|---:|---:|---:|---|
| D_donch_pos_20 | panel | 0.312 | 0.035 | 0.593 | 0.684 | 0.665 | yes |
| D_bb_pctB_20 | panel | 0.328 | 0.100 | 0.591 | 0.678 | 0.669 | yes |
| dist_lo20 | daily | 1.426 | 0.437 | 2.227 | 0.670 | 0.648 | yes |
| D_rsi7 | panel | 37.070 | 24.310 | 53.066 | 0.659 | 0.647 | yes |
| sde3 | SDE | -0.628 | -1.000 | -0.147 | 0.658 | 0.622 | yes |
| ret1 | daily | -0.019 | -0.038 | -0.003 | 0.657 | 0.621 | yes |
| D_mdi14_rrank20 | panel | 0.800 | 0.950 | 0.550 | 0.343 | 0.373 | yes |
| x_eff2 | T0 against T-1 | -0.060 | -0.111 | -0.024 | 0.654 | 0.633 | yes |
| D_WQ_38 | panel | -0.051 | -0.017 | -0.204 | 0.347 | 0.370 | yes |
| x_lo | T0 against T-1 | -0.275 | -0.562 | -0.039 | 0.650 | 0.621 | yes |
| D_mdi14_rrank10 | panel | 0.800 | 1.000 | 0.600 | 0.354 | 0.382 | yes |
| D_ema20_angle_z252 | panel | -0.879 | -1.754 | -0.054 | 0.646 | 0.641 | yes |
| sde10 | SDE | -0.234 | -0.514 | 0.062 | 0.646 | 0.622 | yes |
| ret5 | daily | -0.070 | -0.114 | -0.002 | 0.646 | 0.651 | yes |
| sde5 | SDE | -0.537 | -0.763 | -0.052 | 0.645 | 0.642 | yes |

## What lines up with how they did (within the never-caught picks)

Spread = mean net % of the top bucket minus the bottom bucket (quarters at the discovery quartiles; zones and day types their own). Listed when the spread is above (or below) 0 with 95% in BOTH periods - descriptive, the repeatable test above decides.

| measure | family | direction | spread discovery [95%] | spread test [95%] | years same sign |
|---|---|---|---|---|---:|
| sde3 | SDE | lower is better | -4.77 [-6.85, -2.76] | -2.66 [-4.44, -1.02] | 6 of 6 |
| sde5 | SDE | lower is better | -4.89 [-7.31, -2.74] | -3.36 [-5.11, -1.69] | 6 of 6 |
| sde10 | SDE | lower is better | -4.20 [-6.24, -2.07] | -2.31 [-4.07, -0.55] | 6 of 6 |
| ret1 | daily | lower is better | -3.50 [-5.13, -1.85] | -2.39 [-3.84, -0.92] | 6 of 6 |
| ret5 | daily | lower is better | -5.98 [-8.46, -3.58] | -4.50 [-6.39, -2.63] | 6 of 6 |
| clv5 | daily | lower is better | -3.91 [-6.36, -1.65] | -2.38 [-3.85, -1.02] | 6 of 6 |
| dist_hi20 | daily | lower is better | -3.41 [-5.92, -1.11] | -2.41 [-4.38, -0.49] | 6 of 6 |
| dist_lo20 | daily | lower is better | -3.57 [-5.60, -1.39] | -2.47 [-4.54, -0.48] | 6 of 6 |
| semivol20 | daily | higher is better | +2.56 [+0.28, +5.15] | +1.91 [+0.05, +3.87] | 5 of 6 |
| semi_share | daily | higher is better | +2.17 [+0.11, +4.35] | +2.22 [+0.26, +4.26] | 6 of 6 |
| rsj10 | daily | lower is better | -4.14 [-6.13, -2.04] | -2.62 [-4.43, -0.81] | 6 of 6 |
| Tm1_oc | T-1 session | lower is better | -2.85 [-5.00, -0.83] | -3.19 [-4.53, -1.80] | 6 of 6 |
| Tm1_eff | T-1 session | lower is better | -3.46 [-5.65, -1.13] | -3.13 [-4.50, -1.71] | 6 of 6 |
| Tm1_vwap | T-1 session | lower is better | -2.08 [-3.93, -0.25] | -3.00 [-4.26, -1.70] | 6 of 6 |
| Tm1_t_hi | T-1 session | lower is better | -1.80 [-2.94, -0.63] | -1.20 [-2.24, -0.15] | 6 of 6 |
| Tm1_or30 | T-1 session | lower is better | -2.28 [-3.91, -0.51] | -2.08 [-3.26, -0.90] | 5 of 6 |
| T0_oc | T0 session | lower is better | -3.09 [-4.71, -1.41] | -1.62 [-2.77, -0.49] | 5 of 6 |
| T0_clv | T0 session | lower is better | -1.84 [-3.39, -0.41] | -1.48 [-2.51, -0.44] | 5 of 6 |
| T0_vwap | T0 session | lower is better | -2.58 [-4.54, -0.83] | -2.36 [-3.65, -1.04] | 6 of 6 |
| T0_or30 | T0 session | lower is better | -2.18 [-3.65, -0.66] | -1.37 [-2.34, -0.43] | 6 of 6 |
| T0_mid | T0 session | lower is better | -3.21 [-5.06, -1.35] | -1.49 [-2.71, -0.27] | 6 of 6 |
| T0_dd | T0 session | higher is better | +2.21 [+0.22, +4.25] | +1.89 [+0.65, +3.17] | 6 of 6 |
| x_hi | T0 against T-1 | lower is better | -2.92 [-4.81, -1.04] | -2.66 [-3.99, -1.32] | 6 of 6 |
| x_lo | T0 against T-1 | lower is better | -3.64 [-5.36, -1.79] | -3.33 [-4.80, -1.91] | 6 of 6 |
| x_close_hi | T0 against T-1 | lower is better | -3.82 [-5.61, -1.96] | -3.55 [-5.03, -2.05] | 6 of 6 |
| x_eff2 | T0 against T-1 | lower is better | -3.31 [-5.35, -1.31] | -3.06 [-4.65, -1.55] | 6 of 6 |
| D_ema20_angle_deg | panel | lower is better | -4.89 [-7.20, -2.58] | -2.29 [-4.48, -0.13] | 6 of 6 |
| D_mdi14_diff1 | panel | higher is better | +1.97 [+0.03, +3.87] | +1.63 [+0.16, +3.14] | 6 of 6 |
| D_WQ_33 | panel | higher is better | +3.05 [+1.40, +4.69] | +2.07 [+0.80, +3.32] | 6 of 6 |
| D_WQ_29 | panel | higher is better | +3.75 [+1.21, +6.44] | +3.30 [+1.49, +5.06] | 6 of 6 |
| D_WQ_16 | panel | higher is better | +3.12 [+0.98, +5.16] | +1.60 [+0.09, +3.02] | 5 of 6 |
| D_upside_vol_ratio | panel | lower is better | -2.47 [-4.46, -0.72] | -2.01 [-4.00, -0.07] | 6 of 6 |
| D_atr_pct | panel | higher is better | +2.68 [+0.69, +4.98] | +2.71 [+1.07, +4.35] | 6 of 6 |
| D_WQ_13 | panel | higher is better | +2.43 [+0.54, +4.51] | +2.11 [+0.39, +3.79] | 5 of 6 |
| D_lh_run | panel | higher is better | +1.91 [+0.20, +3.55] | +1.72 [+0.39, +3.01] | 5 of 6 |
| D_rsi14_z252 | panel | lower is better | -3.77 [-5.81, -1.71] | -2.56 [-4.68, -0.42] | 5 of 6 |
| D_cpr_width_pct | panel | lower is better | -2.83 [-4.61, -1.06] | -2.40 [-3.55, -1.29] | 6 of 6 |
| D_intraday_ret_pct | panel | lower is better | -3.32 [-4.95, -1.62] | -2.08 [-3.29, -0.91] | 6 of 6 |
| D_mdi14_diff5 | panel | higher is better | +4.43 [+2.03, +6.88] | +3.05 [+0.93, +5.25] | 6 of 6 |
| D_mdi14_rrank20 | panel | higher is better | +2.92 [+0.89, +5.18] | +2.50 [+0.66, +4.35] | 6 of 6 |
| D_ema20_angle_z252 | panel | lower is better | -4.13 [-6.19, -2.11] | -2.20 [-4.04, -0.36] | 5 of 6 |
| D_mdi14_rrank10 | panel | higher is better | +3.33 [+1.09, +5.61] | +2.80 [+0.66, +5.00] | 6 of 6 |
| D_dist_from_20h | panel | lower is better | -3.30 [-5.60, -1.16] | -2.42 [-4.45, -0.35] | 6 of 6 |
| D_WQ_38 | panel | higher is better | +3.94 [+1.82, +6.17] | +3.07 [+1.45, +4.74] | 6 of 6 |
| D_rsi7 | panel | lower is better | -5.26 [-7.57, -3.07] | -2.58 [-4.53, -0.70] | 6 of 6 |
| D_ll_run | panel | higher is better | +3.18 [+1.56, +4.76] | +2.48 [+1.15, +3.82] | 6 of 6 |
| D_WQ_35 | panel | higher is better | +4.13 [+2.35, +6.06] | +3.48 [+1.96, +5.02] | 6 of 6 |
| D_donch_pos_20 | panel | lower is better | -4.58 [-7.04, -2.15] | -2.60 [-4.72, -0.68] | 6 of 6 |
| D_WQ_20 | panel | higher is better | +2.60 [+0.56, +4.61] | +2.37 [+0.96, +3.91] | 6 of 6 |
| D_bb_pctB_20 | panel | lower is better | -4.62 [-6.98, -2.35] | -3.35 [-5.46, -1.35] | 6 of 6 |
| z_ATRX | zone | higher is better | +2.25 [+0.69, +3.81] | +1.18 [+0.10, +2.24] | 6 of 6 |
| z_RET20 | zone | lower is better | -1.82 [-3.62, -0.08] | -1.84 [-3.69, -0.01] | 5 of 6 |
| z_RSI14 | zone | lower is better | -6.19 [-9.27, -3.42] | -3.66 [-6.17, -1.16] | 6 of 6 |
| z_DD52 | zone | lower is better | -3.58 [-6.09, -1.34] | -2.22 [-4.40, -0.05] | 6 of 6 |
| Tm1_is_TREND_DN | T-1 session | higher is better | +2.17 [+0.57, +3.97] | +2.25 [+1.23, +3.22] | 6 of 6 |
| T0_is_TREND_DN | T0 session | higher is better | +1.80 [+0.51, +3.23] | +1.32 [+0.43, +2.20] | 6 of 6 |
| in_both | pick | higher is better | +1.57 [+0.37, +2.79] | +1.00 [+0.15, +1.91] | 6 of 6 |

The 15 largest discovery spreads, with the test years beside them:

| measure | family | spread discovery [95%] | spread test [95%] | years same sign |
|---|---|---|---|---:|
| z_RSI14 | zone | -6.19 [-9.27, -3.42] | -3.66 [-6.17, -1.16] | 6 of 6 |
| ret5 | daily | -5.98 [-8.46, -3.58] | -4.50 [-6.39, -2.63] | 6 of 6 |
| D_rsi7 | panel | -5.26 [-7.57, -3.07] | -2.58 [-4.53, -0.70] | 6 of 6 |
| D_ema20_angle_deg | panel | -4.89 [-7.20, -2.58] | -2.29 [-4.48, -0.13] | 6 of 6 |
| sde5 | SDE | -4.89 [-7.31, -2.74] | -3.36 [-5.11, -1.69] | 6 of 6 |
| sde3 | SDE | -4.77 [-6.85, -2.76] | -2.66 [-4.44, -1.02] | 6 of 6 |
| D_bb_pctB_20 | panel | -4.62 [-6.98, -2.35] | -3.35 [-5.46, -1.35] | 6 of 6 |
| D_donch_pos_20 | panel | -4.58 [-7.04, -2.15] | -2.60 [-4.72, -0.68] | 6 of 6 |
| D_mdi14_diff5 | panel | +4.43 [+2.03, +6.88] | +3.05 [+0.93, +5.25] | 6 of 6 |
| sde10 | SDE | -4.20 [-6.24, -2.07] | -2.31 [-4.07, -0.55] | 6 of 6 |
| rsj10 | daily | -4.14 [-6.13, -2.04] | -2.62 [-4.43, -0.81] | 6 of 6 |
| D_WQ_35 | panel | +4.13 [+2.35, +6.06] | +3.48 [+1.96, +5.02] | 6 of 6 |
| D_ema20_angle_z252 | panel | -4.13 [-6.19, -2.11] | -2.20 [-4.04, -0.36] | 5 of 6 |
| D_n_5pct_up_60 | panel | -4.01 [-6.18, -1.93] | +1.00 [-0.53, +2.52] | 4 of 6 |
| D_WQ_38 | panel | +3.94 [+1.82, +6.17] | +3.07 [+1.45, +4.74] | 6 of 6 |

## Day types (the daily bar, declared rules)

Share of each type, never caught / caught / calm, and the never-caught picks' mean net % in that type:

| period | day | type | N share | C share | K share | N net % |
|---|---|---|---:|---:|---:|---:|
| discovery | T-1 | QUIET | 20.7% | 22.8% | 13.2% | +2.14 |
| discovery | T-1 | GAP_UP_GO | 0.5% | 0.1% | 1.3% | +5.03 |
| discovery | T-1 | GAP_UP_FADE | 2.3% | 1.2% | 2.8% | +0.90 |
| discovery | T-1 | GAP_DN_RECOVER | 1.1% | 3.1% | 1.2% | +4.73 |
| discovery | T-1 | GAP_DN_GO | 2.0% | 3.1% | 1.0% | +2.07 |
| discovery | T-1 | TREND_UP | 7.1% | 2.4% | 9.9% | +1.74 |
| discovery | T-1 | TREND_DN | 24.6% | 30.9% | 16.2% | +4.21 |
| discovery | T-1 | REVERSAL_UP | 2.6% | 2.7% | 5.3% | +1.38 |
| discovery | T-1 | REVERSAL_DN | 7.8% | 6.7% | 9.6% | +3.41 |
| discovery | T-1 | RANGE | 31.3% | 27.2% | 39.5% | +1.72 |
| discovery | T0 | QUIET | 20.7% | 21.0% | 17.2% | +1.60 |
| discovery | T0 | GAP_UP_GO | 0.0% | 0.0% | 0.8% | - |
| discovery | T0 | GAP_UP_FADE | 0.9% | 1.7% | 1.7% | +4.69 |
| discovery | T0 | GAP_DN_RECOVER | 1.6% | 2.0% | 1.0% | +4.23 |
| discovery | T0 | GAP_DN_GO | 2.0% | 4.3% | 0.9% | +5.18 |
| discovery | T0 | TREND_UP | 5.9% | 1.7% | 5.7% | -0.97 |
| discovery | T0 | TREND_DN | 28.2% | 39.9% | 16.5% | +3.87 |
| discovery | T0 | REVERSAL_UP | 2.7% | 2.0% | 5.8% | +1.83 |
| discovery | T0 | REVERSAL_DN | 6.8% | 5.6% | 8.2% | +2.63 |
| discovery | T0 | RANGE | 31.3% | 21.7% | 42.1% | +2.47 |
| test | T-1 | QUIET | 20.2% | 18.1% | 15.6% | +1.99 |
| test | T-1 | GAP_UP_GO | 0.7% | 0.1% | 1.0% | +2.62 |
| test | T-1 | GAP_UP_FADE | 2.4% | 1.1% | 2.6% | +8.77 |
| test | T-1 | GAP_DN_RECOVER | 1.9% | 2.6% | 1.1% | +3.10 |
| test | T-1 | GAP_DN_GO | 2.0% | 2.9% | 1.0% | +5.44 |
| test | T-1 | TREND_UP | 5.0% | 2.2% | 7.5% | +1.20 |
| test | T-1 | TREND_DN | 26.4% | 33.2% | 21.4% | +4.97 |
| test | T-1 | REVERSAL_UP | 3.9% | 2.7% | 4.9% | +2.11 |
| test | T-1 | REVERSAL_DN | 6.2% | 5.6% | 8.5% | +2.31 |
| test | T-1 | RANGE | 31.3% | 31.6% | 36.4% | +2.94 |
| test | T0 | QUIET | 20.1% | 16.6% | 19.2% | +2.12 |
| test | T0 | GAP_UP_GO | 0.5% | 0.0% | 1.0% | +4.94 |
| test | T0 | GAP_UP_FADE | 1.3% | 0.6% | 1.5% | +5.51 |
| test | T0 | GAP_DN_RECOVER | 1.3% | 2.2% | 1.2% | +5.36 |
| test | T0 | GAP_DN_GO | 1.0% | 2.3% | 0.8% | +6.88 |
| test | T0 | TREND_UP | 3.6% | 1.7% | 4.3% | +1.99 |
| test | T0 | TREND_DN | 30.8% | 41.7% | 20.9% | +4.23 |
| test | T0 | REVERSAL_UP | 3.5% | 2.6% | 5.1% | +3.71 |
| test | T0 | REVERSAL_DN | 6.1% | 4.5% | 7.5% | +3.25 |
| test | T0 | RANGE | 31.7% | 27.9% | 38.7% | +2.98 |

T-1 then T0 among the never-caught picks (the 12 most common pairs of the discovery years, with the test years beside them):

| T-1 | T0 | discovery picks | share | net % | test picks | share | net % |
|---|---|---:|---:|---:|---:|---:|---:|
| RANGE | RANGE | 148 | 11.1% | +1.98 | 251 | 10.0% | +3.05 |
| TREND_DN | TREND_DN | 113 | 8.5% | +5.58 | 228 | 9.0% | +6.03 |
| RANGE | TREND_DN | 110 | 8.3% | +3.02 | 253 | 10.0% | +3.61 |
| TREND_DN | RANGE | 107 | 8.0% | +4.29 | 214 | 8.5% | +4.53 |
| RANGE | QUIET | 89 | 6.7% | +0.09 | 152 | 6.0% | +1.24 |
| QUIET | QUIET | 86 | 6.5% | +2.59 | 171 | 6.8% | +1.70 |
| QUIET | TREND_DN | 71 | 5.3% | +1.83 | 131 | 5.2% | +2.52 |
| QUIET | RANGE | 61 | 4.6% | +1.95 | 147 | 5.8% | +1.15 |
| TREND_DN | QUIET | 45 | 3.4% | +2.61 | 80 | 3.2% | +3.73 |
| REVERSAL_DN | RANGE | 41 | 3.1% | +2.49 | 52 | 2.1% | +1.01 |
| TREND_UP | TREND_DN | 29 | 2.2% | +4.17 | 32 | 1.3% | +1.64 |
| TREND_UP | RANGE | 26 | 2.0% | +0.92 | 39 | 1.5% | +0.66 |

## Examples to look at on a chart (test years, inside each filter)

- #1: JYOTHYLAB 2024-02-13 (rank 8, D,ENS, +8.38%), DPSCLTD 2024-03-14 (rank 5, D,ENS, -8.07%), FUSION 2024-08-09 (rank 4, D, -6.75%), IIFLCAPS 2024-11-18 (rank 4, D,ENS, +5.56%), TECHNOE 2025-01-28 (rank 1, D,ENS, -5.06%), ELECTCAST 2025-02-18 (rank 6, D,ENS, +5.68%), BLUEJET 2025-04-09 (rank 1, D,ENS, +8.99%), RAMCOSYS 2026-01-23 (rank 1, D,ENS, +16.47%), GENESYS 2026-03-30 (rank 4, ENS, +10.18%), DAVANGERE 2026-09-09 (rank 1, D, +17.36%)
- #2: ORICONENT 2024-01-16 (rank 2, D, -1.34%), HINDZINC 2024-05-30 (rank 1, D,ENS, +0.98%), BEPL 2024-07-19 (rank 10, D, +14.23%), SBGLP 2024-10-30 (rank 10, D, +9.30%), BIRLAMONEY 2025-01-17 (rank 2, D, -4.90%), HIRECT 2025-02-11 (rank 10, ENS, -5.99%), POKARNA 2025-04-04 (rank 2, D,ENS, +20.62%), ASHAPURMIN 2026-02-13 (rank 4, ENS, -3.71%), DYCL 2026-05-18 (rank 10, D, +11.28%), WELCORP 2026-09-15 (rank 8, D, +12.85%)
- #3: DISHTV 2024-01-15 (rank 6, D,ENS, -3.00%), BBOX 2024-05-07 (rank 4, D,ENS, +7.97%), TIIL 2024-08-06 (rank 8, ENS, +3.10%), SMSPHARMA 2024-10-22 (rank 3, D,ENS, -1.91%), NETWEB 2025-01-28 (rank 7, ENS, +11.08%), VAKRANGEE 2025-02-27 (rank 1, D, +4.41%), SANGAMIND 2025-08-05 (rank 2, D,ENS, +0.86%), MRPL 2026-03-19 (rank 10, ENS, -5.45%), DREDGECORP 2026-06-11 (rank 5, D, +4.95%), WELCORP 2026-09-15 (rank 8, D, +12.85%)
- #4: ANGELONE 2024-01-24 (rank 2, D,ENS, +13.13%), PFS 2024-03-18 (rank 1, D,ENS, +15.05%), DREDGECORP 2024-08-26 (rank 6, ENS, -4.54%), SEAMECLTD 2024-11-22 (rank 7, D,ENS, +14.88%), SALZERELEC 2025-02-11 (rank 1, D,ENS, +0.72%), GRWRHITECH 2025-04-04 (rank 1, D,ENS, +20.20%), GANECOS 2025-11-20 (rank 1, D,ENS, +9.15%), AWFIS 2026-02-16 (rank 4, D,ENS, -3.38%), DREAMFOLKS 2026-03-30 (rank 9, ENS, +35.71%), ALOKINDS 2026-09-01 (rank 1, D,ENS, -2.19%)
- #5: BEML 2024-02-13 (rank 3, D,ENS, +8.16%), GEOJITFSL 2024-06-04 (rank 1, D,ENS, +19.04%), IIFLCAPS 2024-11-13 (rank 2, D,ENS, -1.30%), TECHNOE 2025-01-24 (rank 1, D,ENS, -2.19%), SUMMITSEC 2025-02-03 (rank 5, D, -5.15%), INDOCO 2025-02-27 (rank 2, D,ENS, +15.88%), CARTRADE 2025-04-09 (rank 5, D,ENS, +10.64%), SUVEN 2026-01-27 (rank 1, D,ENS, +8.08%), DCAL 2026-03-30 (rank 1, D,ENS, +18.14%), DAVANGERE 2026-09-09 (rank 1, D, +17.36%)

## Data and checks

- Tree rows 32,076; kept 23,598 (from 2021-10-01, not ETF, a lane, complete); stock-days 18,973; a stock-day whose rows disagree on the group: 0, on the D1 net: 0.
- Bars: 0 stock-days without T-1, T0 and D1-D5 bars (left out). The tree's D1 net against the bars: 18,973 of 18,973 within 0.01 pp (largest difference 0).
- 3-minute sessions: 29,180 usable of 30,177 asked (29,910 with bars); T-1 usable on 96.1% and T0 on 96.0% of the study's picks; reasons {'under 80% of bars': 156, 'first low off the daily bar by > 0.5%': 250, 'first high off the daily bar by > 0.5%': 122, 'no bars that day': 131, 'first open off the daily bar by > 0.5%': 178, 'no 09:15 bar': 24, 'no 3-minute file': 136}.
- Panel row of T0 found for 100.0%; Smallcap 250's open missing (T0 close used) 0 times.

## What this is not

- The best of about a million combinations on two years will look better in discovery than it can be; the test years are the measure.
- Not a test of fills or capacity: every number buys the exact D1 open, and the tree's 3 positions are ignored.
- Prior evidence on these picks is negative: JL1 (no skill on 10,534 jumpy picks), the SDE branch and buying every jumpy pick at the open all failed.
