# stratlab v1.0.1 - the strategy factory (STRATLAB_20261122_001)

stratlab v1.0.1 | soullab v1.0 | setuplab v1.1 | declaration c5c7d162d4623157 | 2026-11-22 01:01

Every rule was built and chosen on HALF A of the stocks (2020-2026). Then each qualified rule met, once, the judges it never saw: HALF B (the other stocks, the same years) and, for the market, EVERY STOCK BEFORE 2020. CONFIRMED = right side on every judge with p at most 0.05 divided by the number of rules judged (market 21 rules, p <= 0.0024; picks 49 rules, p <= 0.001). Research only: a rule worth trading is frozen on its own and judged forward.

## Verdict

| list | qualified on half A | judged | **CONFIRMED** | the top rules together: hidden stocks | hidden years |
|---|---|---|---|---|---|
| MARKET BUY, hold 2 sessions | 18 | 1 | **1** | 221: +0.60 [+0.57, +0.88], p 2.1e-06 | 23: +0.57 [+0.57, +0.57], p 0 |
| MARKET AVOID, hold 2 sessions | 10 | 5 | **0** | 726: -1.26 [-1.71, -0.76], p 8.8e-08 | 315: -0.29 [-0.96, +0.49], p 0.22 |
| MARKET BUY, hold 3 sessions | 4 | 2 | **0** | 204: +1.44 [+0.21, +2.33], p 0.0036 | 101: +0.13 [-2.53, +1.43], p 0.45 |
| MARKET AVOID, hold 3 sessions | 15 | 7 | **0** | 674: -1.32 [-1.93, -0.68], p 2.5e-05 | 303: -0.32 [-1.21, +0.57], p 0.24 |
| MARKET BUY, hold 5 sessions | 3 | 3 | **0** | 534: +0.34 [-0.47, +1.11], p 0.2 | 184: -0.34 [-1.70, +1.22], p 0.68 |
| MARKET AVOID, hold 5 sessions | 4 | 3 | **0** | 561: -1.01 [-1.85, -0.15], p 0.011 | 318: -0.69 [-1.60, +0.33], p 0.081 |
| PICKS BUY at the D1 open, sold at the D5 close | 54 | 7 | **0** | 568: +0.25 [-0.50, +1.03], p 0.27 | - |
| PICKS SKIP, sold at the D5 close | 49 | 9 | **0** | 361: -0.78 [-1.78, +0.37], p 0.077 | - |
| PICKS BUY at the D1 open, sold at the D6 open | 58 | 8 | **0** | 545: +0.04 [-0.79, +0.89], p 0.46 | - |
| PICKS SKIP, sold at the D6 open | 44 | 7 | **0** | 360: -0.84 [-1.93, +0.34], p 0.073 | - |
| PICKS BUY at the D1 open, sold at the D10 close | 49 | 7 | **0** | 756: +0.77 [-0.25, +1.88], p 0.077 | - |
| PICKS SKIP, sold at the D10 close | 58 | 9 | **0** | 623: -0.26 [-1.29, +0.67], p 0.3 | - |
| PICKS TRIGGER (wait on D1-D5) | 2 | 2 | **2** | 292: +4.70 [+3.11, +5.89], p 1.5e-11 | - |

Numbers: stock-days, the mean of the yardstick in points [95%] and its one-sided p - market: vs every eligible stock bought at the same open; picks: vs the day's other picks (TRIGGER: its trades vs the day's D1-open picks). AVOID / SKIP want it below 0.

## CONFIRMED rules

- **MARKET BUY, hold 2 sessions** - d_donch_pos_20_rmean50 fell twice (the session before and that session) AND dow_5 turned down (rose the session before, fell that session) AND d_pos_in_52w_range fell the session before. Half A: 229 trades (34.2 a year), net +0.67 [+0.57, +0.69], yardstick +0.70 [+0.56, +0.72]. Hidden stocks: 221: +0.60 [+0.57, +0.88], p 2.1e-06. Hidden years: 23: +0.57 [+0.57, +0.57], p 0.
- **PICKS TRIGGER (wait on D1-D5)** - d_donch_pos_20 in its low third (<= 0.216092) AND d_body_ratio_rmean20 fell twice (the session before and that session) AND x_z_d_donch_pos_20 in its upper half (> -0.290994). Half A: 178 trades (26.7 a year), net +2.95 [+1.29, +4.62], yardstick +6.59 [+4.46, +8.40]. Hidden stocks: 206: +4.26 [+2.82, +5.54], p 1.1e-09.
- **PICKS TRIGGER (wait on D1-D5)** - d_donch_pos_20 in its low third (<= 0.216092) AND d_body_ratio_rmean50 fell twice (the session before and that session) AND x_z_d_donch_pos_20 in its upper half (> -0.290994). Half A: 197 trades (29.6 a year), net +2.48 [+0.98, +3.94], yardstick +6.14 [+4.01, +8.02]. Hidden stocks: 199: +5.20 [+2.62, +7.18], p 5.6e-06.

## MARKET BUY, hold 2 sessions

Searched on half A: 2449 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 242 checked for every condition earning its place, 60 through the block bootstrap; **18 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_donch_pos_20_rmean50 fell twice (the session before and that session) AND dow_5 turned down (rose the session before, fell that session) AND d_pos_in_52w_range fell the session before | 34.2 | +0.67 [+0.57, +0.69] | +0.70 [+0.56, +0.72] | 0 of 2 | 221: +0.60 [+0.57, +0.88], p 2.1e-06 | 23: +0.57 [+0.57, +0.57], p 0 | CONFIRMED |
| - | d_wq_23 rose that session AND dow_4 rose that session AND d_amihud_20 in its low third (<= 0.000588022) *(does not qualify)* | 37.1 | +0.65 [-0.54, +2.05] | +1.25 [+0.65, +1.73] | 0 of 3 | - | - | not judged (did not qualify) |
| - | d_vol_yz_50 rose the session before AND d_vol_surge_20 turned up (fell the session before, rose that session) AND d_mdi14_rrank20 turned up (fell the session before, rose that session) *(does not qualify)* | 23.3 | +1.44 [+0.45, +2.36] | +1.24 [+0.61, +1.90] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_donch_pos_50 fell the session before AND dow_5 rose the session before AND x_rank_d_adx14 in its high third (> 0.664172) *(does not qualify)* | 21.6 | +1.62 [+0.60, +1.87] | +1.64 [+0.60, +1.90] | 0 of 2 | - | - | not judged (did not qualify) |
| - | dow_4 in its high third (> 0) AND x_rank_d_realvol_ratio_20_60 turned down (rose the session before, fell that session) AND x_rank_d_amihud_20 in its low third (<= 0.333018) *(does not qualify)* | 25.2 | +0.12 [-1.22, +1.76] | +0.94 [+0.45, +1.52] | 0 of 3 | - | - | not judged (did not qualify) |
| - | d_rsi14 in its upper half (> 50.9756) AND d_ema20_angle_deg in its low third (<= -0.0930867) AND d_wq_6 fell that session *(does not qualify)* | 19.5 | +1.20 [+0.19, +2.19] | +1.20 [+0.43, +1.92] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_mdi14_diff1 in its upper half (> -0.713634) AND dow_4 rose that session AND soul_m_self_n in its high third (> 1454) *(does not qualify)* | 61.3 | -0.52 [-1.41, +0.85] | +0.85 [+0.42, +1.24] | 0 of 2 | - | - | not judged (did not qualify) |
| - | dow_4 rose that session AND x_rank_d_amihud_20 in its low third (<= 0.333018) AND x_rank_d_bb_pctb_20 turned down (rose the session before, fell that session) *(does not qualify)* | 35.6 | +0.13 [-0.88, +1.16] | +0.90 [+0.35, +1.83] | 0 of 3 | - | - | not judged (did not qualify) |
| - | d_vol_surge_20 turned up (fell the session before, rose that session) AND d_body_ratio_rmean50 fell that session AND d_mdi14_rrank10 turned up (fell the session before, rose that session) *(does not qualify)* | 26.0 | +1.03 [+0.16, +1.91] | +0.82 [+0.23, +1.42] | 2 of 7 | - | - | not judged (did not qualify) |
| - | d_hl_run fell the session before AND d_n_5pct_up_252 turned up (fell the session before, rose that session) AND soul_p_tp fell the session before *(does not qualify)* | 24.5 | +0.98 [-0.16, +2.13] | +1.08 [+0.13, +2.04] | 0 of 7 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## MARKET AVOID, hold 2 sessions

