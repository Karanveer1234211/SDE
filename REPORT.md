# clashlab - CL1 - do bars where 3 or more frozen setups clash continue well? (the universe and BigMove's picks) (clashlab v1.0)

Declaration sha256 `8279f96553aaabc6` (declared 2026-11-13, before any run). Panel `C:\QuantData\cache_daily\panel_oc\panel.parquet`; TAGS run TAGS_20261108_001; universe 1,430 stocks, 124,767 setup entry bars from 2020-01-01; picks: 8,403 pick-days with a setup entry. 90 s.

## Verdict first

**FINAL PASS: universe same_bar 3 sessions; universe within_3 3 sessions; universe within_3 5 sessions; picks same_bar 3 sessions.** A forward candidate only (the declaration's rule) - nothing changes in the frozen tree, setups or paper ledger.

Excess = the entry's net minus the mean net of buying EVERY stock at the same open with the same hold (both after 35 bp). A = the clash entries' mean excess; B = A minus the 1-2-setup entries' mean excess. Intervals: 95% circular block bootstrap, 10-day blocks of entry days. Holm across all 12 on the larger p.

| place | clash | hold | clash entries | comparison | net % | A excess % | 95% | B vs 1-2 % | 95% | p | Holm limit | rule | FINAL |
|---|---|---:|---:|---:|---:|---:|---|---:|---|---:|---:|---|---|
| universe | same bar | 3 | 41,804 | 82,963 | +0.42 | +0.22 | [+0.15, +0.30] | +0.15 | [+0.06, +0.25] | 0.0005 | 0.00208 | PASS | **PASS** |
| universe | same bar | 5 | 41,804 | 82,963 | +0.45 | +0.19 | [+0.10, +0.30] | +0.13 | [+0.02, +0.25] | 0.0145 | 0.00357 | PASS | **FAIL** |
| universe | same bar | 10 | 41,803 | 82,963 | +0.95 | +0.13 | [+0.00, +0.27] | +0.15 | [+0.01, +0.31] | 0.0195 | 0.00500 | PASS | **FAIL** |
| universe | within 3 | 3 | 44,188 | 71,834 | +0.39 | +0.21 | [+0.14, +0.28] | +0.18 | [+0.10, +0.27] | 0.0005 | 0.00227 | PASS | **PASS** |
| universe | within 3 | 5 | 44,188 | 71,834 | +0.44 | +0.19 | [+0.09, +0.29] | +0.17 | [+0.07, +0.28] | 0.0015 | 0.00250 | PASS | **PASS** |
| universe | within 3 | 10 | 44,187 | 71,834 | +0.91 | +0.12 | [-0.01, +0.26] | +0.18 | [+0.04, +0.33] | 0.0330 | 0.00625 | FAIL | **FAIL** |
| picks | same bar | 3 | 2,248 | 6,155 | +1.64 | +1.39 | [+0.97, +1.80] | +0.51 | [+0.17, +0.87] | 0.0025 | 0.00278 | PASS | **PASS** |
| picks | same bar | 5 | 2,248 | 6,155 | +1.94 | +1.63 | [+1.05, +2.17] | +0.51 | [+0.03, +1.00] | 0.0150 | 0.00417 | PASS | **FAIL** |
| picks | same bar | 10 | 2,248 | 6,155 | +2.55 | +1.75 | [+0.89, +2.59] | +0.38 | [-0.34, +1.13] | 0.1644 | 0.01250 | FAIL | **FAIL** |
| picks | within 3 | 3 | 2,435 | 5,894 | +1.53 | +1.31 | [+0.89, +1.73] | +0.43 | [+0.07, +0.79] | 0.0090 | 0.00313 | PASS | **FAIL** |
| picks | within 3 | 5 | 2,435 | 5,894 | +1.84 | +1.55 | [+0.99, +2.09] | +0.42 | [-0.03, +0.88] | 0.0375 | 0.00833 | FAIL | **FAIL** |
| picks | within 3 | 10 | 2,435 | 5,894 | +2.45 | +1.69 | [+0.83, +2.51] | +0.34 | [-0.35, +1.06] | 0.1729 | 0.02500 | FAIL | **FAIL** |

## How many setups on the bar (descriptive)

| place | setups entering | entries | net 3 | excess 3 | net 5 | excess 5 | net 10 | excess 10 |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| universe | 1 | 65,312 | -0.17 | +0.09 | -0.06 | +0.09 | +0.25 | +0.01 |
| universe | 2 | 17,651 | -0.28 | +0.00 | -0.34 | -0.03 | +0.05 | -0.15 |
| universe | 3 | 15,021 | +0.01 | +0.11 | -0.03 | +0.05 | +0.55 | -0.03 |
| universe | 4 | 11,558 | +0.30 | +0.21 | +0.36 | +0.18 | +1.00 | +0.13 |
| universe | 5+ | 15,225 | +0.91 | +0.35 | +1.00 | +0.34 | +1.29 | +0.29 |
| picks | 1 | 4,902 | +0.73 | +0.87 | +1.06 | +1.11 | +1.71 | +1.38 |
| picks | 2 | 1,253 | +0.86 | +0.88 | +0.83 | +1.12 | +1.32 | +1.28 |
| picks | 3 | 870 | +1.12 | +1.05 | +1.27 | +1.26 | +2.09 | +1.61 |
| picks | 4 | 626 | +1.54 | +1.33 | +1.93 | +1.58 | +2.43 | +1.49 |
| picks | 5+ | 752 | +2.33 | +1.82 | +2.71 | +2.10 | +3.18 | +2.11 |

## With and without S2 (descriptive)

S2 is the only frozen setup that reads the entry bar's own open (a gap down). In a synthetic world where gap-down opens bounce back, these tests passed with no clash effect at all, through S2 alone - an edge that lives only in the 'with S2' rows is the gap, not the clash.

| place | clash | group | S2 | entries | excess 3 % | excess 5 % | excess 10 % |
|---|---|---|---|---:|---:|---:|---:|
| universe | same bar | clash | with S2 | 12,021 | +0.58 | +0.57 | +0.43 |
| universe | same bar | clash | without S2 | 29,783 | +0.08 | +0.04 | +0.01 |
| universe | same bar | comparison | with S2 | 8,999 | +0.25 | +0.27 | +0.28 |
| universe | same bar | comparison | without S2 | 73,964 | +0.05 | +0.04 | -0.06 |
| universe | within 3 | clash | with S2 | 12,092 | +0.58 | +0.57 | +0.43 |
| universe | within 3 | clash | without S2 | 32,096 | +0.08 | +0.05 | +0.01 |
| universe | within 3 | comparison | with S2 | 8,845 | +0.24 | +0.26 | +0.27 |
| universe | within 3 | comparison | without S2 | 62,989 | +0.00 | -0.01 | -0.10 |
| picks | same bar | clash | with S2 | 819 | +2.01 | +2.58 | +2.62 |
| picks | same bar | clash | without S2 | 1,429 | +1.03 | +1.08 | +1.25 |
| picks | same bar | comparison | with S2 | 1,508 | +1.09 | +1.59 | +1.64 |
| picks | same bar | comparison | without S2 | 4,647 | +0.81 | +0.96 | +1.27 |
| picks | within 3 | clash | with S2 | 820 | +2.01 | +2.57 | +2.60 |
| picks | within 3 | clash | without S2 | 1,615 | +0.96 | +1.03 | +1.23 |
| picks | within 3 | comparison | with S2 | 1,507 | +1.09 | +1.59 | +1.65 |
| picks | within 3 | comparison | without S2 | 4,387 | +0.81 | +0.96 | +1.25 |

## By year, 5-session hold (descriptive)

| place | clash | year | clash entries | clash excess % | 1-2 excess % |
|---|---|---:|---:|---:|---:|
| universe | same bar | 2020 | 3,773 | +0.03 | -0.03 |
| universe | same bar | 2021 | 5,907 | +0.16 | -0.06 |
| universe | same bar | 2022 | 6,123 | +0.21 | +0.30 |
| universe | same bar | 2023 | 4,261 | +0.16 | +0.01 |
| universe | same bar | 2024 | 7,605 | +0.17 | +0.10 |
| universe | same bar | 2025 | 7,662 | +0.27 | +0.02 |
| universe | same bar | 2026 | 6,473 | +0.25 | +0.03 |
| universe | within 3 | 2020 | 3,925 | +0.09 | -0.06 |
| universe | within 3 | 2021 | 6,130 | +0.13 | -0.09 |
| universe | within 3 | 2022 | 6,531 | +0.22 | +0.24 |
| universe | within 3 | 2023 | 4,555 | +0.15 | +0.02 |
| universe | within 3 | 2024 | 8,057 | +0.17 | +0.03 |
| universe | within 3 | 2025 | 8,152 | +0.25 | -0.02 |
| universe | within 3 | 2026 | 6,838 | +0.25 | -0.01 |
| picks | same bar | 2020 | 308 | +0.99 | +1.19 |
| picks | same bar | 2021 | 305 | +3.07 | +1.74 |
| picks | same bar | 2022 | 385 | +0.76 | +1.23 |
| picks | same bar | 2023 | 199 | +0.86 | +0.78 |
| picks | same bar | 2024 | 402 | +1.34 | +1.13 |
| picks | same bar | 2025 | 396 | +2.20 | +0.80 |
| picks | same bar | 2026 | 253 | +2.16 | +0.93 |
| picks | within 3 | 2020 | 340 | +0.71 | +1.29 |
| picks | within 3 | 2021 | 322 | +3.02 | +1.72 |
| picks | within 3 | 2022 | 417 | +0.74 | +1.22 |
| picks | within 3 | 2023 | 228 | +0.52 | +0.88 |
| picks | within 3 | 2024 | 426 | +1.42 | +1.13 |
| picks | within 3 | 2025 | 420 | +2.10 | +0.76 |
| picks | within 3 | 2026 | 282 | +2.26 | +0.84 |

## Picks: clash entries against the D1 open on the same picks (descriptive)

| clash | hold | entries | clash net % | D1 open net % | difference % | of which ranks 1-3 |
|---|---:|---:|---:|---:|---:|---:|
| same bar | 3 | 2,248 | +1.64 | -5.66 | +7.30 | 713 |
| same bar | 5 | 2,248 | +1.94 | -5.72 | +7.66 | 713 |
| same bar | 10 | 2,248 | +2.55 | -4.77 | +7.32 | 713 |
| within 3 | 3 | 2,435 | +1.53 | -5.74 | +7.27 | 776 |
| within 3 | 5 | 2,435 | +1.84 | -5.81 | +7.65 | 776 |
| within 3 | 10 | 2,435 | +2.45 | -4.85 | +7.30 | 776 |

## Reconciliation with setuplab's whole-market study

The newest ZONES run's setup trades (to 2026-09-23): 276,631 of 276,631 matched here with the same 5-session net (100.00%); of these marks in that window, 100.00% are in it. 

## What this is not

History already seen (2020-2026). The setups were found on BigMove's picks; the universe is new ground for them, but the clash idea came from looking at charts. A FINAL PASS is a forward candidate; adoption needs forward evidence. Nothing here changes the frozen tree, the setups or the paper ledger.

Not proof that the clash itself matters: a 3+ clash is a deeper dip in a bad week, so a pass may be the dip bouncing (or a high-beta stock in a rising market) rather than the clash, and it includes S2's gap-down open more often. The dose and S2 tables are the first look; separating these is a follow-up study.
