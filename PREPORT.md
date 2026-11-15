# whylab part P - why each pick was picked (P_20261115_002)

whylab v1.2.1 | P declaration 99db37895043cc79 (fixed 2026-11-15 01:00 IST, before any P run) | D run STAGED_20260928_001 | 4,965 picks (top 3 a day, ETFs out) | shap 0.54.1 | 1120 s

Each pick's score was split into how much each of D's inputs pushed it above **the average of 100 other stocks of the same day** (shap). The pushes were added up by part K's 10 input groups; the group that pushed most is the pick's **reason**. Two more versions of D, trained on resampled history, explained the same pick against their own draws of the day's stocks: a pick is **CONFIDENT** when all three name the same reason, otherwise **MIXED**. Then each pick's reason was checked again at the D1-D5 closes (still there, or gone). Own move = the pick's return from the D1 open minus the average stock's. Points; 95% intervals.

## Checks

- The rebuild is the frozen D: same top 3 on 100.00% of 1,655 days, median rank correlation 1.000000 -> PASSED.
- Every explanation adds up to the score difference: 4,989 explanations, largest gap 1.41e-09 (allowed 1e-7 + 1e-6 x score).
- Outcomes: the tree holds 4,924 of 4,965 picks (99.17%); 4,923 of 4,923 give its D1 net (100.00%) -> PASSED.

## How sure is the reason?

- CONFIDENT: 60.3% [57.3, 63.1] of picks (2020-23 61.9% [57.7, 65.6], 2024-26 58.0% [54.2, 62.2]).
- Versions agreeing: V0=V1 70.5%, V0=V2 72.6%, V1=V2 73.1%, all three 60.3%.
- MIXED picks' top two groups (V0), most common: trend / returns, reversal and oscillators (414); volatility and jumpiness / position in range (52-week, 20-day, bands) (234); returns, reversal and oscillators / trend (206); returns, reversal and oscillators / position in range (52-week, 20-day, bands) (157); trend / volatility and jumpiness (145).

## The kinds of pick