Searched on half A: 2449 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 231 checked for every condition earning its place, 60 through the block bootstrap; **10 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_wq_38 rose the session before AND d_realvol_ratio_20_60 in its upper half (> 0.959125) AND d_n_5pct_up_60 rose twice (the session before and that session) | 25.5 | -2.97 [-3.96, -1.91] | -2.74 [-3.74, -1.67] | 0 of 7 | 169: -1.73 [-2.82, -0.63], p 0.00093 | 55: -1.69 [-3.49, +0.06], p 0.029 | NOT CONFIRMED |
| RS | d_dvol_z20 fell the session before AND d_n_5pct_up_60 rose twice (the session before and that session) AND soul_m_cross_tp fell the session before | 26.7 | -2.89 [-3.96, -1.77] | -2.68 [-3.65, -1.64] | 0 of 7 | 193: -2.21 [-3.24, -1.15], p 1.6e-05 | 81: -1.11 [-2.47, +0.19], p 0.051 | NOT CONFIRMED |
| R | d_atr_pct rose the session before AND d_wq_44 rose twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) | 30.4 | -2.72 [-3.66, -1.70] | -2.49 [-3.38, -1.60] | 0 of 7 | 194: -0.81 [-1.63, +0.03], p 0.026 | 90: -0.76 [-1.90, +0.54], p 0.11 | NOT CONFIRMED |
| R | d_wq_44 rose twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND x_turnover_med in its lower half (<= 1.0588e+08) | 32.1 | -2.44 [-3.49, -1.46] | -2.33 [-3.33, -1.39] | 2 of 7 | 220: -1.36 [-2.14, -0.58], p 0.00028 | 115: -0.01 [-1.11, +1.27], p 0.49 | NOT CONFIRMED |
| RS | d_n_5pct_up_252 rose twice (the session before and that session) AND x_rank_d_range_pct fell that session AND soul_m_self_ret rose twice (the session before and that session) | 34.9 | -2.01 [-2.84, -1.17] | -1.84 [-2.62, -1.07] | 1 of 7 | 214: -1.09 [-1.86, -0.30], p 0.003 | 97: +0.00 [-1.08, +1.33], p 0.5 | NOT CONFIRMED |
| - | d_dvol_z20 fell twice (the session before and that session) AND d_realvol_60 in its high third (> 45.1015) AND d_n_5pct_up_252 rose twice (the session before and that session) *(does not qualify)* | 13.7 | -3.75 [-5.37, -2.15] | -3.72 [-5.29, -2.13] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_wq_12 rose the session before AND d_n_5pct_up_60 rose twice (the session before and that session) AND soul_p_mae rose that session *(does not qualify)* | 27.7 | -2.52 [-3.40, -1.59] | -2.15 [-3.01, -1.23] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_wq_23 fell twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND x_z_d_dvol_z20 fell the session before *(does not qualify)* | 22.8 | -2.41 [-3.64, -1.26] | -2.26 [-3.42, -1.15] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_wq_44 rose twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND soul_m_gap_ret in its low third (<= -0.00641249) *(does not qualify)* | 23.0 | -2.51 [-3.60, -1.39] | -2.15 [-3.27, -1.03] | 0 of 7 | - | - | not judged (did not qualify) |
| - | w_ret_13w rose that session AND d_n_5pct_up_60 rose twice (the session before and that session) AND soul_m_cross_ret turned up (fell the session before, rose that session) *(does not qualify)* | 28.0 | -2.02 [-2.93, -1.07] | -1.83 [-2.63, -1.00] | 0 of 7 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## MARKET BUY, hold 3 sessions

Searched on half A: 2449 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 236 checked for every condition earning its place, 60 through the block bootstrap; **4 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_donch_pos_20_lag5 in its lower half (<= 0.493712) AND d_days_since_5pct_up fell the session before AND x_z_d_pos_in_52w_range turned up (fell the session before, rose that session) | 28.3 | +3.08 [+1.26, +4.42] | +1.09 [+0.24, +2.21] | 1 of 7 | 204: +1.44 [+0.21, +2.33], p 0.0036 | 101: +0.13 [-2.53, +1.43], p 0.45 | NOT CONFIRMED |
| S | d_days_since_5pct_up fell the session before AND x_z_d_pos_in_52w_range turned up (fell the session before, rose that session) AND soul_m_cross_mfe in its upper half (> 0.0496479) | 27.6 | +2.35 [+0.42, +3.86] | +1.18 [+0.17, +2.24] | 1 of 7 | 229: +0.77 [-0.53, +1.61], p 0.08 | 108: +0.05 [-1.82, +1.23], p 0.47 | NOT CONFIRMED |
| - | d_rsi14 in its upper half (> 50.9756) AND d_ema20_angle_deg in its low third (<= -0.0930867) AND w_close_pos in its low third (<= 0.289333) *(does not qualify)* | 18.3 | +2.35 [+1.01, +3.71] | +1.89 [+0.91, +2.82] | 2 of 7 | - | - | not judged (did not qualify) |
| - | d_dvol_z252 in its low third (<= -0.341778) AND dow_5 in its high third (> 0) AND d_downside_dev_60 in its upper half (> 23.8642) *(does not qualify)* | 32.8 | +3.73 [+1.50, +7.14] | +1.35 [+0.56, +2.55] | 0 of 2 | - | - | not judged (did not qualify) |
| - | w_vol_vs_4w in its lower half (<= 0.83848) AND dow_4 in its upper half (> 0) AND x_rank_d_dvol_z20 fell twice (the session before and that session) *(does not qualify)* | 34.8 | +0.03 [-1.59, +2.18] | +1.00 [+0.47, +1.59] | 0 of 3 | - | - | not judged (did not qualify) |
| - | d_rsi14 in its upper half (> 50.9756) AND d_ema20_angle_deg in its low third (<= -0.0930867) AND d_wq_6 fell that session *(does not qualify)* | 19.5 | +1.51 [+0.44, +2.50] | +1.29 [+0.44, +2.10] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_dvol_z252 in its low third (<= -0.341778) AND d_vol_z252 in its high third (> -0.0617399) AND x_z_d_donch_pos_20 turned up (fell the session before, rose that session) *(does not qualify)* | 36.1 | +0.73 [-1.20, +2.64] | +0.97 [+0.22, +1.90] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_vol_surge_50 turned up (fell the session before, rose that session) AND niftyfmcg_ret_1d in its upper half (> 0.000203968) AND soul_m_self_tp fell twice (the session before and that session) *(does not qualify)* | 37.0 | +0.57 [-0.31, +1.42] | +0.90 [+0.16, +1.65] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_days_since_5pct_up fell that session AND x_z_d_pos_in_52w_range fell twice (the session before and that session) AND x_rank_d_ret_skew_60 in its upper half (> 0.498173) *(does not qualify)* | 30.1 | +2.36 [+0.54, +4.00] | +1.39 [+0.12, +2.85] | 2 of 7 | - | - | not judged (did not qualify) |
| - | d_vol_z252 in its lower half (<= -0.238559) AND dow_5 in its upper half (> 0) AND soul_p_mae in its lower half (<= -0.0400953) *(does not qualify)* | 35.5 | +4.36 [+0.92, +7.03] | +1.36 [-0.02, +2.43] | 1 of 2 | - | - | not judged (did not qualify) |
| - | d_dvol_z252 in its low third (<= -0.341778) AND d_vol_z252 in its high third (> -0.0617399) AND d_n_5pct_up_252 in its high third (> 12) *(does not qualify)* | 46.7 | +0.64 [-1.84, +3.52] | +1.07 [-0.13, +2.76] | 1 of 7 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## MARKET AVOID, hold 3 sessions

