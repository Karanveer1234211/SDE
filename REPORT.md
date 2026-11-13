# CL2 - the 5 best filters for S2 + 3 or more setups: found on 2020-2022, tested on 2023-2026 (cl2 v1.0)

Declaration sha256 `b7d99cb7f90e6c17` (declared 2026-11-13, before any run). CL run CL_20261113_001 (marks `e3585c84b69d6bd4`), ZONES `b99bb40e50c18c40`, panel `C:\QuantData\cache_daily\panel_oc\panel.parquet`. 12,021 trades 2020-01-07 to 2026-09-22: training 4,397 (base +0.74% a trade), test 7,624 (base +0.97%). Zones known 100.0%, features known 87.2%. 153,245 combinations searched, 67,369 eligible. 7 s.

## Verdict first

**1 of 5 filters HOLD on 2023-2026: #3 D_adx14 32.46 and above (Q4) AND D_intraday_ret_pct below -3.943 (Q1).** Found on 2020-2022 only, each beat the rest of S2 + 3 or more AND buying everything on years it never saw (Holm across the 5). Next: their own lanes in the forward record.

Every trade: buy the entry bar's open, sell the 3rd close, 35 bp. Intervals: 10-day blocks of entry days, 2,000 resamples.

## The 5 filters

| # | filter (fixed on 2020-2022) | train trades | train net % | 2020 | 2021 | 2022 | test trades | test net in % | rest of base % | in - rest | 95% | excess in | 95% | p | Holm limit | FINAL |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|---:|---|---:|---:|---|
| 1 | RSI14 (RSI 14) below 30 AND NIFTY20 (NIFTY 50 20-session return %) 3 and above | 91 | +4.21 | +1.37 | +5.05 | +3.66 | 44 | -1.90 | +0.98 | -2.88 | [-4.07, +0.72] | +1.28 | [-1.18, +2.31] | 0.9380 | 0.0125 | **NOT HELD** |
| 2 | RET20 (20-session return %) 10 and above AND D_WQ_38 -0.005788 and above (Q4) | 104 | +4.06 | +4.70 | +2.82 | +3.72 | 65 | +3.47 | +0.94 | +2.53 | [-1.48, +5.07] | +2.27 | [-0.50, +4.10] | 0.1084 | 0.0083 | **NOT HELD** |
| 3 | D_adx14 32.46 and above (Q4) AND D_intraday_ret_pct below -3.943 (Q1) | 344 | +3.95 | +4.55 | +3.99 | +2.27 | 366 | +3.23 | +0.85 | +2.38 | [+1.26, +3.26] | +1.76 | [+0.94, +2.57] | 0.0010 | 0.0050 | **HOLDS** |
| 4 | D_ema20_angle_z252 below -1.521 (Q1) AND D_mdi14_rrank10 below 0.8 (Q1) | 97 | +3.95 | +4.79 | +3.46 | +3.45 | 167 | +1.78 | +0.95 | +0.83 | [-0.61, +2.20] | +0.60 | [-0.13, +2.06] | 0.1044 | 0.0063 | **NOT HELD** |
| 5 | NIFTY20 (NIFTY 50 20-session return %) 3 and above AND D_ema20_angle_deg below -0.4254 (Q1) | 212 | +3.91 | +3.70 | +3.76 | +4.75 | 90 | -3.50 | +1.02 | -4.52 | [-5.56, -0.08] | +0.37 | [-1.51, +1.77] | 0.9785 | 0.0250 | **NOT HELD** |

## Test years, one by one (net % a trade: inside / rest of the base)

