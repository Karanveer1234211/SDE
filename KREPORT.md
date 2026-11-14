# whylab part K - what D itself relies on (K_20261115_001)

whylab v1.1 | K declaration 158621297b501323 (fixed 2026-11-15 00:20 IST, before any K run) | D run STAGED_20260928_001 | 1,890,199 eligible rows, 205 inputs | 1624 s

D's 5 walk-forward folds were rebuilt with stage D's own code and settings (production imported read only). Then one group of inputs at a time was scrambled on the test days - shuffled across the day's stocks, or across days for inputs that are the same for every stock - and the same fitted models re-picked the top 3 (ETFs out). **D relies on a group when scrambling it costs money**: the 95% interval of the change in the top-3 net per trade is below 0 (D1 open to D5 close, 0.35 points of costs).

## The rebuild must equal the frozen D first

- Same top 3 as the frozen scores on **100.00%** of 1,655 days (needs 99%); median daily rank correlation **1.000000** (needs 0.999); largest score difference 3.6e-09. Rows: rebuilt 1,462,469, frozen 1,462,469, matched 1,462,469. -> **PASSED**

| fold | train rows | fit rows | test rows | recorded train / fit / test |
|---|---|---|---|---|
| 1 | 420,889 | 400,000 | 188,707 | 420889 / 400000 / 188707 |
| 2 | 608,194 | 400,000 | 261,986 | 608194 / 400000 / 261986 |
| 3 | 869,935 | 400,000 | 292,977 | 869935 / 400000 / 292977 |
| 4 | 1,161,683 | 400,000 | 350,772 | 1161683 / 400000 / 350772 |
| 5 | 1,512,178 | 400,000 | 368,027 | 1512178 / 400000 / 368027 |

## What D relies on (ranked by the money lost when the group is scrambled)

The rebuilt top 3 (ETFs out) made +1.17 [+0.68, +1.70] points a trade over 2020-26 (2020-23 +1.19 [+0.50, +1.90], 2024-26 +1.15 [+0.44, +1.90]).

| group | inputs | picks replaced | money lost per trade, 2020-26 | 2020-23 | 2024-26 | verdict |
|---|---|---|---|---|---|---|
| position in range (52-week, 20-day, bands) | 26 | 59.9% | -0.53 [-0.74, -0.31] | -0.30 [-0.60, -0.02] | -0.85 [-1.13, -0.56] | **RELIES ON** |
| trend | 26 | 74.7% | -0.52 [-0.78, -0.29] | -0.44 [-0.75, -0.12] | -0.65 [-1.05, -0.26] | **RELIES ON** |
| returns, reversal and oscillators | 34 | 67.4% | -0.36 [-0.56, -0.16] | -0.48 [-0.73, -0.22] | -0.19 [-0.51, +0.14] | **RELIES ON** |
| volatility and jumpiness | 38 | 68.1% | -0.35 [-0.60, -0.11] | -0.11 [-0.46, +0.23] | -0.70 [-1.03, -0.36] | **RELIES ON** |
| volume and liquidity | 22 | 44.9% | -0.14 [-0.30, +0.02] | -0.05 [-0.26, +0.16] | -0.26 [-0.50, -0.01] | **NO CLEAR RELIANCE** |
| raw price levels | 9 | 28.8% | -0.13 [-0.28, +0.02] | -0.02 [-0.22, +0.18] | -0.29 [-0.52, -0.08] | **NO CLEAR RELIANCE** |
| market and outside series | 26 (26 same for every stock) | 46.2% | -0.10 [-0.28, +0.08] | -0.09 [-0.34, +0.16] | -0.11 [-0.36, +0.14] | **NO CLEAR RELIANCE** |
| other | 11 | 19.2% | -0.07 [-0.18, +0.04] | -0.04 [-0.19, +0.10] | -0.10 [-0.28, +0.08] | **NO CLEAR RELIANCE** |
| calendar | 8 (6 same for every stock) | 0.3% | -0.01 [-0.03, +0.00] | -0.00 [-0.00, +0.00] | -0.02 [-0.07, +0.01] | **NO CLEAR RELIANCE** |
| combined flags | 5 | 0.3% | -0.00 [-0.02, +0.01] | -0.00 [-0.04, +0.02] | -0.00 [-0.01, +0.00] | **NO CLEAR RELIANCE** |

**Raw price levels** (the question open since 1 Nov): 9 inputs - D_macd, D_macd_signal, D_macd_hist, D_obv, D_breakout_high_20, D_breakout_low_20, D_breakout_high_50, D_breakout_low_50, D_midpoint_slope. Scrambling them replaced 28.8% of the picks and changed the net by -0.13 [-0.28, +0.02] points a trade -> **NO CLEAR RELIANCE**.

Picks replaced = the share of the original top-3 picks no longer in the top 3 (mean over days and the 3 repeats). A group can move many picks and cost nothing (the replacements are as good) - only the money decides.

## Every input and its group