Searched on half A: 2449 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 228 checked for every condition earning its place, 60 through the block bootstrap; **15 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_wq_38 rose the session before AND d_realvol_ratio_20_60 in its upper half (> 0.959125) AND d_n_5pct_up_60 rose twice (the session before and that session) | 25.5 | -3.62 [-4.91, -2.28] | -3.41 [-4.66, -2.10] | 0 of 7 | 169: -1.86 [-3.22, -0.49], p 0.0034 | 55: -1.67 [-3.86, +0.31], p 0.054 | NOT CONFIRMED |
| R | d_wq_44 rose twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND x_z_d_atr_pct rose the session before | 33.9 | -2.91 [-3.92, -1.83] | -2.90 [-3.85, -1.95] | 1 of 7 | 216: -0.98 [-1.91, -0.02], p 0.02 | 102: -0.43 [-1.68, +1.03], p 0.27 | NOT CONFIRMED |
| RS | d_n_5pct_up_252 rose twice (the session before and that session) AND x_z_d_donch_pos_20 fell that session AND soul_p_ret_vs_market in its low third (<= -0.0010153) | 32.1 | -2.94 [-4.03, -1.98] | -2.84 [-3.85, -1.87] | 0 of 7 | 223: -1.53 [-2.62, -0.39], p 0.0035 | 66: -0.67 [-2.67, +1.22], p 0.25 | NOT CONFIRMED |
| R | d_donch_pos_20 fell that session AND d_slope_stability in its low third (<= 2.20421) AND d_n_5pct_up_60 rose twice (the session before and that session) | 30.3 | -3.13 [-4.38, -1.89] | -3.00 [-4.20, -1.78] | 0 of 7 | 196: -0.72 [-2.09, +0.71], p 0.16 | 114: -1.15 [-2.53, +0.11], p 0.045 | NOT CONFIRMED |
| R | d_wq_44 rose twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND x_turnover_med in its lower half (<= 1.0588e+08) | 32.1 | -2.33 [-3.63, -1.09] | -2.57 [-3.80, -1.42] | 1 of 7 | 220: -1.79 [-2.64, -0.86], p 4.8e-05 | 115: -0.43 [-1.75, +1.03], p 0.27 | NOT CONFIRMED |
| S | d_n_5pct_up_60 rose twice (the session before and that session) AND x_z_d_intraday_ret_pct turned down (rose the session before, fell that session) AND soul_m_self_ret rose twice (the session before and that session) | 34.6 | -1.89 [-2.76, -1.04] | -1.99 [-2.84, -1.19] | 1 of 7 | 218: -1.61 [-2.46, -0.74], p 0.00011 | 95: -0.83 [-2.13, +0.34], p 0.092 | NOT CONFIRMED |
| S | d_wq_20 turned down (rose the session before, fell that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND soul_m_tp_se fell twice (the session before and that session) | 26.1 | -2.15 [-3.20, -1.12] | -1.86 [-2.83, -0.89] | 0 of 7 | 158: -1.54 [-2.64, -0.42], p 0.0034 | 98: -0.53 [-1.74, +0.85], p 0.22 | NOT CONFIRMED |
| - | dow_2 fell the session before AND d_n_5pct_up_252 rose twice (the session before and that session) AND soul_p_ret_vs_market in its low third (<= -0.0010153) *(does not qualify)* | 26.7 | -2.75 [-3.65, -1.86] | -2.87 [-3.68, -2.04] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_wq_44 rose twice (the session before and that session) AND d_n_5pct_up_60 rose twice (the session before and that session) AND niftyfinservice_ret_1d in its lower half (<= 0.000591119) *(does not qualify)* | 22.8 | -2.66 [-3.85, -1.39] | -2.77 [-3.95, -1.57] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_mdi14_diff1 rose twice (the session before and that session) AND d_donch_pos_20_rmean50 rose that session AND d_n_5pct_up_252 rose twice (the session before and that session) *(does not qualify)* | 23.1 | -3.38 [-4.97, -1.77] | -3.09 [-4.71, -1.39] | 1 of 7 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## MARKET BUY, hold 5 sessions

Searched on half A: 2449 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 288 checked for every condition earning its place, 60 through the block bootstrap; **3 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_n_5pct_up_252 turned up (fell the session before, rose that session) AND niftyit_ret_1d fell the session before AND crudeoil_ret_1d turned down (rose the session before, fell that session) | 30.4 | +3.13 [+0.43, +5.33] | +1.78 [+0.48, +3.20] | 1 of 7 | 179: +1.59 [+0.20, +2.77], p 0.0088 | 67: +0.23 [-1.17, +1.77], p 0.38 | NOT CONFIRMED |
| RS | d_wick_skew in its high third (> 0.164027) AND d_n_5pct_up_252 rose twice (the session before and that session) AND soul_m_gap_tp fell twice (the session before and that session) | 30.3 | +1.55 [+0.09, +3.05] | +1.55 [+0.28, +2.90] | 1 of 7 | 205: -0.59 [-1.65, +0.49], p 0.86 | 95: -0.61 [-2.62, +1.75], p 0.71 | NOT CONFIRMED |
| R | d_n_5pct_up_252 turned up (fell the session before, rose that session) AND x_turnover_med rose twice (the session before and that session) AND mkt_d_realvol_20 in its upper half (> 11.9598) | 28.6 | +2.35 [+0.52, +4.02] | +1.48 [+0.15, +2.70] | 1 of 7 | 176: +0.26 [-0.90, +1.51], p 0.34 | 28: -0.31 [-3.51, +2.59], p 0.58 | NOT CONFIRMED |
| - | d_bb_bw_20 fell twice (the session before and that session) AND dow_4 fell the session before AND soul_m_cross_ret fell twice (the session before and that session) *(does not qualify)* | 26.1 | -2.59 [-7.47, +4.83] | +1.89 [+1.20, +3.10] | 0 of 3 | - | - | not judged (did not qualify) |
| - | dow_4 fell the session before AND x_rank_d_realvol_20 in its low third (<= 0.331202) AND soul_m_cross_mae fell twice (the session before and that session) *(does not qualify)* | 24.3 | -1.00 [-4.86, +3.04] | +2.08 [+0.96, +3.40] | 0 of 3 | - | - | not judged (did not qualify) |
| - | dow_4 fell the session before AND d_realvol_20 in its low third (<= 29.3248) AND soul_m_cross_ret fell twice (the session before and that session) *(does not qualify)* | 20.7 | +0.11 [-3.46, +3.41] | +2.55 [+0.87, +4.89] | 0 of 3 | - | - | not judged (did not qualify) |
| - | dow_4 fell the session before AND x_rank_d_downside_dev_60 in its low third (<= 0.328395) AND soul_m_cross_ret fell twice (the session before and that session) *(does not qualify)* | 21.2 | -1.45 [-4.40, +2.61] | +2.12 [+0.80, +3.65] | 0 of 3 | - | - | not judged (did not qualify) |
| - | d_wq_38 in its low third (<= -0.36366) AND d_days_since_5pct_up turned down (rose the session before, fell that session) AND x_z_d_pos_in_52w_range fell twice (the session before and that session) *(does not qualify)* | 30.4 | +4.94 [+2.08, +6.63] | +2.10 [+0.79, +3.34] | 2 of 7 | - | - | not judged (did not qualify) |
| - | d_days_since_5pct_up fell that session AND x_z_d_pos_in_52w_range fell twice (the session before and that session) AND x_z_d_ret_skew_60 in its upper half (> -0.0776339) *(does not qualify)* | 30.1 | +4.74 [+1.95, +6.84] | +2.16 [+0.72, +3.58] | 2 of 7 | - | - | not judged (did not qualify) |
| - | d_donch_pos_20_lag5 in its upper half (> 0.493712) AND dow_4 fell the session before AND soul_m_cross_ret fell twice (the session before and that session) *(does not qualify)* | 23.4 | -0.01 [-6.34, +4.48] | +1.61 [+0.57, +2.72] | 0 of 3 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## MARKET AVOID, hold 5 sessions

Searched on half A: 2449 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 220 checked for every condition earning its place, 60 through the block bootstrap; **4 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_bb_pctb_20 fell that session AND d_slope_stability in its lower half (<= 3.9478) AND d_n_5pct_up_60 rose twice (the session before and that session) | 25.8 | -4.48 [-6.08, -2.85] | -4.35 [-5.93, -2.70] | 1 of 7 | 172: -1.30 [-2.87, +0.45], p 0.061 | 81: -0.98 [-3.07, +1.18], p 0.18 | NOT CONFIRMED |
| R | d_wq_6 rose the session before AND d_n_5pct_up_252 rose twice (the session before and that session) AND niftyfinservice_ret_1d rose twice (the session before and that session) | 27.1 | -2.12 [-3.48, -0.86] | -2.84 [-3.92, -1.67] | 0 of 7 | 200: -0.97 [-2.22, +0.34], p 0.064 | 118: -0.34 [-1.79, +0.96], p 0.31 | NOT CONFIRMED |
| RS | d_n_5pct_up_60 rose twice (the session before and that session) AND niftypsubank_ret_1d in its high third (> 0.0067907) AND soul_m_tp fell twice (the session before and that session) | 35.0 | -2.23 [-3.24, -1.05] | -2.79 [-3.89, -1.51] | 1 of 7 | 245: -1.00 [-2.11, +0.25], p 0.051 | 143: -0.96 [-2.15, +0.39], p 0.068 | NOT CONFIRMED |
| - | d_dvol_z20 fell the session before AND d_n_5pct_up_60 rose twice (the session before and that session) AND x_rank_d_range_pct fell that session *(does not qualify)* | 22.5 | -3.70 [-5.24, -2.20] | -4.01 [-5.35, -2.76] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_n_5pct_up_252 rose twice (the session before and that session) AND niftybank_ret_1d rose twice (the session before and that session) AND soul_m_cross_mfe fell the session before *(does not qualify)* | 20.9 | -2.54 [-4.14, -1.00] | -3.29 [-4.48, -1.89] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_dvol_z20 fell twice (the session before and that session) AND d_n_5pct_up_252 rose twice (the session before and that session) AND x_rank_d_atr_pct in its upper half (> 0.49446) *(does not qualify)* | 15.5 | -3.01 [-4.78, -1.26] | -3.55 [-5.36, -1.73] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_bb_pctb_20 fell that session AND d_n_5pct_up_60 rose twice (the session before and that session) AND mkt_d_adx14 fell that session *(does not qualify)* | 29.7 | -2.94 [-4.63, -1.31] | -3.11 [-4.62, -1.53] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_mdi14_diff1 rose twice (the session before and that session) AND d_donch_pos_20_rmean50 rose that session AND d_n_5pct_up_252 rose twice (the session before and that session) *(does not qualify)* | 23.1 | -3.55 [-5.43, -1.60] | -3.56 [-5.51, -1.50] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_n_5pct_up_252 rose twice (the session before and that session) AND niftyfinservice_ret_1d rose twice (the session before and that session) AND soul_m_self_sl in its lower half (<= 0.396835) *(does not qualify)* | 23.9 | -1.99 [-3.76, -0.54] | -2.68 [-3.97, -1.49] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_n_5pct_up_252 rose twice (the session before and that session) AND x_rank_d_gap_pct fell the session before AND niftyfinservice_ret_1d rose twice (the session before and that session) *(does not qualify)* | 26.5 | -2.71 [-4.63, -1.01] | -2.92 [-4.38, -1.48] | 0 of 7 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS BUY at the D1 open, sold at the D5 close

Searched on half A: 2720 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 210 checked for every condition earning its place, 60 through the block bootstrap; **54 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | ctx_nifty_minus_mid_20 in its upper half (> -0.00871194) AND ctx_state_support in its high third (> 0.9) AND ctx_state_atr_rank in its high third (> 0.78) | 37.1 | +4.86 [+2.15, +8.05] | +3.19 [+2.13, +4.38] | 1 of 7 | 307: +0.24 [-0.82, +1.45], p 0.34 | - | NOT CONFIRMED |
| RS | soul_p_mae in its lower half (<= -0.0434973) AND ctx_state_support in its high third (> 0.9) AND ctx_state_vol_elevated is 1 | 36.3 | +4.51 [+1.36, +7.97] | +3.35 [+2.12, +4.60] | 0 of 7 | 257: -0.71 [-1.89, +0.67], p 0.87 | - | NOT CONFIRMED |
| RS | soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) AND ctx_state_vol_elevated is 1 | 29.3 | +4.80 [+1.64, +8.20] | +3.53 [+2.06, +4.95] | 0 of 7 | 221: +0.48 [-0.86, +1.81], p 0.24 | - | NOT CONFIRMED |
| R | d_vol_yz_50 in its high third (> 0.0383275) AND d_body_ratio_rmean50 in its lower half (<= -0.0725536) AND ctx_state_support in its high third (> 0.9) | 27.6 | +5.55 [+1.42, +9.60] | +3.68 [+2.05, +5.34] | 0 of 7 | 171: -1.22 [-2.42, +0.29], p 0.96 | - | NOT CONFIRMED |
| RS | d_downside_dev_60 in its high third (> 33.0532) AND soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) | 31.5 | +4.57 [+1.54, +7.74] | +3.55 [+2.02, +4.91] | 1 of 7 | 194: +0.46 [-1.09, +1.98], p 0.27 | - | NOT CONFIRMED |
| S | soul_m_self_mae in its low third (<= -0.051603) AND ctx_nifty_ret20 in its low third (<= -0.00380031) AND ctx_state_support in its high third (> 0.9) | 30.9 | +4.64 [+1.35, +8.27] | +3.44 [+1.87, +5.03] | 0 of 7 | 250: +0.52 [-0.67, +1.98], p 0.22 | - | NOT CONFIRMED |
| S | soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) AND ctx_both_engines is 1 | 26.0 | +4.47 [+1.91, +7.26] | +3.57 [+1.84, +5.05] | 0 of 7 | 189: +0.21 [-1.07, +1.60], p 0.38 | - | NOT CONFIRMED |
| - | d_vol_yz_50 in its upper half (> 0.0335688) AND d_donch_pos_20_rmean50 in its low third (<= 0.476026) AND ctx_state_support in its high third (> 0.9) | 32.1 | +4.88 [+0.92, +9.21] | +3.38 [+1.93, +4.88] | 1 of 7 | - | - | - |
| - | d_wq_44 in its high third (> 0.147069) AND ctx_state_support in its high third (> 0.9) AND ctx_state_atr_rank in its high third (> 0.78) | 33.9 | +3.95 [+1.36, +6.84] | +3.05 [+1.91, +4.32] | 0 of 7 | - | - | - |
| - | d_close_roll_slope_20_rstd20 rose twice (the session before and that session) AND soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_num is 8 | 28.2 | +4.24 [+1.13, +7.53] | +3.29 [+1.77, +4.78] | 0 of 7 | - | - | - |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS SKIP, sold at the D5 close

