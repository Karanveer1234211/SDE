# skiplab - SK3: bullish divergence and the VWAP reclaim as buy triggers (skiplab v1.2)

Declaration sha256 `00bd6f331bd98c76` (declared 2026-11-14, before any run). Watchlist C:\QuantData\setuplab\WL_R1_10 (sha256 6d6d408c5a5273b9); picks D 15,818, ENS 16,256 (VWAP: D1 from 2021-10-01: D 11,593, ENS 12,025); 261 s.

## Verdict first

- **0 of 5 triggers PASS** - none earns a place beside the frozen setups.
- Judged exactly like the setups: each trigger's own trades against buying the same picks at the D1 open, both engines, both exits, setuplab's rule (300+ trades; buys better than D1 with a 95% interval above 0; beats its twin; positive in all but one year and in both halves).

| trigger | what | engine | trades | net a trade | D1 open, same trades | better than D1 [95%] | net a trade [95%] | over the twin [95%] |
|---|---|---|---:|---:|---:|---|---|---|
| DIV_ON | bullish RSI divergence on at the close -> buy the next open | D | 545 | +1.15% | +2.42% | -1.27 [-1.84, -0.79] | +1.15 [-0.09, +2.42] | - |
|  |  | ENS | 518 | +1.63% | +2.71% | -1.08 [-1.61, -0.57] | +1.63 [+0.57, +2.75] | - |
| DIV_NEW | bullish RSI divergence appears at the close -> buy the next open | D | 185 | -0.24% | +3.51% | -3.75 [-5.29, -2.44] | -0.24 [-1.67, +1.23] | - |
|  |  | ENS | 169 | +0.39% | +3.69% | -3.30 [-4.62, -1.96] | +0.39 [-1.00, +1.85] | - |
| DIV_DIP2 | divergence on and the close 2%+ under the D1 open -> buy the next open (twin: the same dip alone) | D | 210 | +0.30% | -3.36% | +3.65 [+3.25, +4.15] | +0.30 [-1.05, +1.71] | [-0.06, +0.01] |
|  |  | ENS | 174 | +1.41% | -2.39% | +3.80 [+3.02, +4.79] | +1.41 [+0.23, +2.74] | [-0.03, +0.04] |
| VW_D1 | on D1, a close under the VWAP and then back over it -> buy the next 3-minute bar (twin: buy right after the first close under it) | D | 10,196 | +0.54% | +0.80% | -0.26 [-0.32, -0.21] | +0.54 [+0.10, +0.97] | [-0.27, -0.21] |
|  |  | ENS | 10,589 | +0.50% | +0.76% | -0.26 [-0.30, -0.21] | +0.50 [+0.08, +0.91] | [-0.26, -0.21] |
| VW_D15 | the same on the first of D1-D5 where it happens (twin: the first close under the VWAP) | D | 11,169 | +0.51% | +0.70% | -0.19 [-0.27, -0.12] | +0.51 [+0.08, +0.93] | [-0.06, +0.04] |
|  |  | ENS | 11,589 | +0.44% | +0.67% | -0.24 [-0.31, -0.15] | +0.44 [+0.02, +0.84] | [-0.07, +0.02] |

