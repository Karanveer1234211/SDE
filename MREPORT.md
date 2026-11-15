# whylab part M - one change at a time inside the frozen tree, for one kind of pick (M_20261115_001)

whylab v1.6 | M declaration d9b2845a4170e48b (fixed 2026-11-15 15:12 IST, before any M run) | tree run TREE_20261109_001 ['2021-01-01', '2026-09-22'] | TAGS run TAGS_20261108_001 | 35 s

Engine D's picks, ranks 1-3, in the frozen tree's book (setuplab's own code: Rs 5 L, 3 positions, the same five start days, exits and 0.35 pp). Each variant changes ONE rule for ONE kind's picks; setuplab's tree_plan is then applied to all of the window's D picks, so every other pick follows the frozen tree and may take the room the change frees (the displaced trades count).

**Verdict** (fixed before the run): the variant's book grows faster than the frozen tree's in 2021-23 AND 2024-26 (95% intervals above 0), survives the many-tests check (Benjamini-Hochberg, 5%, within its family, the weaker period) and its worst fall is no deeper -> BEATS THE TREE. A variant needs 100 picks it applies to in each period. **Everything here is in-sample** (the tree, part P's kinds and these changes were all built on 2020-26): a winner is a candidate for a separately frozen forward test; the frozen tree stays the benchmark.

## Result

- No variant differs from the frozen tree in both periods: the tree stands.

## Checks

- The rebuild gives the TREE run's own numbers and trades: D tree +117.4415% a year, worst fall 24.1102%, Rs 5 L -> Rs 423.8769 L; baseline +58.2535% / 46.7148% -> PASSED.
- Part P kind on 3,996 of 3,996 D picks in the window.
- The TAGS run's fills give the tree's first setup on every pick; re-tagged on C:\QuantData\cache_daily\panel_oc\panel.parquet with setuplab's own code, the seven setups give all 15,819 D picks the TAGS run's fills and nets (0 / 0 differences).
- The 13-week return read here equals the re-tag's on every watch day; 295,107 weekly readings (a non-zero change), 99.24% of them on a week's first session.
- The sizing book with every trade at 1/3 gives setuplab's tree_sim numbers exactly.

| | a year | worst fall | Rs 5 L became |
|---|---|---|---|
| **the frozen tree** | +117.4% | 24.1% | Rs 423.9 L |
| baseline (every pick at the open) | +58.3% | 46.7% | Rs 72.2 L |

## A: setup eligibility

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | not through S1 | 480 / 730 | 1 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| trend | not through S2 | 480 / 730 | 38 | +111.9% | 24.1% | Rs 366.1 L | -2.6 [-7.9, +2.4] / -2.6 [-8.0, +2.5] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | not through S3 | 480 / 730 | 4 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| trend | not through C1 | 480 / 730 | 15 | +115.1% | 24.1% | Rs 398.9 L | +0.2 [-0.2, +0.8] / -2.5 [-6.1, +0.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | not through C2 | 480 / 730 | 8 | +117.2% | 24.1% | Rs 420.8 L | -0.9 [-4.3, +1.6] / +0.7 [-0.4, +2.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | not through C3 | 480 / 730 | 61 | +130.3% | 23.3% | Rs 587.2 L | +7.3 [-4.7, +20.9] / +4.3 [-3.5, +12.5] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | not through N1 | 480 / 730 | 84 | +119.2% | 19.6% | Rs 443.0 L | +5.4 [-8.3, +20.2] / -4.1 [-20.3, +10.5] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | not through S1 | 366 / 145 | 0 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **CHANGES NOTHING** |
| position | not through S2 | 366 / 145 | 10 | +112.6% | 24.1% | Rs 372.8 L | -4.1 [-11.0, +0.9] / -0.3 [-0.8, +0.0] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | not through S3 | 366 / 145 | 0 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **CHANGES NOTHING** |
| position | not through C1 | 366 / 145 | 2 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| position | not through C2 | 366 / 145 | 2 | +117.3% | 24.1% | Rs 422.0 L | +0.0 [+0.0, +0.0] / -0.2 [-1.2, +0.6] | - | **NO CLEAR DIFFERENCE** |
| position | not through C3 | 366 / 145 | 7 | +120.3% | 24.1% | Rs 457.0 L | +0.0 [+0.0, +0.0] / +2.8 [-0.0, +7.1] | - | **NO CLEAR DIFFERENCE** |
| position | not through N1 | 366 / 145 | 5 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| returns | not through S1 | 144 / 127 | 0 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **CHANGES NOTHING** |
| returns | not through S2 | 144 / 127 | 7 | +117.5% | 24.1% | Rs 423.8 L | -0.4 [-1.6, +0.3] / +0.5 [-1.2, +2.5] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | not through S3 | 144 / 127 | 1 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| returns | not through C1 | 144 / 127 | 2 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| returns | not through C2 | 144 / 127 | 5 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| returns | not through C3 | 144 / 127 | 5 | +116.9% | 24.1% | Rs 417.8 L | +0.0 [+0.0, +0.0] / -0.5 [-2.4, +0.6] | - | **NO CLEAR DIFFERENCE** |
| returns | not through N1 | 144 / 127 | 10 | +114.5% | 24.1% | Rs 391.8 L | +2.5 [-0.5, +7.8] / -5.7 [-15.6, -0.0] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | not through S1 | 225 / 278 | 0 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **CHANGES NOTHING** |
| MIXED returns + trend | not through S2 | 225 / 278 | 24 | +114.3% | 24.1% | Rs 390.0 L | -0.7 [-7.5, +5.0] / -2.4 [-7.0, +1.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | not through S3 | 225 / 278 | 1 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | not through C1 | 225 / 278 | 6 | +114.9% | 25.1% | Rs 395.8 L | +0.2 [-1.0, +1.6] / -2.8 [-8.6, +0.0] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | not through C2 | 225 / 278 | 6 | +115.1% | 24.1% | Rs 398.3 L | +0.0 [+0.0, +0.0] / -2.3 [-10.5, +3.3] | - | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | not through C3 | 225 / 278 | 29 | +106.7% | 24.1% | Rs 317.3 L | -2.1 [-5.0, -0.0] / -8.4 [-19.4, +0.3] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | not through N1 | 225 / 278 | 53 | +112.3% | 21.4% | Rs 369.5 L | -0.4 [-14.2, +13.8] / -4.7 [-17.8, +6.9] | 100.0% | **NO CLEAR DIFFERENCE** |

## B: dip depth

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | dip half as deep | 480 / 730 | 47 | +121.4% | 24.1% | Rs 468.8 L | +8.7 [+1.7, +17.2] / -5.7 [-13.0, -0.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | dip 1.5x as deep | 480 / 730 | 43 | +118.6% | 20.8% | Rs 435.5 L | +4.4 [-3.2, +14.5] / -3.7 [-11.8, +4.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | no dip | 480 / 730 | 502 | +103.0% | 22.8% | Rs 285.3 L | -4.0 [-20.9, +12.8] / -10.3 [-32.2, +13.4] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | dip half as deep | 366 / 145 | 3 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| position | dip 1.5x as deep | 366 / 145 | 3 | +117.3% | 24.1% | Rs 422.0 L | +0.0 [+0.0, +0.0] / -0.2 [-1.2, +0.6] | - | **NO CLEAR DIFFERENCE** |
| position | no dip | 366 / 145 | 50 | +120.7% | 24.1% | Rs 461.5 L | -0.9 [-4.3, +1.7] / +4.1 [-0.1, +10.8] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | dip half as deep | 144 / 127 | 13 | +116.3% | 24.1% | Rs 411.3 L | +1.2 [-0.5, +3.6] / -2.5 [-8.8, +1.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | dip 1.5x as deep | 144 / 127 | 8 | +117.4% | 24.1% | Rs 423.9 L | +0.0 [+0.0, +0.0] / +0.0 [+0.0, +0.0] | - | **NO CLEAR DIFFERENCE** |
| returns | no dip | 144 / 127 | 99 | +120.1% | 24.1% | Rs 454.9 L | +3.5 [-6.2, +13.2] / -1.3 [-10.4, +6.8] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | dip half as deep | 225 / 278 | 25 | +124.4% | 22.5% | Rs 507.7 L | +8.6 [+0.0, +19.3] / -2.7 [-12.9, +6.4] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | dip 1.5x as deep | 225 / 278 | 23 | +109.8% | 24.2% | Rs 346.0 L | +0.2 [-1.0, +1.6] / -7.8 [-19.4, +1.7] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | no dip | 225 / 278 | 224 | +121.6% | 22.4% | Rs 471.6 L | +6.4 [-9.1, +22.6] / -3.0 [-21.1, +12.9] | 100.0% | **NO CLEAR DIFFERENCE** |

## C: weekly persistence

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | bad week lasts until the next reading | 480 / 730 | 522 | +123.9% | 32.9% | Rs 500.1 L | +7.6 [-14.9, +30.8] / -2.1 [-27.3, +24.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | bad week lasts until the next reading | 366 / 145 | 95 | +126.1% | 20.1% | Rs 529.7 L | +3.6 [-8.1, +17.5] / +4.3 [-0.0, +9.7] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | bad week lasts until the next reading | 144 / 127 | 75 | +107.2% | 25.9% | Rs 322.0 L | -2.4 [-10.9, +6.6] / -7.6 [-19.3, +1.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | bad week lasts until the next reading | 225 / 278 | 206 | +107.4% | 34.0% | Rs 323.0 L | +4.1 [-16.3, +25.3] / -14.6 [-39.1, +6.2] | 100.0% | **NO CLEAR DIFFERENCE** |

## D: exit

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | sold at the D10 close | 480 / 730 | 629 | +86.8% | 24.2% | Rs 177.6 L | -3.2 [-24.1, +17.3] / -28.8 [-61.5, +3.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | sold at the D10 close | 366 / 145 | 220 | +113.3% | 29.8% | Rs 378.8 L | +0.2 [-20.4, +21.2] / -4.3 [-23.2, +15.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | sold at the D10 close | 144 / 127 | 119 | +111.7% | 24.5% | Rs 363.5 L | -1.2 [-9.2, +7.5] / -3.3 [-13.3, +5.9] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | sold at the D10 close | 225 / 278 | 275 | +110.8% | 24.4% | Rs 355.1 L | +12.3 [-6.2, +31.1] / -19.4 [-38.7, -2.9] | 100.0% | **NO CLEAR DIFFERENCE** |

Trades that keep the tree's exit (no D10 close in the watchlist): trend 0, position 0, returns 0, MIXED returns + trend 0

## E: size

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | size 1/2 | 480 / 730 | 629 | +115.5% | 22.2% | Rs 401.8 L | -4.7 [-27.1, +16.6] / +3.2 [-16.6, +23.0] | 100.0% | **NO CLEAR DIFFERENCE** |
| trend | size 1/6 | 480 / 730 | 629 | +100.0% | 21.0% | Rs 262.5 L | -0.9 [-16.4, +15.4] / -16.7 [-33.7, +0.2] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | size 1/2 | 366 / 145 | 220 | +100.3% | 28.5% | Rs 264.4 L | -3.5 [-21.3, +14.2] / -13.7 [-32.4, +4.1] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | size 1/6 | 366 / 145 | 220 | +105.8% | 25.4% | Rs 308.9 L | -0.8 [-12.3, +11.0] / -10.7 [-22.6, +0.7] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | size 1/2 | 144 / 127 | 119 | +107.2% | 30.3% | Rs 321.5 L | -14.1 [-26.9, -1.1] / +5.2 [-1.2, +12.4] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | size 1/6 | 144 / 127 | 119 | +108.6% | 24.1% | Rs 333.8 L | -8.2 [-16.6, -0.9] / +0.1 [-7.2, +6.4] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | size 1/2 | 225 / 278 | 275 | +108.9% | 27.2% | Rs 337.5 L | -2.2 [-19.9, +14.7] / -6.0 [-25.1, +12.0] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | size 1/6 | 225 / 278 | 275 | +100.6% | 22.9% | Rs 267.4 L | -6.7 [-16.2, +1.6] / -9.8 [-25.5, +6.3] | 100.0% | **NO CLEAR DIFFERENCE** |

## F: skip

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | never traded | 480 / 730 | 689 | +121.3% | 26.2% | Rs 467.5 L | -6.1 [-31.5, +19.2] / +10.4 [-18.7, +42.8] | 100.0% | **NO CLEAR DIFFERENCE** |
| position | never traded | 366 / 145 | 270 | +92.2% | 24.6% | Rs 209.1 L | -16.8 [-40.0, +4.0] / -7.6 [-28.2, +12.3] | 100.0% | **NO CLEAR DIFFERENCE** |
| returns | never traded | 144 / 127 | 144 | +105.4% | 30.3% | Rs 306.2 L | -10.7 [-27.4, +5.9] / -0.3 [-15.2, +12.5] | 100.0% | **NO CLEAR DIFFERENCE** |
| MIXED returns + trend | never traded | 225 / 278 | 308 | +106.6% | 21.8% | Rs 316.6 L | +2.6 [-13.8, +18.5] / -13.7 [-35.0, +7.4] | 100.0% | **NO CLEAR DIFFERENCE** |

## G: lane

| kind | change | picks 2021-23 / 2024-26 | picks changed | a year | worst fall | Rs 5 L became | faster than the tree, points a year: 2021-23 / 2024-26 [95%] | q | verdict |
|---|---|---|---|---|---|---|---|---|---|
| trend | calm picks -> setups only | 161 / 262 | 250 | +102.2% | 25.0% | Rs 279.0 L | -9.2 [-26.5, +6.4] / -5.4 [-30.6, +18.4] | 79.7% | **NO CLEAR DIFFERENCE** |
| trend | jumpy picks -> treated as calm | 319 / 468 | 371 | +85.4% | 49.8% | Rs 169.8 L | -9.2 [-29.7, +11.0] / -23.8 [-59.9, +10.1] | 79.7% | **NO CLEAR DIFFERENCE** |
| position | calm picks -> setups only | 297 / 110 | 221 | +94.0% | 24.6% | Rs 220.3 L | -15.3 [-38.1, +4.9] / -7.4 [-26.0, +10.9] | 79.7% | **NO CLEAR DIFFERENCE** |
| position | jumpy picks -> treated as calm | 69 / 35 | 79 | +123.9% | 20.1% | Rs 501.6 L | +3.4 [-10.4, +17.4] / +2.5 [-8.4, +14.3] | - | **TOO FEW** |
| returns | calm picks -> setups only | 63 / 45 | 80 | +111.9% | 24.1% | Rs 365.1 L | -10.6 [-24.1, +2.3] / +6.1 [-0.0, +13.2] | - | **TOO FEW** |
| returns | jumpy picks -> treated as calm | 81 / 82 | 113 | +123.5% | 20.8% | Rs 495.9 L | +5.4 [-7.8, +17.6] / -0.0 [-12.3, +12.6] | - | **TOO FEW** |
| MIXED returns + trend | calm picks -> setups only | 98 / 121 | 114 | +117.2% | 22.8% | Rs 420.8 L | +2.0 [-6.5, +11.0] / -2.5 [-14.4, +9.5] | - | **TOO FEW** |
| MIXED returns + trend | jumpy picks -> treated as calm | 127 / 157 | 151 | +124.5% | 26.9% | Rs 509.0 L | +4.1 [-14.5, +24.1] / +2.3 [-15.1, +20.3] | 79.7% | **NO CLEAR DIFFERENCE** |

## The setups' fills on the window's D picks (all kinds; shown)

| fills | S1 | S2 | S3 | C1 | C2 | C3 | N1 | any setup |
|---|---|---|---|---|---|---|---|---|
| frozen | 162 | 354 | 281 | 538 | 510 | 417 | 386 | 1,179 |
| dip half as deep | 339 | 354 | 364 | 626 | 668 | 417 | 431 | 1,328 |
| dip 1.5x as deep | 87 | 354 | 193 | 461 | 359 | 417 | 329 | 1,077 |
| no dip | 1,261 | 354 | 1,154 | 1,163 | 1,376 | 417 | 892 | 2,409 |
| bad week lasts until the next reading | 428 | 1,163 | 632 | 1,172 | 1,028 | 1,295 | 386 | 2,243 |

Picks changed = the window's D picks whose planned trade the change alters (entry, exit, net, size, or traded or not), before the book's slots decide. q = Benjamini-Hochberg within the family. CHANGES NOTHING = the planned trades are the tree's. TOO FEW = under 100 picks the change applies to in a period.

Files: variants.csv (every variant's book and comparison), fills.csv, daily.csv (each variant's daily log difference from the tree), gate.csv. Research only: the frozen tree does not change.