Searched on half A: 2720 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 210 checked for every condition earning its place, 60 through the block bootstrap; **49 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_cmf20_rmean50 in its high third (> 0.0440514) AND d_amihud_60 in its high third (> 0.00394288) AND d_upside_vol_ratio in its low third (<= 1.10921) | 26.7 | -3.45 [-5.88, -1.06] | -4.26 [-5.90, -2.53] | 0 of 7 | 90: -0.06 [-2.08, +2.23], p 0.48 | - | NOT CONFIRMED |
| R | d_donch_pos_50_lag5 in its low third (<= 0.424537) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_amihud_60 in its high third (> 0.00394288) | 27.5 | -2.72 [-5.28, -0.48] | -3.84 [-5.34, -2.32] | 1 of 7 | 93: -0.78 [-2.66, +1.10], p 0.21 | - | NOT CONFIRMED |
| R | d_rsi14_obv_x in its upper half (> -4.70663e+06) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_drawdown_252 in its low third (<= -0.267957) | 26.0 | -1.74 [-3.58, -0.02] | -3.45 [-4.83, -1.95] | 0 of 6 | 139: -0.85 [-2.29, +0.60], p 0.13 | - | NOT CONFIRMED |
| RS | d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_ret in its low third (<= 0.00182336) AND ctx_state_ema50_slope_atr in its low third (<= -0.0572457) | 26.4 | -1.99 [-4.78, +0.53] | -3.67 [-5.16, -1.95] | 1 of 7 | 122: -1.56 [-3.68, +0.88], p 0.086 | - | NOT CONFIRMED |
| R | d_dist_from_52wh in its low third (<= -7.7016) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_realvol_60 in its high third (> 55.1885) | 32.0 | -1.43 [-3.87, +0.83] | -3.36 [-4.70, -1.93] | 1 of 7 | 155: -0.03 [-1.80, +1.98], p 0.49 | - | NOT CONFIRMED |
| S | w_ret_13w in its low third (<= 2.3812) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_ret in its lower half (<= 0.0033653) | 26.4 | -2.50 [-5.10, -0.15] | -3.49 [-5.03, -1.80] | 2 of 7 | 118: -1.94 [-3.86, +0.37], p 0.036 | - | NOT CONFIRMED |
| S | d_cmf20_rmean50 in its high third (> 0.0440514) AND d_upside_vol_ratio in its low third (<= 1.10921) AND soul_p_sl in its high third (> 0.41309) | 30.0 | -2.00 [-4.39, +0.34] | -3.30 [-5.09, -1.51] | 2 of 7 | 133: +0.07 [-1.93, +2.31], p 0.53 | - | NOT CONFIRMED |
| S | d_dist_from_52wh in its low third (<= -7.7016) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_mfe in its lower half (<= 0.0583733) | 27.6 | -1.89 [-4.42, +0.50] | -3.08 [-4.68, -1.51] | 2 of 7 | 165: -0.99 [-2.47, +0.67], p 0.11 | - | NOT CONFIRMED |
| S | d_donch_pos_50_lag5 in its low third (<= 0.424537) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_mae in its low third (<= -0.0471797) | 28.7 | -2.16 [-4.74, +0.36] | -3.19 [-4.88, -1.41] | 1 of 7 | 120: -0.04 [-1.96, +1.74], p 0.48 | - | NOT CONFIRMED |
| - | d_obv_slope rose that session AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_drawdown_252 in its low third (<= -0.267957) | 26.9 | -1.21 [-3.00, +0.39] | -3.05 [-4.19, -1.84] | 1 of 7 | - | - | - |
| - | w_vol_vs_4w in its lower half (<= 0.83382) AND d_realvol_20 in its high third (> 51.5943) AND d_days_since_5pct_up in its high third (> 39) | 26.6 | -1.59 [-3.86, +0.47] | -3.54 [-5.25, -1.84] | 0 of 7 | - | - | - |
| - | w_vol_vs_4w in its low third (<= 0.643438) AND x_z_d_realvol_ratio_20_60 in its low third (<= -0.660663) AND ctx_state_event_num is 6 | 26.0 | -0.92 [-3.34, +1.71] | -3.08 [-4.33, -1.79] | 0 of 7 | - | - | - |
| - | d_dist_from_52wh in its low third (<= -7.7016) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND ctx_beta_mid in its lower half (<= 1.0578) | 30.9 | -2.00 [-4.28, +0.09] | -3.14 [-4.51, -1.78] | 0 of 7 | - | - | - |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS BUY at the D1 open, sold at the D6 open