Numbers above: the original_d5 exit (sell at the pick's D5 close), in % a trade after 0.35 pp costs.

## The rule, trigger by trigger

| trigger | original_d5 | fresh | PASS | why not |
|---|---|---|---|---|
| DIV_ON | no | no | **FAIL** | D: lift over D1 not clearly above 0; D: net <= 0 in more than one year; ENS: lift over D1 not clearly above 0; D: lift over D1 not clearly above 0; D: net <= 0 in more than one year; ENS: lift over D1 not clearly above 0 |
| DIV_NEW | no | no | **FAIL** | D: fewer than 300 trades; D: lift over D1 not clearly above 0; D: net <= 0 in more than one year; D: net <= 0 in one half of the period; ENS: fewer than 300 trades; ENS: lift over D1 not clearly above 0; ENS: net <= 0 in more than one year; ENS: net <= 0 in one half of the period; D: fewer than 300 trades; D: lift over D1 not clearly above 0; D: net <= 0 in more than one year; ENS: fewer than 300 trades; ENS: lift over D1 not clearly above 0; ENS: net <= 0 in more than one year; ENS: net <= 0 in one half of the period |
| DIV_DIP2 | no | no | **FAIL** | D: fewer than 300 trades; D: the indicators add nothing clear over the same entry without them; D: net <= 0 in more than one year; ENS: fewer than 300 trades; ENS: the indicators add nothing clear over the same entry without them; D: fewer than 300 trades; D: the indicators add nothing clear over the same entry without them; ENS: fewer than 300 trades; ENS: net <= 0 in more than one year |
| VW_D1 | no | no | **FAIL** | D: lift over D1 not clearly above 0; D: the indicators add nothing clear over the same entry without them; ENS: lift over D1 not clearly above 0; ENS: the indicators add nothing clear over the same entry without them; D: lift over D1 not clearly above 0; D: the indicators add nothing clear over the same entry without them; ENS: lift over D1 not clearly above 0; ENS: the indicators add nothing clear over the same entry without them |
| VW_D15 | no | no | **FAIL** | D: lift over D1 not clearly above 0; D: the indicators add nothing clear over the same entry without them; ENS: lift over D1 not clearly above 0; ENS: the indicators add nothing clear over the same entry without them; D: lift over D1 not clearly above 0; D: the indicators add nothing clear over the same entry without them; ENS: lift over D1 not clearly above 0; ENS: the indicators add nothing clear over the same entry without them |

## Where it works and where not (descriptive, original_d5)

| trigger | engine | group | trades | net a trade | D1 open, same trades | better than D1 [95%] |
|---|---|---|---:|---:|---:|---|
| DIV_ON | D | jumpy | 176 | +1.90% | +3.62% | -1.72 [-2.86, -0.83] |
| DIV_ON | D | calm | 278 | +0.56% | +1.55% | -0.99 [-1.62, -0.49] |
| DIV_ON | D | ranks 1-3 | 191 | +1.69% | +2.61% | -0.92 [-1.57, -0.38] |
| DIV_ON | D | ranks 4-10 | 354 | +0.85% | +2.32% | -1.47 [-2.22, -0.81] |
| DIV_NEW | D | jumpy | 77 | -0.28% | +3.66% | -3.94 [-6.76, -1.91] |
| DIV_NEW | D | calm | 75 | -0.82% | +2.85% | -3.67 [-5.70, -2.01] |
| DIV_NEW | D | ranks 1-3 | 61 | -0.19% | +2.68% | -2.87 [-4.82, -1.19] |
| DIV_NEW | D | ranks 4-10 | 124 | -0.26% | +3.92% | -4.18 [-6.02, -2.48] |
| DIV_DIP2 | D | jumpy | 65 | +1.95% | -2.41% | +4.36 [+3.59, +5.21] |
| DIV_DIP2 | D | calm | 102 | -0.43% | -4.02% | +3.59 [+3.10, +4.17] |
| DIV_DIP2 | D | ranks 1-3 | 74 | +1.48% | -2.02% | +3.50 [+2.97, +4.19] |
| DIV_DIP2 | D | ranks 4-10 | 136 | -0.35% | -4.09% | +3.74 [+3.20, +4.33] |
| VW_D1 | D | jumpy | 3,589 | +0.92% | +1.32% | -0.39 [-0.50, -0.30] |
| VW_D1 | D | calm | 6,607 | +0.33% | +0.52% | -0.19 [-0.24, -0.14] |
| VW_D1 | D | ranks 1-3 | 2,961 | +0.99% | +1.26% | -0.27 [-0.34, -0.20] |
| VW_D1 | D | ranks 4-10 | 7,235 | +0.36% | +0.61% | -0.26 [-0.32, -0.20] |
| VW_D15 | D | jumpy | 4,020 | +0.81% | +1.12% | -0.31 [-0.46, -0.17] |
| VW_D15 | D | calm | 7,149 | +0.34% | +0.46% | -0.13 [-0.21, -0.05] |
| VW_D15 | D | ranks 1-3 | 3,295 | +0.93% | +1.12% | -0.19 [-0.32, -0.07] |
| VW_D15 | D | ranks 4-10 | 7,874 | +0.33% | +0.53% | -0.19 [-0.28, -0.12] |
| DIV_ON | ENS | jumpy | 137 | +1.57% | +3.28% | -1.71 [-2.80, -0.73] |
| DIV_ON | ENS | calm | 296 | +1.24% | +1.70% | -0.46 [-0.86, +0.05] |
| DIV_ON | ENS | ranks 1-3 | 156 | +3.02% | +4.33% | -1.31 [-2.35, -0.44] |
| DIV_ON | ENS | ranks 4-10 | 362 | +1.04% | +2.01% | -0.97 [-1.48, -0.48] |
| DIV_NEW | ENS | jumpy | 54 | -1.46% | +2.87% | -4.33 [-6.80, -2.05] |
| DIV_NEW | ENS | calm | 77 | +0.23% | +1.99% | -1.76 [-3.32, +0.19] |
| DIV_NEW | ENS | ranks 1-3 | 52 | +0.61% | +4.53% | -3.93 [-6.60, -1.47] |
| DIV_NEW | ENS | ranks 4-10 | 117 | +0.30% | +3.31% | -3.01 [-4.42, -1.59] |
| DIV_DIP2 | ENS | jumpy | 49 | +2.26% | -2.10% | +4.36 [+3.45, +5.37] |
| DIV_DIP2 | ENS | calm | 96 | +0.48% | -3.00% | +3.48 [+2.68, +4.65] |
| DIV_DIP2 | ENS | ranks 1-3 | 53 | +1.88% | -1.29% | +3.17 [+2.62, +3.89] |
| DIV_DIP2 | ENS | ranks 4-10 | 121 | +1.20% | -2.87% | +4.07 [+3.07, +5.23] |
| VW_D1 | ENS | jumpy | 3,185 | +1.02% | +1.44% | -0.42 [-0.52, -0.31] |
| VW_D1 | ENS | calm | 7,404 | +0.28% | +0.47% | -0.19 [-0.23, -0.15] |
| VW_D1 | ENS | ranks 1-3 | 3,122 | +0.80% | +1.09% | -0.29 [-0.36, -0.23] |
| VW_D1 | ENS | ranks 4-10 | 7,467 | +0.38% | +0.62% | -0.24 [-0.29, -0.19] |
| VW_D15 | ENS | jumpy | 3,589 | +0.86% | +1.28% | -0.42 [-0.61, -0.24] |
| VW_D15 | ENS | calm | 8,000 | +0.25% | +0.40% | -0.15 [-0.22, -0.08] |
| VW_D15 | ENS | ranks 1-3 | 3,457 | +0.69% | +0.94% | -0.26 [-0.37, -0.13] |
| VW_D15 | ENS | ranks 4-10 | 8,132 | +0.33% | +0.56% | -0.23 [-0.30, -0.15] |

Net a trade, year by year (original_d5):

| trigger | engine | 2020 | 2021 | 2022 | 2023 | 2024 | 2025 | 2026 |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| DIV_ON | D | +1.49% (91) | -1.57% (51) | +4.69% (80) | +2.21% (80) | -0.35% (59) | +0.54% (113) | -0.33% (71) |
| DIV_NEW | D | +1.17% (33) | -1.39% (19) | +2.49% (29) | -0.40% (27) | -2.17% (29) | -1.23% (30) | -1.01% (18) |
| DIV_DIP2 | D | -0.49% (43) | -4.04% (22) | +4.54% (27) | +0.45% (25) | -0.21% (22) | +0.08% (42) | +1.36% (29) |
| VW_D1 | D | - | +0.79% (546) | +0.22% (2102) | +0.54% (2187) | +1.23% (2123) | +0.24% (1953) | +0.27% (1285) |
| VW_D15 | D | - | +0.78% (590) | +0.19% (2313) | +0.53% (2348) | +1.25% (2341) | +0.10% (2164) | +0.27% (1413) |
| DIV_ON | ENS | +3.09% (85) | +0.82% (37) | +3.88% (63) | +2.70% (77) | +0.58% (51) | -0.01% (134) | +1.02% (71) |
| DIV_NEW | ENS | +3.35% (38) | -0.25% (12) | +0.45% (22) | -0.20% (25) | -2.93% (16) | -0.63% (34) | +0.25% (22) |
| DIV_DIP2 | ENS | +3.04% (29) | -1.67% (10) | +3.30% (16) | +1.50% (19) | +2.18% (23) | +0.21% (52) | +1.27% (25) |
| VW_D1 | ENS | - | -0.15% (550) | +0.18% (2163) | +0.83% (2171) | +0.89% (2153) | +0.32% (2125) | +0.44% (1427) |
| VW_D15 | ENS | - | -0.08% (593) | +0.11% (2342) | +0.83% (2342) | +0.83% (2395) | +0.17% (2348) | +0.34% (1569) |

## Checks

- Divergence: tradelab tl_state (settings 9b991e86863591c7) on 1,239 of 1,239 stocks' daily bars; 2,957,734 sessions, the divergence on in 101,387.
- VWAP: 54,090 usable of 55,895 3-minute sessions asked (tradelab's check: 54090 usable of 55448 with bars); picks with a missing or unusable session before an entry (not traded): D 810, ENS 832 (both VWAP triggers together).
- Lanes for the jumpy / calm rows: TREE_20261109_001.

## What this is not

- History (2020-2026) the setups were also found on: a pass makes a candidate, the forward paper test decides.
- Per trade on the trades a trigger takes (Karan's comparison); the picks it skips are not counted - the money view is parked, as for the setups.
- The cache's bars, not TradingView's: TradingView's RSI and VWAP can differ slightly at the edges.