| # | 2023 | 2024 | 2025 | 2026 |
|---|---|---|---|---|
| 1 | -1.25 / +0.40 (6) | -2.61 / +0.94 (34) | +3.09 / +1.97 (2) | +3.12 / +0.04 (2) |
| 2 | +2.61 / +0.37 (6) | +4.31 / +0.84 (32) | +0.73 / +1.97 (9) | +3.65 / +0.00 (18) |
| 3 | +1.71 / +0.32 (47) | +3.96 / +0.71 (123) | +3.60 / +1.87 (143) | +1.86 / -0.01 (53) |
| 4 | +6.61 / +0.35 (6) | +1.61 / +0.87 (41) | +1.97 / +1.97 (85) | +0.68 / +0.03 (35) |
| 5 | -1.74 / +0.40 (6) | -3.93 / +1.06 (80) | +3.09 / +1.97 (2) | +1.91 / +0.04 (2) |

## Money on the test years (2023-2026, descriptive)

One equal-weight basket a signal session, whole account, compounded, one basket at a time.

| basket | baskets | avg % | positive | a year | worst drawdown | everything, same sessions: a year | its drawdown |
|---|---:|---:|---:|---:|---:|---:|---:|
| #1 RSI14 (RSI 14) below 30 AND NIFTY20 (NIFTY 50 20-session return %) 3 and above | 14 | +0.37 | +57.1% | +1.1% | -13.4% | -2.7% | -13.0% |
| #2 RET20 (20-session return %) 10 and above AND D_WQ_38 -0.005788 and above (Q4) | 32 | +0.30 | +43.8% | +0.9% | -37.9% | +0.2% | -10.2% |
| #3 D_adx14 32.46 and above (Q4) AND D_intraday_ret_pct below -3.943 (Q1) | 86 | +0.94 | +59.3% | +20.4% | -27.8% | -0.2% | -10.6% |
| #4 D_ema20_angle_z252 below -1.521 (Q1) AND D_mdi14_rrank10 below 0.8 (Q1) | 50 | +0.71 | +54.0% | +8.6% | -13.6% | +0.0% | -14.0% |
| #5 NIFTY20 (NIFTY 50 20-session return %) 3 and above AND D_ema20_angle_deg below -0.4254 (Q1) | 15 | -0.61 | +53.3% | -2.9% | -15.1% | -3.7% | -13.8% |
| any of the 5 (621 trades) | 109 | +0.71 | +56.0% | +18.9% | -27.0% | -3.7% | -21.1% |
| the whole base (no filter) | 189 | +0.38 | +55.6% | +18.9% | -13.2% | -10.3% | -35.1% |

### By year (compounded %)

| basket | 2023 | 2024 | 2025 | 2026 |
|---|---:|---:|---:|---:|
| #1 RSI14 (RSI 14) below 30 AND NIFTY20 (NIFTY 50 20-session return %) 3 and above | -6.7 | -1.3 | +6.2 | +6.3 |
| #2 RET20 (20-session return %) 10 and above AND D_WQ_38 -0.005788 and above (Q4) | +5.8 | -9.4 | -2.8 | +11.0 |
| #3 D_adx14 32.46 and above (Q4) AND D_intraday_ret_pct below -3.943 (Q1) | +53.0 | +26.5 | +2.9 | +0.3 |
| #4 D_ema20_angle_z252 below -1.521 (Q1) AND D_mdi14_rrank10 below 0.8 (Q1) | +21.2 | +7.5 | +0.4 | +4.1 |
| #5 NIFTY20 (NIFTY 50 20-session return %) 3 and above AND D_ema20_angle_deg below -0.4254 (Q1) | -10.7 | -9.0 | +6.2 | +3.9 |
| any of the 5 (621 trades) | +36.4 | +11.9 | +12.5 | +11.1 |
| the whole base (no filter) | +33.7 | +5.3 | +4.3 | +29.6 |
| everything (the base's sessions) | -5.3 | -12.1 | -16.9 | -3.6 |

## What this is not

- The base came from CL1's 2020-2026 results, so its own edge in 2023-2026 is not new evidence; the filters are - chosen on 2020-2022 only.
- The best of about 190,000 combinations on 3 years will look better in training than it can be; the test years are the measure.
- Not a test of fills: every number buys the exact open.