Searched on half A: 2720 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 210 checked for every condition earning its place, 60 through the block bootstrap; **58 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| RS | soul_p_mae in its lower half (<= -0.0434973) AND ctx_state_support in its high third (> 0.9) AND ctx_state_vol_elevated is 1 | 36.3 | +5.21 [+1.59, +9.15] | +3.68 [+2.40, +5.06] | 0 of 7 | 257: -0.99 [-2.28, +0.49], p 0.92 | - | NOT CONFIRMED |
| R | d_vol_yz_50 in its high third (> 0.0383275) AND d_body_ratio_rmean50 in its lower half (<= -0.0725536) AND ctx_state_support in its high third (> 0.9) | 27.6 | +6.55 [+1.92, +11.29] | +4.18 [+2.36, +6.09] | 0 of 7 | 171: -1.45 [-2.86, +0.29], p 0.96 | - | NOT CONFIRMED |
| RS | soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) AND ctx_state_vol_elevated is 1 | 29.3 | +5.48 [+1.91, +9.31] | +3.84 [+2.30, +5.38] | 0 of 7 | 221: +0.30 [-1.09, +1.66], p 0.33 | - | NOT CONFIRMED |
| R | d_vol_yz_50 in its upper half (> 0.0335688) AND d_donch_pos_20_rmean50 in its low third (<= 0.476026) AND ctx_state_support in its high third (> 0.9) | 32.1 | +5.79 [+1.43, +10.58] | +3.84 [+2.29, +5.40] | 1 of 7 | 223: -0.94 [-2.30, +0.60], p 0.9 | - | NOT CONFIRMED |
| R | ctx_nifty_minus_mid_20 in its upper half (> -0.00871194) AND ctx_state_support in its high third (> 0.9) AND ctx_state_atr_rank in its high third (> 0.78) | 37.1 | +5.48 [+2.39, +9.21] | +3.38 [+2.21, +4.68] | 0 of 7 | 307: +0.03 [-1.11, +1.29], p 0.48 | - | NOT CONFIRMED |
| S | d_downside_dev_60 in its high third (> 33.0532) AND soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) | 31.5 | +5.11 [+1.65, +8.68] | +3.73 [+2.14, +5.21] | 1 of 7 | 194: +0.47 [-1.23, +2.09], p 0.29 | - | NOT CONFIRMED |
| S | soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) AND ctx_both_engines is 1 | 26.0 | +5.17 [+2.45, +8.20] | +3.92 [+2.07, +5.46] | 0 of 7 | 189: +0.24 [-1.08, +1.67], p 0.37 | - | NOT CONFIRMED |
| S | d_close_roll_slope_20_rstd20 rose twice (the session before and that session) AND soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_num is 8 | 28.2 | +5.05 [+1.51, +8.72] | +3.66 [+2.05, +5.29] | 0 of 7 | 212: +0.00 [-1.18, +1.28], p 0.5 | - | NOT CONFIRMED |
| - | d_wq_44 in its high third (> 0.147069) AND ctx_state_support in its high third (> 0.9) AND ctx_state_vol_elevated is 1 | 32.6 | +4.52 [+1.69, +7.83] | +3.38 [+2.04, +4.86] | 0 of 7 | - | - | - |
| - | d_ret_5d_roll_std in its high third (> 7.89591) AND d_close_roll_slope_50 in its lower half (<= 0.203164) AND ctx_state_support in its high third (> 0.9) | 25.2 | +5.24 [+0.12, +10.99] | +4.19 [+2.01, +6.51] | 1 of 7 | - | - | - |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS SKIP, sold at the D6 open