- **raw price levels** (9): D_macd, D_macd_signal, D_macd_hist, D_obv, D_breakout_high_20, D_breakout_low_20, D_breakout_high_50, D_breakout_low_50, D_midpoint_slope
- **calendar** (8): D_dow*, DOW_0*, DOW_1*, DOW_2*, DOW_3*, DOW_4, DOW_5, DOW_6*
- **market and outside series** (26): X_universe_size*, MKT_D_realvol_20*, MKT_D_rsi14*, MKT_D_adx14*, MKT_D_dist_from_52wh*, MKT_D_drawdown_252*, NIFTYBANK_ret_1d*, NIFTY500_ret_1d*, NIFTYMIDCAP150_ret_1d*, NIFTYSMLCAP250_ret_1d*, INDIAVIX_ret_1d*, NIFTYAUTO_ret_1d*, NIFTYFMCG_ret_1d*, NIFTYIT_ret_1d*, NIFTYMETAL_ret_1d*, NIFTYPHARMA_ret_1d*, NIFTYREALTY_ret_1d*, NIFTYENERGY_ret_1d*, NIFTYPSUBANK_ret_1d*, NIFTYFINSERVICE_ret_1d*, NIFTYMEDIA_ret_1d*, NIFTYCONSUMPTION_ret_1d*, NIFTYINFRA_ret_1d*, USDINR_ret_1d*, CRUDEOIL_ret_1d*, GOLD_ret_1d*
- **combined flags** (5): Comb_RSIslopePos__ADX_15_25, Comb_GapUp__CPR_Tmr_Above, Comb_GapDown__CPR_Tmr_Below, Comb_ATRlow__EMA20pos, Comb_ATRhigh__EMA20neg
- **volume and liquidity** (22): D_cmf20, D_obv_slope, D_dollar_vol, D_dvol_z20, D_dvol_z50, D_dvol_z252, D_vol_surge_20, D_vol_surge_50, D_vol_z252, D_rsi14_obv_x, D_rsi7_obv_x, W_vol_vs_4w, D_cmf20_rmean50, D_amihud_20, D_amihud_60, X_turnover_med, X_rank_D_dvol_z20, X_z_D_dvol_z20, X_rank_D_dvol_z252, X_z_D_dvol_z252, X_rank_D_amihud_20, X_z_D_amihud_20
- **volatility and jumpiness** (38): D_atr_ratio_14_30, D_cpr_width_pct, D_range_to_atr14, D_bb_bw_20, D_vol_yz_20, D_vol_yz_50, D_atr_pct, D_range_pct, D_atr_pct_z252, D_ret_5d_roll_std, D_compress_state, D_slope_stability_rstd10, D_slope_stability_rstd20, D_close_roll_slope_20_rstd20, D_close_roll_slope_20_rstd10, D_macd_hist_rstd10, D_realvol_20, D_realvol_60, D_realvol_ratio_20_60, D_ret_skew_60, D_ret_kurt_60, D_downside_dev_60, D_upside_vol_ratio, D_n_5pct_up_60, D_n_5pct_up_252, X_rank_D_range_pct, X_z_D_range_pct, X_rank_D_atr_pct, X_z_D_atr_pct, X_rank_D_realvol_20, X_z_D_realvol_20, X_rank_D_realvol_ratio_20_60, X_z_D_realvol_ratio_20_60, X_rank_D_ret_skew_60, X_z_D_ret_skew_60, X_rank_D_downside_dev_60, X_z_D_downside_dev_60, X_relvol_20
- **position in range (52-week, 20-day, bands)** (26): D_bb_pctB_20, D_donch_pos_20, D_donch_pos_50, D_dist_from_20h, D_dist_from_20l, D_dist_from_52wh, W_close_pos, D_donch_pos_50_rmean50, D_donch_pos_50_lag5, D_donch_pos_20_rmean50, D_donch_pos_20_lag5, D_dist_from_52wl, D_pos_in_52w_range, D_drawdown_252, X_rank_D_dist_from_52wh, X_z_D_dist_from_52wh, X_rank_D_dist_from_52wl, X_z_D_dist_from_52wl, X_rank_D_pos_in_52w_range, X_z_D_pos_in_52w_range, X_rank_D_drawdown_252, X_z_D_drawdown_252, X_rank_D_bb_pctB_20, X_z_D_bb_pctB_20, X_rank_D_donch_pos_20, X_z_D_donch_pos_20
- **trend** (26): D_adx14, D_pdi14, D_mdi14, D_daily_trend, D_weekly_trend, D_monthly_trend, D_ema_stack_20_50_100, D_ema20_angle_deg, D_structure_trend_code, D_ema20_angle_z252, D_close_roll_slope_20, D_close_roll_slope_50, D_hh_run, D_hl_run, D_lh_run, D_ll_run, D_slope_stability, D_slope_stability_rmean50, D_mdi14_diff1, D_mdi14_diff5, D_mdi14_rrank10, D_mdi14_rrank20, X_rank_D_adx14, X_z_D_adx14, X_rank_D_ema20_angle_deg, X_z_D_ema20_angle_deg
- **returns, reversal and oscillators** (34): D_rsi7, D_rsi14, D_rsi7_gt_rsi14, D_gap_pct, D_rsi14_z252, D_body_ratio, D_wick_skew, W_ret_4w, W_ret_13w, D_WQ_3, D_WQ_6, D_WQ_12, D_WQ_13, D_WQ_16, D_WQ_19, D_WQ_20, D_WQ_23, D_WQ_26, D_WQ_29, D_WQ_33, D_WQ_35, D_WQ_38, D_WQ_40, D_WQ_41, D_WQ_44, D_body_ratio_rmean50, D_body_ratio_rmean20, D_intraday_ret_pct, X_rank_D_rsi14, X_z_D_rsi14, X_rank_D_gap_pct, X_z_D_gap_pct, X_rank_D_intraday_ret_pct, X_z_D_intraday_ret_pct
- **other** (11): D_inside_day, D_prev_inside_day, D_nr_length, D_nr_day, D_oli, D_cpr_vs_yday_code, D_days_since_boh_20, D_days_since_bol_20, D_nr_expand, D_overnight_share, D_days_since_5pct_up

* = the same for every stock on the day: scrambled across days.

