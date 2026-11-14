# skiplab - SK2: SK1's filters bought at the D1 open, 2024 onward (skiplab v1.1)

Declaration sha256 `2444726dbe5b3310` (declared 2026-11-14, before any run). SK1 run SK_20261114_001; tree run TREE_20261109_001 (TAGS TAGS_20261108_001); window 2024-01-01 .. 2026-09-22; 3 s.

## Verdict first

- **A. Separate pocket (the tree untouched): 0 of 8 FINAL PASS** - no filter's pocket made money and beat buying every jumpy pick.
- **B. Inside the tree's own 3 places: 0 of 8 FINAL PASS** - no branch beat the frozen tree's own book.
- Every book: value 1.0 on the first session of 2024, 3 places, each buy 1/3 of the closed value, full = skip (the tree's own book rules). PASS = the daily difference has a 95% interval above 0 AND a higher a-year return (A: also above 0) AND a worst fall no deeper; FINAL PASS = PASS and kept by Holm per part and engine (0.025).

## A. Separate pocket: the filter's picks with their own money and 3 places

Against an 'everything' pocket that buys every jumpy pick of ranks 1-3 the same way (D: +34.4% a year, worst fall 62.8%; ENS: +4.7% a year, worst fall 58.3%). A pocket with few picks sits in cash a lot, and cash can beat a losing everything-pocket; that is why the pocket must also make money (a year above 0).

| filter | engine | picks | taken | a year (everything) | worst fall (everything) | daily difference, bp [95%] | p | Holm limit | verdict |
|---|---|---:|---:|---|---|---|---:|---:|---|
| #1 | D | 118 | 98 | +31.5% (+34.4%) | 36.6% (62.8%) | -3.27 [-25.58, +19.71] | 0.6182 | 0.0125 | **FAIL** |
| #1 | ENS | 116 | 98 | +17.0% (+4.7%) | 41.1% (58.3%) | +2.32 [-14.29, +18.71] | 0.4028 | 0.0125 | **FAIL** |
| #3 | D | 124 | 101 | +48.8% (+34.4%) | 14.9% (62.8%) | +1.23 [-20.31, +23.66] | 0.4503 | 0.0083 | **FAIL** |
| #3 | ENS | 132 | 106 | +37.0% (+4.7%) | 14.8% (58.3%) | +8.25 [-11.24, +27.91] | 0.2069 | 0.0083 | **FAIL** |
| #4 | D | 108 | 96 | +50.5% (+34.4%) | 16.2% (62.8%) | +2.13 [-19.33, +24.20] | 0.4218 | 0.0063 | **FAIL** |
| #4 | ENS | 117 | 106 | +40.1% (+4.7%) | 22.9% (58.3%) | +9.61 [-8.75, +27.47] | 0.1589 | 0.0063 | **FAIL** |
| #5 | D | 186 | 120 | +20.3% (+34.4%) | 47.9% (62.8%) | -6.45 [-25.71, +12.22] | 0.7546 | 0.0250 | **FAIL** |
| #5 | ENS | 175 | 119 | +15.2% (+4.7%) | 42.6% (58.3%) | +1.90 [-15.20, +19.10] | 0.4298 | 0.0250 | **FAIL** |

| filter | engine | mean net of all picks | win share | mean net of those taken | skipped (pocket full) | taken that the tree also bought | a year, 5 start days (everything) | worst fall, 5 start days (everything) |
|---|---|---:|---:|---:|---:|---:|---|---|
| #1 | D | +2.91% | 60.2% | +2.74% | 20 | 23 | +31.5% (+34.5%) | 36.6% (62.8%) |
| #1 | ENS | +2.27% | 56.9% | +1.77% | 18 | 17 | +17.1% (+5.2%) | 41.1% (58.3%) |
| #3 | D | +4.09% | 63.7% | +3.40% | 23 | 19 | +48.9% (+34.5%) | 14.9% (62.8%) |
| #3 | ENS | +2.64% | 57.6% | +2.55% | 26 | 11 | +37.1% (+5.2%) | 14.8% (58.3%) |
| #4 | D | +4.59% | 69.4% | +3.77% | 12 | 16 | +50.7% (+34.5%) | 16.2% (62.8%) |
| #4 | ENS | +3.17% | 61.5% | +2.91% | 11 | 12 | +40.2% (+5.2%) | 22.9% (58.3%) |
| #5 | D | +2.80% | 60.2% | +1.59% | 66 | 25 | +20.3% (+34.5%) | 47.9% (62.8%) |
| #5 | ENS | +2.08% | 56.0% | +1.20% | 56 | 18 | +15.3% (+5.2%) | 42.6% (58.3%) |

## B. Inside the tree's own 3 places (the branch SK1 declared)

The frozen tree alone: D +138.1% a year, worst fall 20.1%, all 3 places busy on 71% of the days; ENS +96.1% a year, worst fall 20.5%, all 3 busy on 86%.

| filter | engine | a year (tree alone) | worst fall (tree alone) | daily difference, bp [95%] | p | Holm limit | verdict |
|---|---|---|---|---|---:|---:|---|
| #1 | D | +104.8% (+138.1%) | 43.7% (20.1%) | -6.07 [-17.01, +2.14] | 0.9125 | 0.0250 | **FAIL** |
| #1 | ENS | +85.4% (+96.1%) | 43.6% (20.5%) | -1.79 [-11.03, +6.82] | 0.6742 | 0.0125 | **FAIL** |
| #3 | D | +134.0% (+138.1%) | 20.0% (20.1%) | -0.90 [-7.96, +6.14] | 0.5892 | 0.0063 | **FAIL** |
| #3 | ENS | +117.9% (+96.1%) | 29.1% (20.5%) | +4.69 [-5.16, +14.43] | 0.1794 | 0.0063 | **FAIL** |
| #4 | D | +131.5% (+138.1%) | 22.3% (20.1%) | -1.19 [-9.09, +6.07] | 0.6242 | 0.0083 | **FAIL** |
| #4 | ENS | +106.7% (+96.1%) | 25.2% (20.5%) | +2.59 [-5.75, +11.45] | 0.3018 | 0.0083 | **FAIL** |
| #5 | D | +127.0% (+138.1%) | 32.8% (20.1%) | -1.95 [-12.30, +7.86] | 0.6537 | 0.0125 | **FAIL** |
| #5 | ENS | +60.5% (+96.1%) | 54.4% (20.5%) | -7.36 [-20.74, +4.86] | 0.8676 | 0.0250 | **FAIL** |

## Does it disturb the tree's other trades?

- A (separate pocket): no. The tree's book is the frozen one, trade for trade; the pocket only adds its own trades with its own money (some on the same stock the tree also bought - the column above).
- B (same 3 places): yes, whenever the places are full. Only the marked jumpy picks are handled differently, but a D1 buy holding a place changes which of the tree's later trades fit:

| filter | engine | marked picks | added (tree skipped) | moved to D1 (setup later) | left to the tree (setup on D1) | D1 buys taken / full | tree trades | pushed out (mean net) | gained (mean net) |
|---|---|---:|---:|---:|---:|---|---:|---|---|
| #1 | D | 118 | 61 | 38 | 19 | 47 / 52 | 391 | 38 (+4.14%) | 13 (+0.83%) |
| #1 | ENS | 116 | 60 | 39 | 17 | 42 / 57 | 398 | 45 (+1.43%) | 21 (+2.21%) |
| #3 | D | 124 | 75 | 33 | 16 | 50 / 58 | 391 | 50 (+3.46%) | 17 (+1.12%) |
| #3 | ENS | 132 | 70 | 43 | 19 | 45 / 68 | 398 | 91 (+0.80%) | 62 (+1.98%) |
| #4 | D | 108 | 64 | 32 | 12 | 47 / 49 | 391 | 38 (+0.76%) | 10 (+2.52%) |
| #4 | ENS | 117 | 61 | 39 | 17 | 40 / 60 | 398 | 68 (+0.81%) | 41 (+0.35%) |
| #5 | D | 186 | 92 | 60 | 34 | 67 / 85 | 391 | 63 (+1.38%) | 22 (-0.05%) |
| #5 | ENS | 175 | 88 | 59 | 28 | 56 / 91 | 398 | 97 (+1.27%) | 62 (+0.59%) |

## Filters

- #1: sde10 below -0.591 (Q1) AND D_range_pct 8.333 and above (Q4)
- #3: Tm1_eff below -0.1391 (Q1) AND D_cpr_width_pct below -1.541 (Q1)
- #4: Tm1_range 1.169 and above (Q4) AND D_donch_pos_20 below 0.02837 (Q1)
- #5: D_ema20_angle_deg below -0.7765 (Q1) AND D_WQ_33 0.9296 and above (Q4)

## Checks

- picks (lane, ETF, complete, D1 net, setup net) rebuilt with setuplab's own functions: 32,076 against the tree run's 32,076 - the same.
- D tree trades (from its first start day) rebuilt with setuplab's own functions: 835 against the tree run's 835 - the same.
- ENS tree trades (from its first start day) rebuilt with setuplab's own functions: 841 against the tree run's 841 - the same.

## What this is not

- 2024 onward already judged SK1's filters and was looked at; a pass here makes a candidate, not a rule - the forward paper test decides.
- Lower-circuit (honest) exits are not applied, as in the tree's own history.
- Production, the frozen tree, its setups and the paper ledger are only read.