Searched on half A: 2720 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 210 checked for every condition earning its place, 60 through the block bootstrap; **44 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_cmf20_rmean50 in its high third (> 0.0440514) AND d_amihud_60 in its high third (> 0.00394288) AND d_upside_vol_ratio in its low third (<= 1.10921) | 26.7 | -3.42 [-6.43, -0.57] | -4.81 [-6.80, -2.84] | 0 of 7 | 90: -0.06 [-2.27, +2.41], p 0.48 | - | NOT CONFIRMED |
| R | d_donch_pos_50_lag5 in its low third (<= 0.424537) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_amihud_60 in its high third (> 0.00394288) | 27.5 | -2.38 [-5.41, +0.24] | -4.05 [-5.81, -2.35] | 1 of 7 | 93: -0.84 [-2.89, +1.17], p 0.21 | - | NOT CONFIRMED |
| R | d_dist_from_52wh in its low third (<= -7.7016) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_realvol_60 in its high third (> 55.1885) | 32.0 | -1.18 [-4.00, +1.41] | -3.69 [-5.30, -2.09] | 2 of 7 | 155: +0.10 [-1.82, +2.19], p 0.54 | - | NOT CONFIRMED |
| RS | w_ret_13w in its low third (<= 2.3812) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_ret in its lower half (<= 0.0033653) | 26.4 | -2.39 [-5.35, +0.21] | -3.95 [-5.70, -2.09] | 2 of 7 | 118: -2.27 [-4.33, +0.07], p 0.021 | - | NOT CONFIRMED |
| RS | d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_ret in its low third (<= 0.00182336) AND ctx_state_ema50_slope_atr in its low third (<= -0.0572457) | 26.4 | -1.82 [-5.03, +1.03] | -4.05 [-5.80, -2.08] | 1 of 7 | 122: -1.79 [-3.96, +0.70], p 0.065 | - | NOT CONFIRMED |
| S | d_cmf20_rmean50 in its high third (> 0.0440514) AND d_upside_vol_ratio in its low third (<= 1.10921) AND soul_p_sl in its high third (> 0.41309) | 30.0 | -1.93 [-4.79, +0.76] | -3.76 [-5.85, -1.72] | 2 of 7 | 133: +0.04 [-2.09, +2.41], p 0.51 | - | NOT CONFIRMED |
| S | d_dist_from_52wh in its low third (<= -7.7016) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_mfe in its lower half (<= 0.0583733) | 27.6 | -1.80 [-4.74, +0.82] | -3.44 [-5.25, -1.64] | 2 of 7 | 165: -1.08 [-2.54, +0.60], p 0.092 | - | NOT CONFIRMED |
| - | d_rsi14_obv_x in its upper half (> -4.70663e+06) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_drawdown_252 in its low third (<= -0.267957) | 26.0 | -1.38 [-3.65, +0.57] | -3.68 [-5.22, -2.02] | 1 of 6 | - | - | - |
| - | w_vol_vs_4w in its lower half (<= 0.83382) AND d_realvol_20 in its high third (> 51.5943) AND d_days_since_5pct_up in its high third (> 39) | 26.6 | -1.43 [-3.91, +0.85] | -3.83 [-5.65, -2.01] | 0 of 7 | - | - | - |
| - | d_donch_pos_50_lag5 in its low third (<= 0.424537) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_ret_skew_60 in its low third (<= 0.185332) | 26.6 | -1.10 [-3.34, +1.10] | -3.84 [-5.45, -1.95] | 1 of 7 | - | - | - |
| - | d_close_roll_slope_50 in its low third (<= -0.0212341) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND x_rank_d_ret_skew_60 in its low third (<= 0.344444) | 25.8 | -1.93 [-3.96, +0.19] | -3.60 [-5.18, -1.83] | 0 of 7 | - | - | - |
| - | d_cmf20_rmean50 in its high third (> 0.0440514) AND ctx_beta_mid in its lower half (<= 1.0578) AND ctx_state_r60 in its low third (<= -0.00153498) | 25.1 | -2.67 [-5.63, +0.11] | -3.80 [-5.74, -1.81] | 2 of 7 | - | - | - |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS BUY at the D1 open, sold at the D10 close

Searched on half A: 2720 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 272 checked for every condition earning its place, 60 through the block bootstrap; **49 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_vol_yz_20 in its high third (> 0.0375121) AND x_rank_d_downside_dev_60 in its low third (<= 0.447619) AND ctx_beta_nifty in its low third (<= 0.697226) | 26.3 | +8.47 [+4.40, +12.52] | +5.43 [+2.99, +7.81] | 1 of 5 | 196: +2.16 [-0.34, +4.88], p 0.052 | - | NOT CONFIRMED |
| RS | soul_m_self_mae in its low third (<= -0.051603) AND ctx_state_support in its high third (> 0.9) AND ctx_state_atr_rank in its high third (> 0.78) | 28.4 | +6.79 [+1.79, +13.03] | +4.57 [+2.80, +6.45] | 0 of 7 | 206: +0.37 [-1.59, +2.50], p 0.36 | - | NOT CONFIRMED |
| RS | soul_m_mae in its low third (<= -0.0515755) AND ctx_state_support in its high third (> 0.9) AND ctx_rank_1_3 is 1 | 38.6 | +5.82 [+2.88, +9.02] | +4.56 [+2.76, +6.52] | 0 of 7 | 255: +1.19 [-0.69, +3.21], p 0.12 | - | NOT CONFIRMED |
| RS | soul_m_self_mae in its low third (<= -0.051603) AND ctx_nifty_ret20 in its low third (<= -0.00380031) AND ctx_state_support in its high third (> 0.9) | 30.9 | +7.20 [+1.45, +13.84] | +4.85 [+2.67, +7.39] | 0 of 7 | 250: +0.33 [-1.20, +2.36], p 0.35 | - | NOT CONFIRMED |
| R | d_ret_5d_roll_std in its high third (> 7.89591) AND x_turnover_med rose the session before AND x_rank_d_downside_dev_60 in its low third (<= 0.447619) | 29.6 | +8.57 [+5.12, +12.35] | +4.99 [+2.55, +7.68] | 1 of 7 | 166: +0.81 [-1.61, +3.33], p 0.26 | - | NOT CONFIRMED |
| S | d_ret_5d_roll_std in its high third (> 7.89591) AND x_rank_d_downside_dev_60 in its low third (<= 0.447619) AND soul_m_cross_mfe in its high third (> 0.064179) | 27.2 | +7.36 [+3.83, +11.42] | +5.10 [+2.40, +8.26] | 0 of 7 | 152: +2.70 [+0.40, +5.12], p 0.013 | - | NOT CONFIRMED |
| S | d_bb_bw_20 in its high third (> 0.27806) AND x_rank_d_downside_dev_60 in its low third (<= 0.447619) AND soul_m_tp_se in its high third (> 0.0367877) | 26.9 | +7.36 [+3.96, +11.26] | +4.87 [+2.37, +7.69] | 0 of 7 | 228: -1.55 [-3.24, +0.06], p 0.97 | - | NOT CONFIRMED |
| - | d_realvol_20 in its upper half (> 42.3188) AND d_ret_kurt_60 fell twice (the session before and that session) AND x_z_d_downside_dev_60 in its low third (<= -0.217415) | 26.4 | +6.30 [+2.70, +10.59] | +4.62 [+2.43, +7.28] | 2 of 7 | - | - | - |
| - | x_z_d_atr_pct in its upper half (> 0.59469) AND x_z_d_dvol_z252 in its high third (> 0.0325947) AND x_rank_d_downside_dev_60 in its low third (<= 0.447619) | 32.9 | +5.91 [+3.22, +8.73] | +4.45 [+2.43, +6.73] | 0 of 7 | - | - | - |
| - | d_cmf20_rmean50 in its high third (> 0.0440514) AND x_z_d_atr_pct in its upper half (> 0.59469) AND x_rank_d_downside_dev_60 in its low third (<= 0.447619) | 27.9 | +6.16 [+2.78, +9.96] | +4.93 [+2.37, +7.94] | 0 of 7 | - | - | - |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS SKIP, sold at the D10 close