| category | picks 2020-23 / 2024-26 (share of the period's picks) | own move to D5, 2020-23 | 2024-26 | T1 vs the other picks 2020-23 / 2024-26 | T1 | T2 best hold (chosen on 2020-23) | T2 2024-26: its edge a day minus D5's | T2 |
|---|---|---|---|---|---|---|---|---|
| trend | 681 (23%) / 780 (39%) | +2.17 [+1.10, +3.29] | +1.52 [+0.78, +2.33] | +1.25 [+0.14, +2.42] / +0.06 [-0.85, +0.98] | **NO CLEAR DIFFERENCE** | D2 | -0.022 [-0.147, +0.107] | **KEEP D5** |
| position in range (52-week, 20-day, bands) | 413 (14%) / 199 (10%) | +1.78 [+0.87, +2.73] | +2.99 [+1.60, +4.41] | +0.67 [-0.35, +1.72] / +1.68 [+0.25, +3.07] | **NO CLEAR DIFFERENCE** | D8 | +0.043 [-0.122, +0.216] | **KEEP D5** |
| volatility and jumpiness | 545 (18%) / 34 (2%) | -0.22 [-0.68, +0.30] | +2.05 [-0.02, +9.48] | - | **TOO FEW** | - | - | **TOO FEW** |
| returns, reversal and oscillators | 169 (6%) / 150 (7%) | +1.49 [+0.32, +2.85] | +1.04 [-0.34, +2.35] | +0.30 [-0.95, +1.69] / -0.48 [-2.02, +0.93] | **NO CLEAR DIFFERENCE** | D4 | +0.073 [-0.033, +0.182] | **KEEP D5** |
| other | 7 (0%) / 5 (0%) | +2.13 [-1.61, +9.26] | +0.55 [-1.57, +1.60] | - | **TOO FEW** | - | - | **TOO FEW** |
| volume and liquidity | 10 (0%) / 0 (0%) | +1.06 [-4.62, +3.42] | - [-, -] | - | **TOO FEW** | - | - | **TOO FEW** |
| raw price levels | 0 (0%) / 2 (0%) | - [-, -] | -6.51 [-7.94, -5.09] | - | **TOO FEW** | - | - | **TOO FEW** |
| MIXED | 1,124 (38%) / 846 (42%) | +1.06 [+0.43, +1.73] | +1.17 [+0.58, +1.85] | -0.24 [-0.99, +0.52] / -0.54 [-1.36, +0.29] | **NO CLEAR DIFFERENCE** | D2 | +0.014 [-0.106, +0.134] | **KEEP D5** |

Edge a day = (own move to the exit - 0.35) / days held. A category is judged with at least 100 picks in each period.

Own move by close, all picks of the category, D1 .. D10:

- trend: +0.56, +1.05, +1.42, +1.63, +1.82, +1.73, +1.72, +1.73, +1.67, +1.72
- position in range (52-week, 20-day, bands): +0.31, +0.82, +1.16, +1.52, +2.18, +2.55, +2.86, +3.44, +3.70, +3.78
- volatility and jumpiness: +0.18, +0.14, +0.02, -0.02, -0.09, -0.16, -0.19, -0.24, -0.29, -0.33
- returns, reversal and oscillators: +0.61, +0.78, +1.09, +1.33, +1.28, +1.37, +1.01, +0.95, +1.10, +1.13
- other: +0.08, +0.52, +0.32, +0.67, +1.47, +2.05, +1.86, +1.21, +0.49, +1.22
- volume and liquidity: +0.23, +1.83, +1.74, +0.92, +1.06, +0.67, +1.35, +0.95, +1.08, +0.18
- raw price levels: +0.90, -2.87, -5.85, -5.45, -6.51, -7.26, -8.18, -10.06, -6.44, -5.77
- MIXED: +0.38, +0.70, +0.78, +1.05, +1.11, +1.25, +1.39, +1.47, +1.52, +1.58

## Transitions: is the reason still there?

The pick is explained again at each close by its own fold's model. STILL THERE = the reason's group still pushes it above the day's average stock.

| category | picks | still there at D1 / D2 / D3 / D4 / D5 close | top group unchanged at D5 | unknown at D5 |
|---|---|---|---|---|
| ALL | 4,965 | 97% / 94% / 90% / 87% / 86% | 60% | 4% |
| raw price levels | 2 | 100% / 100% / 100% / 100% / 100% | 0% | 0% |
| volume and liquidity | 10 | 100% / 90% / 90% / 90% / 90% | 40% | 0% |
| volatility and jumpiness | 579 | 99% / 98% / 98% / 97% / 98% | 88% | 1% |
| position in range (52-week, 20-day, bands) | 612 | 99% / 98% / 96% / 95% / 94% | 69% | 2% |
| trend | 1,461 | 97% / 94% / 90% / 88% / 84% | 66% | 6% |
| returns, reversal and oscillators | 319 | 92% / 87% / 79% / 73% / 74% | 35% | 3% |
| other | 12 | 92% / 92% / 75% / 75% / 67% | 50% | 0% |
| MIXED | 1,970 | 95% / 91% / 88% / 84% / 82% | 47% | 5% |

**T3 - when the reason is gone, sell early? -> NOT RELIABLE**

Picks whose reason is gone at a D1-D4 close (the first such close: D1 163, D2 231, D3 267, D4 268): own move from the next open to the D5 close - what selling at that open would have given up (below 0: selling there would have saved it). 2020-23 -0.93 [-1.57, -0.22] (543 picks); 2024-26 -0.16 [-0.81, +0.57] (386 picks). EXIT EARLY needs both intervals below 0.

**T4 - when the reason is still there at D5, hold longer? -> SELL AT D5**

Picks whose reason is still there at the D5 close: own move D5 close to D10 close, minus what the freed money makes in a new pick (own move to D5 - 0.35). 2020-23 +0.25 - +0.86 = -0.61 [-1.13, -0.14] (2,412 picks); 2024-26 +0.79 - +1.13 = -0.35 [-0.91, +0.22] (1,656 picks). HOLD LONGER needs both intervals above 0.

## The latest picks and their reasons

| signal day | stock | category | reason's push | the inputs pushing it up most (value; percentile that day; push) |
|---|---|---|---|---|
| 2026-09-08 | DAVANGERE | trend | +2.122 | D_ema20_angle_deg = -1.229 (0th) +0.772; D_slope_stability_rmean50 = 0.02773 (0th) +0.355; D_donch_pos_20_rmean50 = 0.05028 (0th) +0.267 |
| 2026-09-08 | QUESS | returns, reversal and oscillators | +0.737 | D_WQ_29 = 0.9912 (100th) +0.276; D_donch_pos_50_rmean50 = 0.9037 (98th) +0.254; D_ret_5d_roll_std = 6.391 (85th) +0.174 |
| 2026-09-08 | PCJEWELLER | MIXED (volatility and jumpiness / position in range (52-week, 20-day, bands)) | +0.588 | X_rank_D_ema20_angle_deg = 0.9967 (100th) +0.330; D_obv = 1.374e+10 (99th) +0.196; D_dist_from_52wh = -2.499 (79th) +0.078 |
| 2026-09-09 | DAVANGERE | trend | +2.770 | D_ema20_angle_deg = -1.539 (0th) +0.786; D_slope_stability_rmean50 = 0.02853 (0th) +0.685; D_WQ_3 = 0.7827 (100th) +0.271 |
| 2026-09-09 | OMAXE | MIXED (returns, reversal and oscillators / trend) | +0.515 | D_ret_5d_roll_std = 9.742 (98th) +0.175; W_ret_13w = 81.72 (99th) +0.173; D_bb_bw_20 = 0.4908 (99th) +0.163 |
| 2026-09-09 | PCJEWELLER | position in range (52-week, 20-day, bands) | +0.504 | D_obv = 1.443e+10 (99th) +0.264; X_rank_D_ema20_angle_deg = 0.9958 (100th) +0.221; X_z_D_dist_from_52wh = 0.8065 (84th) +0.120 |
| 2026-09-10 | PCJEWELLER | MIXED (volatility and jumpiness / position in range (52-week, 20-day, bands)) | +0.729 | X_z_D_dist_from_52wh = 0.8029 (83th) +0.254; D_ret_5d_roll_std = 10.54 (99th) +0.234; X_rank_D_ema20_angle_deg = 0.9942 (99th) +0.212 |
| 2026-09-10 | SYNCOMF | returns, reversal and oscillators | +0.750 | D_WQ_29 = 0.9721 (99th) +0.328; W_ret_13w = 42.03 (94th) +0.182; D_ret_5d_roll_std = 8.159 (94th) +0.170 |
| 2026-09-10 | AYMSYNTEX | returns, reversal and oscillators | +0.572 | D_WQ_29 = 0.9603 (98th) +0.204; D_ret_5d_roll_std = 8.62 (95th) +0.129; D_WQ_23 = 12.8 (94th) +0.100 |
| 2026-09-11 | KPEL | MIXED (trend / returns, reversal and oscillators) | +1.163 | D_ema20_angle_deg = -0.7694 (0th) +0.406; D_ema20_angle_z252 = -1.814 (2th) +0.210; D_donch_pos_20_rmean50 = 0.09549 (0th) +0.175 |
| 2026-09-11 | PCJEWELLER | MIXED (volatility and jumpiness / position in range (52-week, 20-day, bands)) | +0.696 | D_ret_5d_roll_std = 10.42 (98th) +0.253; X_z_D_dist_from_52wh = 0.7876 (83th) +0.241; D_bb_bw_20 = 0.5479 (99th) +0.232 |
| 2026-09-11 | IOLCP | MIXED (volatility and jumpiness / returns, reversal and oscillators) | +0.542 | W_ret_13w = 51.85 (97th) +0.169; X_z_D_downside_dev_60 = 1.511 (94th) +0.137; D_dist_from_52wh = -2.301 (83th) +0.125 |
| 2026-09-15 | SSWL | returns, reversal and oscillators | +1.476 | D_WQ_29 = 0.9975 (99th) +0.437; D_intraday_ret_pct = -8.378 (2th) +0.298; W_ret_13w = 60.02 (98th) +0.197 |
| 2026-09-15 | MOREPENLAB | returns, reversal and oscillators | +1.391 | D_WQ_29 = 0.9984 (100th) +0.400; D_intraday_ret_pct = -8.431 (2th) +0.248; D_bb_bw_20 = 0.3943 (98th) +0.237 |
| 2026-09-15 | WELENT | returns, reversal and oscillators | +1.101 | D_WQ_29 = 0.9592 (91th) +0.336; D_bb_bw_20 = 0.4362 (99th) +0.239; W_ret_13w = 42.36 (94th) +0.206 |

## The groups

- **raw price levels** (9): D_macd, D_macd_signal, D_macd_hist, D_obv, D_breakout_high_20, D_breakout_low_20, D_breakout_high_50, D_breakout_low_50, D_midpoint_slope
- **calendar** (8): D_dow, DOW_0, DOW_1, DOW_2, DOW_3, DOW_4, DOW_5, DOW_6
- **market and outside series** (26): X_universe_size, MKT_D_realvol_20, MKT_D_rsi14, MKT_D_adx14, MKT_D_dist_from_52wh, MKT_D_drawdown_252, NIFTYBANK_ret_1d, NIFTY500_ret_1d, NIFTYMIDCAP150_ret_1d, NIFTYSMLCAP250_ret_1d, INDIAVIX_ret_1d, NIFTYAUTO_ret_1d, NIFTYFMCG_ret_1d, NIFTYIT_ret_1d, NIFTYMETAL_ret_1d, NIFTYPHARMA_ret_1d, NIFTYREALTY_ret_1d, NIFTYENERGY_ret_1d, NIFTYPSUBANK_ret_1d, NIFTYFINSERVICE_ret_1d, NIFTYMEDIA_ret_1d, NIFTYCONSUMPTION_ret_1d, NIFTYINFRA_ret_1d, USDINR_ret_1d, CRUDEOIL_ret_1d, GOLD_ret_1d
- **combined flags** (5): Comb_RSIslopePos__ADX_15_25, Comb_GapUp__CPR_Tmr_Above, Comb_GapDown__CPR_Tmr_Below, Comb_ATRlow__EMA20pos, Comb_ATRhigh__EMA20neg
- **volume and liquidity** (22): D_cmf20, D_obv_slope, D_dollar_vol, D_dvol_z20, D_dvol_z50, D_dvol_z252, D_vol_surge_20, D_vol_surge_50, D_vol_z252, D_rsi14_obv_x, D_rsi7_obv_x, W_vol_vs_4w, D_cmf20_rmean50, D_amihud_20, D_amihud_60, X_turnover_med, X_rank_D_dvol_z20, X_z_D_dvol_z20, X_rank_D_dvol_z252, X_z_D_dvol_z252, X_rank_D_amihud_20, X_z_D_amihud_20
- **volatility and jumpiness** (38): D_atr_ratio_14_30, D_cpr_width_pct, D_range_to_atr14, D_bb_bw_20, D_vol_yz_20, D_vol_yz_50, D_atr_pct, D_range_pct, D_atr_pct_z252, D_ret_5d_roll_std, D_compress_state, D_slope_stability_rstd10, D_slope_stability_rstd20, D_close_roll_slope_20_rstd20, D_close_roll_slope_20_rstd10, D_macd_hist_rstd10, D_realvol_20, D_realvol_60, D_realvol_ratio_20_60, D_ret_skew_60, D_ret_kurt_60, D_downside_dev_60, D_upside_vol_ratio, D_n_5pct_up_60, D_n_5pct_up_252, X_rank_D_range_pct, X_z_D_range_pct, X_rank_D_atr_pct, X_z_D_atr_pct, X_rank_D_realvol_20, X_z_D_realvol_20, X_rank_D_realvol_ratio_20_60, X_z_D_realvol_ratio_20_60, X_rank_D_ret_skew_60, X_z_D_ret_skew_60, X_rank_D_downside_dev_60, X_z_D_downside_dev_60, X_relvol_20
- **position in range (52-week, 20-day, bands)** (26): D_bb_pctB_20, D_donch_pos_20, D_donch_pos_50, D_dist_from_20h, D_dist_from_20l, D_dist_from_52wh, W_close_pos, D_donch_pos_50_rmean50, D_donch_pos_50_lag5, D_donch_pos_20_rmean50, D_donch_pos_20_lag5, D_dist_from_52wl, D_pos_in_52w_range, D_drawdown_252, X_rank_D_dist_from_52wh, X_z_D_dist_from_52wh, X_rank_D_dist_from_52wl, X_z_D_dist_from_52wl, X_rank_D_pos_in_52w_range, X_z_D_pos_in_52w_range, X_rank_D_drawdown_252, X_z_D_drawdown_252, X_rank_D_bb_pctB_20, X_z_D_bb_pctB_20, X_rank_D_donch_pos_20, X_z_D_donch_pos_20
- **trend** (26): D_adx14, D_pdi14, D_mdi14, D_daily_trend, D_weekly_trend, D_monthly_trend, D_ema_stack_20_50_100, D_ema20_angle_deg, D_structure_trend_code, D_ema20_angle_z252, D_close_roll_slope_20, D_close_roll_slope_50, D_hh_run, D_hl_run, D_lh_run, D_ll_run, D_slope_stability, D_slope_stability_rmean50, D_mdi14_diff1, D_mdi14_diff5, D_mdi14_rrank10, D_mdi14_rrank20, X_rank_D_adx14, X_z_D_adx14, X_rank_D_ema20_angle_deg, X_z_D_ema20_angle_deg
- **returns, reversal and oscillators** (34): D_rsi7, D_rsi14, D_rsi7_gt_rsi14, D_gap_pct, D_rsi14_z252, D_body_ratio, D_wick_skew, W_ret_4w, W_ret_13w, D_WQ_3, D_WQ_6, D_WQ_12, D_WQ_13, D_WQ_16, D_WQ_19, D_WQ_20, D_WQ_23, D_WQ_26, D_WQ_29, D_WQ_33, D_WQ_35, D_WQ_38, D_WQ_40, D_WQ_41, D_WQ_44, D_body_ratio_rmean50, D_body_ratio_rmean20, D_intraday_ret_pct, X_rank_D_rsi14, X_z_D_rsi14, X_rank_D_gap_pct, X_z_D_gap_pct, X_rank_D_intraday_ret_pct, X_z_D_intraday_ret_pct
- **other** (11): D_inside_day, D_prev_inside_day, D_nr_length, D_nr_day, D_oli, D_cpr_vs_yday_code, D_days_since_boh_20, D_days_since_bol_20, D_nr_expand, D_overnight_share, D_days_since_5pct_up

Pushes are in points of D's 5-day score above the comparison stocks' average. Inputs that are the same for every stock on a day push 0. Nothing here changes the paper test's plan; a category that passes is a candidate, judged next by the forward paper test.

