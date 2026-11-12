# jumplab - Jumpy meta model and swing targets JL1 (jumplab v1.0)

Declaration sha256 `ac9b731c8df75078` (declared 2026-11-12, before any run). pick_meta run C:\QuantData\cache_daily\research2\pick_meta\PM_20261017_001\predictions.parquet (sha256 a74f843eaaa9d8eb): 33,100 picks (D and ENS, ranks 1-10), 10,534 JUMPY (31.8%). ETFs: the tree's names + the name rule (NSE's list not found). Intraday: 3-minute bars from C:\QuantData\cache_daily\intraday_3m. 218 s.

## Verdict first (Stage 1, descriptive - Stage 2 decides)

- **NO NET SKILL**: the meta's expected net ranks the day's jumpy picks with a mean daily rank correlation of -0.0246 [-0.0650, +0.0153] (927 days; pooled -0.0173).
- Top 30% by the meta minus the rest, same day: -27.3 [-105.9, +53.3] bp (top +138.0 bp, rest +118.8 bp; 28.5% of the jumpy picks scored top).
- **NO DIP SKILL**: AUC 0.518 [0.499, 0.539] for a dip to -8% (rate 29.1%); pick_meta's prob_deep on the same rows from 2022: 0.524 [0.497, 0.553] (the meta 0.518).

## Stage 2 - run all 32 backtests

Double-click `C:\QuantData\jumplab\runs\JL_20261112_001\run_stage2.bat` (it calls env_tradelab.bat, runs these from the tradelab folder, then Holm). Or paste them from stage2_commands.txt:

```
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T1 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T1 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T2 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T2 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T3 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T3 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T4 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T4 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T5 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T5 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T6 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T6 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T7 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T7 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T8 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T8 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J0 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J0 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J1 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J1 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J2 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J2 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J3 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J3 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J4 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J4 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J5 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J5 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J6 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J6 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J7 --compare strategies\tree.py --engines D --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J7 D"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T1 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T1 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T2 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T2 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T3 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T3 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T4 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T4 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T5 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T5 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T6 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T6 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T7 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T7 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#T8 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 T8 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J0 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J0 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J1 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J1 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J2 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J2 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J3 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J3 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J4 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J4 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J5 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J5 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J6 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J6 ENS"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\jumplab.py#J7 --compare strategies\tree.py --engines ENS --jumplab "C:\QuantData\jumplab\runs\JL_20261112_001" --declare "jumplab JL1 J7 ENS"
cd /d "C:\Users\karanvsi\PyCharmMiscProject\jumplab"
python jumplab.py holm --scan "%TRADELAB_OUT%\backtest"
```

## The meta model, year by year (walk-forward)

| test year | trained on (jumpy picks) | scored | Spearman (pooled) | top 30% bp | rest bp | dip AUC |
|---|---|---|---|---|---|---|
| 2021 | 1,576 | 1,433 | -0.064 | +224.0 | +181.7 | 0.527 |
| 2022 | 2,944 | 1,964 | -0.097 | -79.3 | +55.9 | 0.515 |
| 2023 | 4,902 | 375 | +0.001 | +317.1 | +256.9 | 0.671 |
| 2024 | 5,367 | 2,303 | +0.058 | +347.0 | +174.1 | 0.534 |
| 2025 | 7,584 | 1,704 | +0.097 | +91.6 | -45.0 | 0.487 |
| 2026 | 9,364 | 1,159 | +0.053 | +128.7 | +130.5 | 0.562 |

### Jumpy picks by the meta's expected net (deciles, out of sample, after 35 bp)

| decile | picks | mean net bp | win | dip to -8% |
|---|---|---|---|---|
| 1 | 894 | +179.0 | 57.0% | 30.1% |
| 2 | 894 | +156.5 | 54.1% | 29.8% |
| 3 | 893 | +155.2 | 56.1% | 24.7% |
| 4 | 894 | +119.0 | 51.5% | 26.4% |
| 5 | 893 | +93.7 | 52.2% | 28.9% |
| 6 | 894 | +86.0 | 52.2% | 28.7% |
| 7 | 893 | +97.7 | 50.1% | 28.4% |
| 8 | 894 | +89.6 | 53.0% | 29.3% |
| 9 | 893 | +82.9 | 53.8% | 32.4% |
| 10 | 894 | +182.9 | 54.4% | 31.9% |

### What the last year's model leans on (permutation importance, descriptive)

| feature | importance (R2 drop) |
|---|---|
| ret60 | +0.05637 |
| rv_i5 | +0.01893 |
| rsj10 | +0.01773 |
| lds10 | +0.01688 |
| rsj_i5 | +0.01486 |
| vol_ratio1 | +0.01360 |
| gap1 | +0.01198 |
| atrp | +0.01186 |
| sde3 | +0.01128 |
| ret20 | +0.00936 |
| semi_share | +0.00902 |
| ret1 | +0.00899 |

## How to read it

- Lane: the frozen tree's (setuplab TREE.json, 9 Nov 2026): s_atr14 (pick_meta's simple 14-session ATR / close; from the stock's bars when blank) above the year's cut-off = JUMPY; no ATR = JUMPY; ETFs are never jumpy; cut-offs {'2021': 0.05765407554671968, '2022': 0.05641745604231174, '2023': 0.05751632249834517, '2024': 0.053513261982317366, '2025': 0.05492950265998241, '2026': 0.05521984442292925}.
- Model: test years 2021 to the last year in the file; a year's model trains on the jumpy picks that exited at least 5 sessions before its first session (2021 learns from 2020 alone); a feature blank in every training row sits that year out. Scores: every JUMPY pick of the test year (whatever its status): jm_net, jm_dip; jm_net_q / jm_dip_q = the share of the model's own predictions on its training rows at or below the score; calm picks and ETFs get no score.
- Stage 2: the money view's daily-return difference against the frozen tree on the same picks has a 95% interval above 0, the CAGR is higher and the worst drawdown no deeper. the 16 strategies run on one engine are one family: one-sided bootstrap p-values Holm-corrected at 0.025 ('python jumplab.py holm'); a strategy PASSES only if its own rule passes AND Holm keeps it. 2021-2026 is where the tree was found and the jumpy picks were studied (tree, SDE, VD1), so a PASS is a forward candidate only (a new tree with its own freeze date); the frozen tree keeps running.
- Prior evidence: low; the most plausible gain is from dip risk, not direction.