Searched on half A: 2720 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 210 checked for every condition earning its place, 60 through the block bootstrap; **58 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_wq_19 in its lower half (<= 1.31003) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND x_z_d_drawdown_252 in its low third (<= -0.528715) | 27.2 | -3.87 [-8.83, +0.61] | -6.61 [-9.90, -3.49] | 2 of 7 | 116: -2.21 [-4.63, +0.45], p 0.042 | - | NOT CONFIRMED |
| R | d_vol_yz_50 in its high third (> 0.0383275) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_upside_vol_ratio in its low third (<= 1.10921) | 31.1 | -2.70 [-7.53, +1.89] | -6.30 [-9.45, -3.09] | 2 of 7 | 120: +0.75 [-1.71, +3.21], p 0.72 | - | NOT CONFIRMED |
| R | ctx_corr_nifty in its lower half (<= 0.307759) AND ctx_state_event_num is 6 AND ctx_state_rvol in its low third (<= 0.76392) | 28.5 | -4.51 [-7.45, -1.86] | -5.00 [-7.24, -3.09] | 0 of 7 | 156: -0.34 [-2.50, +2.01], p 0.38 | - | NOT CONFIRMED |
| R | d_ema20_angle_z252 in its low third (<= -0.797611) AND d_wq_19 in its lower half (<= 1.31003) AND ctx_state_rvol in its low third (<= 0.76392) | 41.3 | -2.25 [-7.61, +3.30] | -4.74 [-6.75, -3.04] | 0 of 7 | 272: -0.17 [-1.42, +1.09], p 0.4 | - | NOT CONFIRMED |
| RS | w_ret_13w in its low third (<= 2.3812) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_ret in its lower half (<= 0.0033653) | 26.4 | -3.08 [-7.65, +0.98] | -5.74 [-8.68, -3.01] | 2 of 7 | 118: -3.27 [-5.74, -0.83], p 0.0035 | - | NOT CONFIRMED |
| S | d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_mfe in its lower half (<= 0.0583733) AND ctx_state_ema50_slope_atr in its low third (<= -0.0572457) | 25.8 | -3.38 [-8.49, +1.16] | -6.17 [-9.17, -3.00] | 1 of 7 | 138: -1.84 [-3.52, -0.11], p 0.016 | - | NOT CONFIRMED |
| S | d_cmf20_rmean50 in its high third (> 0.0440514) AND d_upside_vol_ratio in its low third (<= 1.10921) AND soul_p_sl in its high third (> 0.41309) | 30.0 | -2.74 [-7.54, +1.43] | -5.90 [-9.09, -2.80] | 2 of 7 | 133: -1.29 [-3.76, +1.36], p 0.16 | - | NOT CONFIRMED |
| S | soul_p_tp in its lower half (<= 0.297692) AND soul_p_mfe in its high third (> 0.0636354) AND soul_m_tp_se in its low third (<= 0.0260595) | 32.1 | -3.26 [-5.54, -0.61] | -5.02 [-7.31, -2.76] | 0 of 7 | 221: -0.00 [-1.94, +2.12], p 0.5 | - | NOT CONFIRMED |
| S | d_cmf20_rmean50 in its high third (> 0.0440514) AND soul_p_ret in its low third (<= 0.00182336) AND ctx_state_ema50_slope_atr in its low third (<= -0.0572457) | 26.4 | -2.24 [-7.34, +2.31] | -5.62 [-8.66, -2.59] | 1 of 7 | 122: -2.95 [-5.79, +0.05], p 0.024 | - | NOT CONFIRMED |
| - | d_wq_19 in its lower half (<= 1.31003) AND ctx_state_event_num is 6 AND ctx_state_rvol in its low third (<= 0.76392) | 25.2 | -1.38 [-6.50, +3.78] | -5.27 [-7.81, -2.98] | 0 of 7 | - | - | - |
| - | d_dist_from_52wh in its low third (<= -7.7016) AND d_cmf20_rmean50 in its high third (> 0.0440514) AND d_realvol_60 in its high third (> 55.1885) | 32.0 | -1.87 [-6.31, +2.09] | -5.56 [-8.27, -2.92] | 0 of 7 | - | - | - |
| - | d_ret_5d_roll_std in its high third (> 7.89591) AND ctx_prev_date in its high third (> 1.71288e+18) AND ctx_state_event_num is 6 | 26.6 | -4.21 [-7.23, -1.45] | -5.23 [-8.12, -2.91] | 0 of 3 | - | - | - |
| - | d_realvol_20 in its high third (> 51.5943) AND d_days_since_5pct_up in its high third (> 39) AND x_rank_d_dvol_z252 in its lower half (<= 0.591636) | 28.5 | -3.55 [-6.03, -1.05] | -5.00 [-7.42, -2.86] | 0 of 7 | - | - | - |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## PICKS TRIGGER (wait on D1-D5)

Searched on half A: 2734 single conditions, the best 5000 pairs and 5000 triples kept by the quick screen, 210 checked for every condition earning its place, 60 through the block bootstrap; **2 qualify**.

| | rule | half A: trades/yr | net % [95%] | yardstick, pp [95%] | bad years | hidden stocks | hidden years | verdict |
|---|---|---|---|---|---|---|---|---|
| R | d_donch_pos_20 in its low third (<= 0.216092) AND d_body_ratio_rmean20 fell twice (the session before and that session) AND x_z_d_donch_pos_20 in its upper half (> -0.290994) | 26.7 | +2.95 [+1.29, +4.62] | +6.59 [+4.46, +8.40] | 1 of 7 | 206: +4.26 [+2.82, +5.54], p 1.1e-09 | - | CONFIRMED |
| R | d_donch_pos_20 in its low third (<= 0.216092) AND d_body_ratio_rmean50 fell twice (the session before and that session) AND x_z_d_donch_pos_20 in its upper half (> -0.290994) | 29.6 | +2.48 [+0.98, +3.94] | +6.14 [+4.01, +8.02] | 2 of 7 | 199: +5.20 [+2.62, +7.18], p 5.6e-06 | - | CONFIRMED |
| - | d_donch_pos_20 in its low third (<= 0.216092) AND d_mdi14_rrank10 in its high third (> 0.9) AND x_z_d_donch_pos_20 in its upper half (> -0.290994) *(does not qualify)* | 27.9 | +3.17 [+1.24, +5.01] | +7.51 [+4.95, +9.67] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_bb_pctb_20 in its low third (<= 0.233779) AND d_dist_from_52wl fell twice (the session before and that session) AND x_rank_d_bb_pctb_20 in its high third (> 0.581311) *(does not qualify)* | 25.4 | +1.16 [-1.28, +3.82] | +6.76 [+4.62, +8.54] | 4 of 7 | - | - | not judged (did not qualify) |
| - | d_rsi7 in its low third (<= 35.0464) AND d_body_ratio_rmean20 fell twice (the session before and that session) AND x_rank_d_bb_pctb_20 in its high third (> 0.581311) *(does not qualify)* | 27.6 | +2.24 [-0.20, +4.76] | +6.32 [+4.47, +7.80] | 3 of 7 | - | - | not judged (did not qualify) |
| - | d_rsi7 in its low third (<= 35.0464) AND d_mdi14_rrank10 in its high third (> 0.9) AND x_rank_d_bb_pctb_20 in its high third (> 0.581311) *(does not qualify)* | 29.1 | +2.36 [+0.07, +4.57] | +6.44 [+4.22, +8.40] | 1 of 7 | - | - | not judged (did not qualify) |
| - | d_donch_pos_20 in its low third (<= 0.216092) AND d_dist_from_20h fell twice (the session before and that session) AND x_z_d_donch_pos_20 in its upper half (> -0.290994) *(does not qualify)* | 30.0 | +2.51 [+1.15, +3.88] | +6.51 [+4.11, +8.64] | 0 of 7 | - | - | not judged (did not qualify) |
| - | d_bb_pctb_20 in its low third (<= 0.233779) AND d_rsi14_obv_x in its lower half (<= -4.70663e+06) AND x_rank_d_bb_pctb_20 in its high third (> 0.581311) *(does not qualify)* | 31.5 | +0.84 [-1.22, +3.34] | +6.16 [+4.07, +8.11] | 3 of 7 | - | - | not judged (did not qualify) |
| - | d_dist_from_20l in its low third (<= 0.952497) AND x_rank_d_bb_pctb_20 in its high third (> 0.581311) AND indiavix_ret_1d turned up (fell the session before, rose that session) *(does not qualify)* | 27.0 | +1.38 [-1.08, +4.61] | +7.00 [+4.02, +9.72] | 2 of 7 | - | - | not judged (did not qualify) |
| - | d_donch_pos_20 in its low third (<= 0.216092) AND d_body_ratio in its low third (<= -0.5) AND x_z_d_donch_pos_20 in its upper half (> -0.290994) *(does not qualify)* | 32.0 | +2.00 [+0.59, +3.42] | +6.60 [+3.79, +9.24] | 1 of 7 | - | - | not judged (did not qualify) |

R = a top qualifier, S = a top qualifier with a Soul condition (both judged), - = among the 10 best by score (shown, judged only if also R or S).

## The market's rules on your picks (D1 open to D5 close, vs the day's other picks; plain 95%, information)

| market list | rule | picks | vs the day's other picks, pp [95%] | net % |
|---|---|---|---|---|
| market buy hold 2 | d_donch_pos_20_rmean50:dndn & dow_5:updn & d_pos_in_52w_range:dn1 | 7 | +0.09 [-0.03, +0.14] NOT SHOWN | +1.26 |
| market avoid hold 2 | d_wq_38:up1 & d_realvol_ratio_20_60:HI & d_n_5pct_up_60:upup | 6 | +4.51 [-4.57, +13.78] NOT SHOWN | +3.35 |
| market avoid hold 2 | d_dvol_z20:dn1 & d_n_5pct_up_60:upup & soul_m_cross_tp:dn1 | 4 | +2.71 [-12.29, +20.71] NOT SHOWN | +6.43 |
| market avoid hold 2 | d_atr_pct:up1 & d_wq_44:upup & d_n_5pct_up_60:upup | 2 | -12.92 [-14.79, -11.05] HOLDS | -11.87 |
| market avoid hold 2 | d_wq_44:upup & d_n_5pct_up_60:upup & x_turnover_med:LO | 5 | -5.30 [-11.05, +11.94] NOT SHOWN | -0.10 |
| market avoid hold 2 | d_n_5pct_up_252:upup & x_rank_d_range_pct:dn0 & soul_m_self_ret:upup | 6 | -3.59 [-7.76, +0.17] NOT SHOWN | -1.33 |
| market buy hold 3 | d_donch_pos_20_lag5:LO & d_days_since_5pct_up:dn1 & x_z_d_pos_in_52w_range:dnup | 15 | -0.68 [-5.15, +2.92] NOT SHOWN | +5.21 |
| market buy hold 3 | d_days_since_5pct_up:dn1 & x_z_d_pos_in_52w_range:dnup & soul_m_cross_mfe:HI | 10 | -0.85 [-5.91, +3.40] NOT SHOWN | +3.55 |
| market avoid hold 3 | d_wq_38:up1 & d_realvol_ratio_20_60:HI & d_n_5pct_up_60:upup | 6 | +4.51 [-4.57, +13.78] NOT SHOWN | +3.35 |
| market avoid hold 3 | d_wq_44:upup & d_n_5pct_up_60:upup & x_z_d_atr_pct:up1 | 4 | -7.71 [-11.05, -0.72] HOLDS | -7.40 |
| market avoid hold 3 | d_n_5pct_up_252:upup & x_z_d_donch_pos_20:dn0 & soul_p_ret_vs_market:L3 | 7 | -3.21 [-9.68, +6.69] NOT SHOWN | -3.95 |
| market avoid hold 3 | d_donch_pos_20:dn0 & d_slope_stability:L3 & d_n_5pct_up_60:upup | 20 | -3.84 [-7.00, +0.15] NOT SHOWN | -2.84 |
| market avoid hold 3 | d_wq_44:upup & d_n_5pct_up_60:upup & x_turnover_med:LO | 5 | -5.30 [-11.05, +11.94] NOT SHOWN | -0.10 |
| market avoid hold 3 | d_n_5pct_up_60:upup & x_z_d_intraday_ret_pct:updn & soul_m_self_ret:upup | 8 | -4.35 [-8.31, -0.81] HOLDS | -3.13 |
| market avoid hold 3 | d_wq_20:updn & d_n_5pct_up_60:upup & soul_m_tp_se:dndn | 1 | +3.37 [n/a, n/a] TOO FEW | +4.81 |
| market buy hold 5 | d_n_5pct_up_252:dnup & niftyit_ret_1d:dn1 & crudeoil_ret_1d:updn | 11 | +4.18 [-2.69, +12.87] NOT SHOWN | +11.06 |
| market buy hold 5 | d_wick_skew:H3 & d_n_5pct_up_252:upup & soul_m_gap_tp:dndn | 4 | +0.24 [-8.56, +6.15] NOT SHOWN | +1.41 |
| market buy hold 5 | d_n_5pct_up_252:dnup & x_turnover_med:upup & mkt_d_realvol_20:HI | 7 | +1.56 [-4.40, +7.61] NOT SHOWN | +3.23 |
| market avoid hold 5 | d_bb_pctb_20:dn0 & d_slope_stability:LO & d_n_5pct_up_60:upup | 12 | -7.27 [-11.28, -2.91] HOLDS | -6.55 |
| market avoid hold 5 | d_wq_6:up1 & d_n_5pct_up_252:upup & niftyfinservice_ret_1d:upup | 2 | -1.57 [-2.34, -0.81] HOLDS | +0.21 |
| market avoid hold 5 | d_n_5pct_up_60:upup & niftypsubank_ret_1d:H3 & soul_m_tp:dndn | 5 | -4.41 [-10.20, +3.31] NOT SHOWN | -0.48 |

## Money in the hidden years (before 2020; Rs 5 L, 3 equal slots, the same open in a random order, the mean of 5 orders)

| book | MTF | a year % | worst fall % | Rs 5 L became | trades a week |
|---|---|---|---|---|---|
| every eligible stock (buy everything), hold 2 | none | -41.14 | 85.46 | Rs 83,347 | 7.1 |
| every eligible stock (buy everything), hold 2 | 2x | -69.48 | 98.30 | Rs 10,856 | 7.1 |
| BUY rules, hold 2 | none | +0.80 | 0.00 | Rs 513,747 | 0.0 |
| BUY rules, hold 2 | 2x | +1.55 | 0.00 | Rs 527,294 | 0.0 |
| every eligible stock without the AVOID stocks, hold 2 | none | -44.45 | 87.87 | Rs 64,453 | 7.1 |
| every eligible stock without the AVOID stocks, hold 2 | 2x | -73.08 | 99.03 | Rs 5,428 | 7.1 |
| every eligible stock (buy everything), hold 3 | none | -35.19 | 81.31 | Rs 107,151 | 4.7 |
| every eligible stock (buy everything), hold 3 | 2x | -64.83 | 97.98 | Rs 12,401 | 4.7 |
| BUY rules, hold 3 | none | -7.31 | 27.16 | Rs 382,161 | 0.3 |
| BUY rules, hold 3 | 2x | -15.49 | 49.37 | Rs 275,734 | 0.3 |
| every eligible stock without the AVOID stocks, hold 3 | none | -39.59 | 85.67 | Rs 83,923 | 4.7 |
| every eligible stock without the AVOID stocks, hold 3 | 2x | -69.48 | 98.80 | Rs 7,644 | 4.7 |
| every eligible stock (buy everything), hold 5 | none | -18.90 | 65.39 | Rs 243,296 | 2.8 |
| every eligible stock (buy everything), hold 5 | 2x | -45.68 | 92.26 | Rs 62,374 | 2.8 |
| BUY rules, hold 5 | none | -1.44 | 50.67 | Rs 476,224 | 0.8 |
| BUY rules, hold 5 | 2x | -11.56 | 80.03 | Rs 327,116 | 0.8 |
| every eligible stock without the AVOID stocks, hold 5 | none | -20.81 | 62.33 | Rs 226,319 | 2.8 |
| every eligible stock without the AVOID stocks, hold 5 | 2x | -48.30 | 91.41 | Rs 56,736 | 2.8 |

## Inputs and checks

- D's input list: C:\QuantData\cache_daily\panel_oc\frozen\production\PRODUCTION.json (sha256 274a4061bb91b19c): 205 listed, 181 used (24 raw price level / code / flag)
- Soul: C:\QuantData\cache_daily\panel\soul\soul_v3.parquet (soul_v3.1, lag 6 > horizon 5; 29 features)
- stock halves: sha256('stratlab-v1|SYMBOL') even = half A (searched), odd = half B (hidden)
- market: 1880017 eligible stock-days (2016-06-06 to 2026-09-15; 5514 ETF rows left out); searched (half A, 2020-01-01 on) 742345; hidden stocks 719554; hidden years 418118 stock-days on 879 sessions (2016-06-06 to 2019-12-31); holds 2, 3, 5; labels are fractions (median |label_oc| 2: 0.0186, 3: 0.0231, 5: 0.0305) - turned into points
- picks: 32074 complete picks, pooled 25831 stock-days (half A 12835, half B 12996); 80 context columns; join check 3200 values, 0 mismatches
- time: 0.6 hours

## How to read it

- Start with the verdict table, then the CONFIRMED rules. A rule that qualified on half A but is NOT CONFIRMED did not survive data it never saw (or not clearly enough after the correction).
- MARKET rules select stocks from the whole market each day; their yardstick is buying every eligible stock at the same open. PICKS rules work inside D's and ENS's picks; their yardstick is the day's other picks.
- The search is very open (plain 95% per rule, thousands of rules); the judges are strict (Bonferroni over the rules they judge). They run once, after the search; nothing is re-run to change them.

## Limits

- Half B shares the market days with half A: a rule that only finds good market days cannot pass (the yardstick takes the day out), but stocks in one sector can move together across the halves.
- The years before 2020: the engines were trained on them, but no rule search used them. The cache keeps the stocks that still trade (delisted ones are missing), which flatters buying beaten-down stocks there.
- Market targets are the panel's label_oc_h (next open to the h-th close); lower-circuit locks are not modelled. Picks use setuplab's watchlist path.
- Compared with buying everything / the day's other picks, not with the frozen tree. A CONFIRMED rule is compared with the tree next, then frozen and judged forward.

