# whylab part T - what triggered each pick's move (T_20261115_002)

whylab v1.4 | T declaration f6825bc20d149b6d (fixed 2026-11-15 12:17 IST, before any T run) | part P run P_20261115_002 | 4,965 picks | 45 s

For every pick, the inputs D used for it (part P) were turned into the readable indicators behind them, and those indicators' triggers were followed on the stock's daily bars from the signal day to D10 (the market's next 10 sessions). **The move** = the first close at or above the D1 open + 1 ATR. Each kind of pick is measured on its own: a trigger is measured only on the picks of that kind whose own indicators include it.

- **Fired before the move** (shown): of the picks that moved on D2-D10, how many had the trigger fire between D1 and the close before the move; of the picks that never moved, how many had it fire over the same days. Part of this is the move itself starting.
- **Verdict**: at closes D1-D7 before the move, did the move come within 3 closes more often after the trigger fired than after closes where it could have fired but did not (a crossing: the line was below), **at the same close after the pick and the same distance from the target**? TRIGGER = yes in 2020-23 and in 2024-26 (95% intervals above 0) AND it survives the many-tests check (Benjamini-Hochberg over every judged test of this run, false discovery rate 5%, on the weaker period). MAY BE CHANCE = both periods, but not after that check. FALLS TOO = it also made a 1-ATR fall more likely in both periods: a sign of a bigger move either way, not of a rise.
- **A TRIGGER is a historical link worth testing as an entry, not a tested entry.** Nothing here measures next-open fills, costs, exits, MFE/MAE or missed winners.

## Triggers found (2020-23 / 2024-26, points of chance at the same close and distance; many-tests q)

- None passed both periods and the many-tests check.

## Checks

- These bars give part P's D1-D5 move on 4,965 of 4,965 picks (100.00%) -> PASSED. Picks left out: 0 because D1-D10 are not the market's next 10 sessions, 0 without the bars, 0 without the signal-day ATR.
- Picks measured: 4,965. Moved 2,597 (52.3%; on D1 343), not moved 2,368.
- Tests: 496 kind x trigger rows; 11 judged (100+ matched firings in each period); 0 on one side of 0 in both periods; after the many-tests check: TRIGGER 0 (a yardstick that repeats a kind's own trigger counted once), LESS LIKELY 0, MAY BE CHANCE 0.
- D's top-5 push over all picks: 62% the stock's own daily inputs (followed through their indicator family), 25% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 13% left out (WorldQuant 10%).

## trend (1,461 picks)

- Moved within 10 days: 51% (on D1 7%); median move day D3.
- Its own indicators (share of its picks): EMA-20 slope 100%, ATR / volatility 44%, 4/13-week momentum 37%, ADX / DI 32%, RSI-14 28%, Bollinger bands 15%.
- D's top-5 push for these picks: 73% the stock's own daily inputs (followed through their indicator family), 13% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 14% left out (WorldQuant 10%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 1,459 | 97% / 85% | D1 / 3 | +4.3 [-1.0, +9.2] (1,800) / +1.4 [-2.2, +6.2] (2,355) | -2.3 / -3.2 | 90.1% | **NO CLEAR TRIGGER** |
| new 52-week closing high | 52-week range | 216 | 2% / 0% | D2 / 2 | - [-, -] (0) / +41.0 [+7.3, +100.0] (4) | - / -3.4 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 636 | 20% / 16% | D3 / 2 | +9.0 [-1.2, +21.3] (70) / +4.6 [-7.1, +16.4] (89) | -0.5 / +0.9 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 636 | 21% / 16% | D2 / 2 | +1.6 [-6.9, +10.2] (88) / +6.3 [-5.0, +18.8] (96) | +2.0 / -3.5 | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 540 | 2% / 1% | D4 / 1 | +1.3 [-31.2, +44.8] (7) / +24.7 [-25.0, +76.4] (3) | +0.4 / -2.5 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 412 | 57% / 25% | D2 / 2 | +0.0 [-35.0, +32.3] (35) / +9.2 [-2.6, +23.9] (173) | -4.1 / -2.1 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 1,459 | 3% / 1% | D3 / 1 | -1.1 [-18.0, +30.3] (17) / -1.3 [-16.9, +22.1] (23) | -0.9 / +0.7 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 217 | 17% / 24% | D1 / 6 | -2.6 [-11.6, +5.4] (32) / +1.3 [-9.0, +10.5] (48) | +11.2 / +5.3 | - | **TOO FEW** |
| gap up above the previous high | candle | 129 | 40% / 30% | D3 / 2 | -4.2 [-36.2, +26.7] (32) / +2.5 [-14.4, +19.6] (45) | -9.1 / +1.4 | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 540 | 3% / 1% | D3 / 3 | -4.8 [-29.4, +21.7] (16) / - [-, -] (0) | +4.0 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 173 | 39% / 38% | D2 / 2 | -7.4 [-22.1, +8.7] (44) / -4.2 [-19.7, +10.9] (75) | -5.5 / +2.7 | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 471 | 2% / 2% | D4 / 2 | +4.9 [-19.7, +50.0] (4) / -11.5 [-33.7, +15.4] (14) | -0.2 / +0.4 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 129 | 52% / 39% | D2 / 2 | -11.5 [-42.3, +10.1] (33) / +23.7 [+7.0, +37.9] (66) | -5.2 / -5.3 | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 216 | 21% / 32% | D1 / 5 | -18.0 [-48.9, +0.0] (12) / +3.6 [-3.6, +12.5] (163) | +13.1 / +0.1 | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 34 | 5% / 9% | D5 / 2 | - [-, -] (0) / -33.3 [-100.0, +0.0] (3) | +0.0 / +33.3 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 173 | 10% / 9% | D3 / 2 | -35.5 [-62.5, -5.9] (5) / +4.0 [-28.0, +34.7] (23) | +3.2 / +2.5 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 147 | 0% / 2% | - | - [-, -] (0) / -44.4 [-79.4, -5.4] (2) | +0.0 / +0.0 | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 540 | 0% / 0% | - | -58.3 [-84.4, -31.3] (2) / - [-, -] (0) | -1.7 / -3.0 | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 412 | 0% / 0% | - | - [-, -] (0) / - [-, -] (1) | +0.0 / -0.9 | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 217 | 3% / 1% | D8 / 1 | - [-, -] (1) / - [-, -] (1) | -2.6 / -0.3 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 216 | 0% / 1% | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 1,461 | 64% / 34% | D2 / 2 | +10.5 [+3.1, +17.1] (589) / +6.6 [-0.0, +13.1] (599) | -1.4 / -0.4 | 52.7% | **NO CLEAR TRIGGER** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 1,461 | 46% / 41% | D1 / 2 | +3.6 [-3.1, +10.3] (568) / +0.9 [-3.3, +4.7] (744) | -1.1 / -0.9 | 90.1% | **NO CLEAR TRIGGER** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: returns, reversal and oscillators + trend (620 picks)

- Moved within 10 days: 48% (on D1 8%); median move day D3.
- Its own indicators (share of its picks): EMA-20 slope 96%, 4/13-week momentum 47%, ATR / volatility 39%, RSI-14 29%, ADX / DI 23%, Bollinger bands 19%.
- D's top-5 push for these picks: 65% the stock's own daily inputs (followed through their indicator family), 16% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 18% left out (WorldQuant 17%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 596 | 98% / 83% | D1 / 3 | +2.8 [-2.4, +9.4] (825) / +0.7 [-3.9, +8.0] (795) | -7.1 / -5.8 | 90.1% | **NO CLEAR TRIGGER** |
| volume above 1.5x its 20-day average | volume | 111 | 52% / 25% | D1 / 2 | +19.2 [-3.4, +33.9] (43) / +11.0 [-21.4, +35.9] (28) | +1.7 / +2.0 | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 116 | 12% / 3% | D3 / 3 | - [-, -] (1) / +9.9 [-44.7, +62.5] (8) | +0.0 / -3.0 | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 294 | 6% / 1% | D2 / 2 | +14.3 [-38.3, +57.9] (9) / +9.2 [-40.2, +60.7] (5) | -1.8 / -4.2 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 72 | 60% / 31% | D2 / 2 | +27.3 [+0.0, +60.0] (11) / +8.0 [-9.8, +32.5] (39) | -1.9 / -7.6 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 116 | 20% / 33% | D1 / 2 | +6.6 [-8.3, +21.2] (25) / +7.6 [-11.3, +29.6] (31) | -16.0 / +3.4 | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 141 | 4% / 2% | D6 / 2 | +5.1 [-100.0, +100.0] (3) / +8.3 [-100.0, +100.0] (4) | +0.0 / +0.0 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 178 | 55% / 17% | D2 / 1 | +4.7 [-22.2, +40.0] (23) / +18.7 [+5.0, +33.3] (52) | -3.9 / +4.1 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 241 | 15% / 8% | D2 / 2 | +2.9 [-19.9, +24.4] (24) / +32.1 [+6.9, +57.1] (16) | -2.5 / +3.3 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 80 | 6% / 0% | D2 / 4 | +0.0 [-100.0, +100.0] (2) / - [-, -] (0) | -5.7 / - | - | **TOO FEW** |
| gap up above the previous high | candle | 72 | 23% / 14% | D2 / 2 | +0.0 [+0.0, +0.0] (3) / +13.8 [-18.2, +36.7] (16) | +0.0 / -3.1 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 241 | 23% / 22% | D2 / 2 | -2.8 [-10.1, +5.9] (77) / +12.4 [-9.3, +35.5] (26) | +4.3 / -1.1 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 596 | 9% / 3% | D4 / 2 | +8.3 [-18.2, +36.3] (28) / -4.0 [-28.8, +18.5] (19) | -1.8 / +3.1 | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 80 | 6% / 24% | D2 / 4 | -9.0 [-33.3, +0.0] (12) / -7.9 [-24.9, +4.9] (30) | +4.8 / -8.3 | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 294 | 1% / 1% | D6 / 2 | -15.6 [-54.7, +33.3] (5) / - [-, -] (0) | +4.9 / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 111 | 7% / 6% | D6 / 1 | +36.8 [-17.1, +100.0] (5) / -29.2 [-83.3, +0.0] (4) | -8.9 / +22.7 | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 178 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | -0.9 / +0.0 | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 16 | 0% / 3% | - | - [-, -] (1) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 80 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 81 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | +0.0 / +0.0 | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 294 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | -0.9 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 620 | 47% / 44% | D1 / 2 | +6.9 [+0.2, +13.2] (313) / +1.9 [-4.6, +8.2] (279) | -3.2 / -6.4 | 90.1% | **NO CLEAR TRIGGER** |
| close above the previous day's high *(yardstick)* | yardstick | 620 | 67% / 30% | D2 / 1 | +9.3 [+0.1, +18.3] (275) / +1.3 [-6.8, +9.3] (243) | -3.8 / -2.4 | 90.1% | **NO CLEAR TRIGGER** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## position in range (52-week, 20-day, bands) (612 picks)

- Moved within 10 days: 66% (on D1 8%); median move day D4.
- Its own indicators (share of its picks): 52-week range 94%, ATR / volatility 63%, volume 58%, EMA-20 slope 43%, 20-day range 38%, 4/13-week momentum 17%.
- D's top-5 push for these picks: 59% the stock's own daily inputs (followed through their indicator family), 37% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 4% left out (WorldQuant 2%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| new 52-week closing high | 52-week range | 578 | 57% / 22% | D1 / 2 | +3.8 [-7.1, +13.1] (273) / +9.5 [-7.9, +29.1] (106) | +0.1 / -1.9 | 90.1% | **NO CLEAR TRIGGER** |
| close crosses above EMA-20 | EMA-20 slope | 261 | 9% / 7% | D4 / 3 | +30.8 [+0.0, +66.7] (13) / +25.0 [+0.0, +100.0] (4) | +0.0 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 386 | 31% / 39% | D2 / 3 | +3.3 [-7.6, +14.0] (133) / +10.8 [-6.9, +25.4] (77) | +2.2 / -1.5 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 231 | 32% / 9% | D1 / 1 | +3.0 [-24.0, +27.8] (39) / +23.7 [-9.2, +64.3] (24) | +3.1 / -1.7 | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 30 | 6% / 12% | D1 / 1 | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 352 | 63% / 34% | D1 / 2 | -0.2 [-15.7, +15.4] (220) / +5.5 [-16.3, +27.1] (66) | +2.6 / -1.8 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 40 | 18% / 33% | D1 / 2 | -1.1 [-59.8, +40.0] (8) / - [-, -] (0) | +2.4 / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 386 | 21% / 26% | D2 / 2 | -2.7 [-18.2, +12.9] (65) / +3.1 [-13.2, +24.1] (53) | +4.9 / -2.3 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 352 | 42% / 34% | D1 / 2 | -3.8 [-13.5, +5.2] (172) / +14.4 [-5.5, +32.9] (52) | +1.2 / -4.7 | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 261 | 93% / 54% | D1 / 2 | +2.2 [-6.1, +13.5] (263) / -3.9 [-20.8, +13.7] (85) | -0.2 / +0.6 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 578 | 21% / 15% | D3 / 3 | -6.2 [-20.5, +7.6] (90) / +29.0 [+5.6, +47.8] (40) | +13.7 / -4.9 | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 105 | 13% / 12% | D2 / 1 | -16.7 [-66.7, +50.0] (12) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 105 | 47% / 22% | D1 / 3 | -18.8 [-39.2, -0.0] (59) / - [-, -] (0) | -0.2 / +0.0 | - | **TOO FEW** |
| gap up above the previous high | candle | 29 | 25% / 39% | D1 / 2 | -73.3 [-100.0, -37.5] (5) / +22.2 [-50.0, +100.0] (6) | +0.0 / +4.8 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 29 | 69% / 45% | D2 / 4 | -87.5 [-100.0, -50.0] (4) / -18.7 [-75.0, +25.0] (8) | +0.0 / -14.3 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 21 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 21 | 15% / 9% | D5 / 4 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 59 | 0% / 1% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 40 | 0% / 8% | - | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 578 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 105 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 612 | 71% / 32% | D2 / 2 | +3.4 [-6.5, +12.1] (317) / -4.0 [-12.3, +8.9] (155) | +0.5 / -0.0 | 100.0% | **NO CLEAR TRIGGER** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 612 | 44% / 35% | D1 / 2 | -1.9 [-10.1, +5.7] (311) / +7.2 [-8.6, +23.4] (95) | +0.9 / -1.9 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## volatility and jumpiness (579 picks)

- Moved within 10 days: 51% (on D1 6%); median move day D4.
- Its own indicators (share of its picks): ATR / volatility 100%, volume 34%, 52-week range 30%, Bollinger bands 21%, EMA-20 slope 18%, MACD 9%.
- D's top-5 push for these picks: 43% the stock's own daily inputs (followed through their indicator family), 49% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 8% left out (WorldQuant 7%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| MACD crosses above its signal | MACD | 55 | 4% / 3% | D5 / 2 | +33.3 [+0.0, +100.0] (3) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 176 | 32% / 8% | D2 / 2 | +30.5 [+3.3, +53.7] (45) / +100.0 [+100.0, +100.0] (2) | -3.0 / +0.0 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 23 | 33% / 0% | D2 / 2 | +25.0 [+0.0, +100.0] (4) / - [-, -] (0) | -7.4 / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 124 | 35% / 16% | D2 / 2 | +14.0 [-9.1, +38.6] (36) / - [-, -] (0) | -17.8 / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 124 | 47% / 28% | D2 / 2 | +13.7 [-2.8, +33.8] (81) / - [-, -] (0) | -4.6 / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 107 | 26% / 19% | D3 / 2 | +13.0 [-8.6, +47.1] (28) / - [-, -] (0) | -1.0 / - | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 107 | 100% / 74% | D1 / 3 | +7.5 [-3.0, +16.7] (214) / - [-, -] (0) | +1.2 / +0.0 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 194 | 54% / 24% | D2 / 1 | +6.4 [-8.6, +21.2] (107) / +78.6 [+0.0, +100.0] (7) | +4.3 / -4.2 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 577 | 33% / 36% | D2 / 3 | +0.5 [-4.5, +6.3] (347) / +7.1 [-33.3, +33.3] (14) | +0.4 / -5.9 | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 176 | 0% / 0% | - | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 20 | 0% / 22% | - | +0.0 [+0.0, +0.0] (3) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 20 | 0% / 8% | - | +0.0 [+0.0, +0.0] (2) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 194 | 42% / 33% | D3 / 2 | -1.3 [-11.9, +7.6] (131) / +50.0 [+0.0, +100.0] (2) | -0.7 / -7.7 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 577 | 26% / 33% | D2 / 3 | -1.5 [-7.9, +5.5] (227) / +20.3 [-33.3, +100.0] (16) | +1.1 / -5.6 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 176 | 12% / 16% | D4 / 1 | -16.7 [-32.3, +6.0] (32) / - [-, -] (0) | +2.5 / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 20 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 579 | 39% / 33% | D2 / 2 | -0.7 [-6.3, +4.5] (378) / +15.8 [-16.7, +33.3] (10) | +0.7 / -0.5 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 579 | 74% / 33% | D2 / 2 | +4.9 [-1.8, +11.5] (440) / -11.1 [-50.0, +100.0] (18) | +0.7 / -1.9 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: position in range (52-week, 20-day, bands) + volatility and jumpiness (337 picks)

- Moved within 10 days: 55% (on D1 6%); median move day D4.
- Its own indicators (share of its picks): ATR / volatility 89%, 52-week range 80%, volume 46%, EMA-20 slope 40%, 20-day range 19%, 4/13-week momentum 15%.
- D's top-5 push for these picks: 59% the stock's own daily inputs (followed through their indicator family), 35% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 6% left out (WorldQuant 4%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| new 52-week closing high | 52-week range | 268 | 45% / 20% | D1 / 2 | +17.5 [-3.3, +39.5] (116) / +17.1 [-18.7, +50.0] (27) | -1.8 / -3.6 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 154 | 60% / 22% | D1 / 2 | +13.7 [-12.2, +44.0] (82) / +41.7 [+7.5, +73.0] (34) | -0.4 / -9.8 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 154 | 42% / 27% | D2 / 2 | +13.7 [-6.6, +36.9] (64) / +29.0 [-1.8, +57.6] (19) | +3.5 / -0.7 | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 134 | 91% / 62% | D2 / 3 | +9.3 [-1.1, +18.9] (142) / +9.5 [-8.4, +25.9] (70) | -7.0 / -6.9 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 64 | 22% / 9% | D2 / 1 | +66.2 [+0.0, +100.0] (4) / +6.7 [-100.0, +50.0] (5) | +0.0 / +1.2 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 268 | 20% / 14% | D2 / 3 | +5.9 [-16.0, +25.0] (39) / +19.1 [-13.9, +43.8] (17) | -2.9 / +0.2 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 134 | 19% / 10% | D5 / 2 | +12.8 [-13.3, +100.0] (6) / +0.0 [+0.0, +0.0] (6) | -16.7 / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 37 | 19% / 15% | D7 / 3 | +0.0 [+0.0, +0.0] (3) / - [-, -] (1) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 299 | 26% / 25% | D2 / 2 | -6.3 [-18.4, +5.0] (81) / +4.1 [-9.5, +23.3] (25) | +0.1 / +7.6 | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 51 | 29% / 28% | D2 / 2 | -6.7 [-43.7, +42.8] (30) / - [-, -] (0) | +1.9 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 299 | 34% / 39% | D2 / 3 | -1.5 [-9.0, +6.1] (135) / -14.0 [-27.6, +1.6] (35) | +2.0 / +18.2 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 37 | 6% / 14% | D7 / 1 | -16.7 [-100.0, +0.0] (2) / +50.0 [+0.0, +100.0] (2) | +16.7 / +20.0 | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 51 | 19% / 17% | D4 / 3 | -16.7 [-100.0, +0.0] (2) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| gap up above the previous high | candle | 10 | 25% / 46% | D3 / 1 | - [-, -] (0) / -25.0 [-50.0, +0.0] (6) | - / -38.9 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 10 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 10 | 0% / 10% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 33 | 22% / 2% | D8 / 2 | - [-, -] (1) / - [-, -] (1) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 11 | 17% / 8% | D5 / 3 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 268 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 51 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 10 | 50% / 12% | D1 / 2 | - [-, -] (0) / - [-, -] (1) | +0.0 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 337 | 42% / 33% | D2 / 2 | +9.5 [-1.6, +22.5] (168) / +9.6 [-10.8, +30.6] (41) | +0.5 / +1.3 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 337 | 71% / 36% | D2 / 2 | +7.6 [-4.8, +18.4] (179) / +10.4 [-3.8, +29.2] (82) | -2.5 / -3.5 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## returns, reversal and oscillators (319 picks)

- Moved within 10 days: 46% (on D1 5%); median move day D3.
- Its own indicators (share of its picks): ATR / volatility 57%, 4/13-week momentum 46%, EMA-20 slope 44%, Bollinger bands 38%, volume 31%, 52-week range 27%.
- D's top-5 push for these picks: 44% the stock's own daily inputs (followed through their indicator family), 29% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 27% left out (WorldQuant 24%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 140 | 95% / 86% | D1 / 3 | +9.8 [-4.4, +20.6] (160) / +9.3 [-1.7, +16.6] (158) | -9.8 / +4.0 | 66.9% | **NO CLEAR TRIGGER** |
| new 52-week closing high | 52-week range | 87 | 14% / 7% | D1 / 1 | +9.0 [-32.9, +47.4] (13) / - [-, -] (0) | -1.1 / +0.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 182 | 23% / 22% | D2 / 2 | +6.4 [-6.6, +22.6] (30) / +11.7 [-7.4, +35.9] (28) | +2.5 / +4.4 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 58 | 70% / 40% | D2 / 2 | +14.6 [-27.6, +50.0] (12) / +6.4 [-22.2, +23.3] (25) | -18.2 / -7.0 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 87 | 26% / 16% | D1 / 2 | +4.7 [-15.6, +28.1] (22) / - [-, -] (1) | -4.8 / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 147 | 12% / 5% | D2 / 2 | +4.6 [-25.3, +56.7] (19) / - [-, -] (0) | -3.4 / +0.0 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 182 | 14% / 20% | D2 / 3 | +2.7 [-15.5, +22.9] (27) / +5.5 [-15.2, +30.4] (24) | +6.9 / +7.6 | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 147 | 11% / 6% | D1 / 1 | -0.9 [-26.3, +24.4] (22) / - [-, -] (0) | -1.8 / +0.0 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 140 | 27% / 11% | D4 / 2 | +44.5 [-3.9, +77.6] (14) / -1.5 [-32.3, +27.9] (15) | -0.7 / +7.0 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 122 | 5% / 6% | D2 / 4 | -2.9 [-21.4, +0.0] (5) / +18.2 [-6.1, +100.0] (5) | - / -65.5 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 100 | 25% / 26% | D4 / 1 | -3.2 [-25.0, +18.5] (23) / -1.8 [-33.3, +50.0] (16) | +8.6 / -4.7 | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 70 | 7% / 9% | D2 / 4 | +25.0 [+0.0, +100.0] (4) / -4.2 [-28.6, +0.0] (4) | +50.0 / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 122 | 30% / 15% | D3 / 1 | +7.4 [-25.0, +50.0] (9) / -10.6 [-46.7, +35.0] (16) | +0.0 / +10.0 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 100 | 20% / 14% | D2 / 2 | -3.9 [-42.2, +24.4] (20) / -12.4 [-36.4, +0.0] (11) | -1.3 / -3.9 | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 87 | 0% / 9% | - | - [-, -] (0) / -15.1 [-53.7, +0.0] (17) | - / +33.3 | - | **TOO FEW** |
| gap up above the previous high | candle | 58 | 48% / 26% | D2 / 1 | +37.3 [-8.3, +71.4] (9) / -20.2 [-47.1, +20.0] (13) | +2.5 / +7.3 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 50 | 5% / 4% | D1 / 5 | - [-, -] (0) / -25.0 [-100.0, +0.0] (2) | - / +0.0 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 33 | 29% / 14% | D2 / 2 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 33 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 10 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 147 | 2% / 0% | D2 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 319 | 67% / 36% | D2 / 2 | +9.3 [-2.0, +18.9] (152) / +8.1 [-7.4, +19.6] (103) | -0.2 / +2.3 | 87.0% | **NO CLEAR TRIGGER** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 319 | 21% / 21% | D3 / 2 | -4.5 [-15.1, +5.9] (75) / +2.6 [-13.1, +17.3] (60) | +8.6 / +4.2 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: trend + volatility and jumpiness (243 picks)

- Moved within 10 days: 44% (on D1 5%); median move day D4.
- Its own indicators (share of its picks): EMA-20 slope 98%, ATR / volatility 86%, volume 43%, 4/13-week momentum 20%, Bollinger bands 19%, 52-week range 15%.
- D's top-5 push for these picks: 72% the stock's own daily inputs (followed through their indicator family), 20% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 8% left out (WorldQuant 5%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 239 | 98% / 72% | D1 / 3 | -0.9 [-9.2, +7.0] (225) / -5.4 [-12.2, +6.1] (297) | -9.2 / -6.0 | 90.1% | **NO CLEAR TRIGGER** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 49 | 29% / 3% | D3 / 2 | +50.0 [+0.0, +100.0] (2) / - [-, -] (1) | -16.7 / - | - | **TOO FEW** |
| gap up above the previous high | candle | 16 | 44% / 31% | D4 / 2 | - [-, -] (1) / +20.0 [-83.3, +100.0] (5) | - / +0.0 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 104 | 31% / 13% | D1 / 2 | +38.4 [+0.0, +84.1] (12) / +13.7 [-11.0, +39.5] (27) | +0.5 / -2.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 208 | 26% / 18% | D2 / 3 | +17.0 [-2.0, +41.1] (27) / +3.1 [-11.2, +22.9] (35) | +4.4 / -3.6 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 16 | 44% / 46% | D3 / 3 | - [-, -] (1) / +2.8 [-100.0, +75.0] (6) | - / +6.1 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 239 | 24% / 9% | D2 / 2 | +21.6 [-15.3, +64.4] (14) / +0.4 [-27.5, +24.0] (30) | -9.0 / +2.9 | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 30 | 10% / 4% | D1 / 6 | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 36 | 0% / 6% | - | - [-, -] (0) / +0.0 [+0.0, +0.0] (5) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 49 | 0% / 2% | - | +0.0 [+0.0, +0.0] (2) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 208 | 29% / 16% | D2 / 2 | -4.0 [-21.1, +14.2] (30) / +19.0 [+4.9, +36.4] (42) | -0.4 / -2.5 | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 45 | 25% / 12% | D2 / 4 | - [-, -] (1) / -8.3 [-74.1, +50.0] (8) | - / -1.3 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 45 | 8% / 27% | D1 / 2 | -14.3 [-100.0, +0.0] (7) / +36.7 [-100.0, +100.0] (4) | +0.0 / +22.7 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 104 | 20% / 16% | D1 / 2 | -43.8 [-100.0, +32.1] (7) / -19.1 [-50.8, +18.9] (24) | +3.7 / -1.5 | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 28 | 0% / 5% | - | - [-, -] (0) / -50.0 [-100.0, +0.0] (2) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 49 | 7% / 1% | D1 / 1 | -50.0 [-100.0, +0.0] (2) / - [-, -] (0) | -8.3 / +0.0 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 11 | 67% / 39% | D2 / 2 | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 11 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 36 | 0% / 4% | - | - [-, -] (0) / - [-, -] (1) | - / -25.0 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 36 | 18% / 0% | D2 / 2 | - [-, -] (0) / - [-, -] (1) | - / -36.7 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 15 | 17% / 0% | D2 / 6 | - [-, -] (0) / - [-, -] (1) | - / +0.0 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 243 | 35% / 23% | D2 / 2 | +19.5 [+4.9, +37.7] (53) / +4.8 [-8.4, +18.6] (66) | +3.0 / +2.8 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 243 | 76% / 24% | D2 / 2 | +8.4 [-8.5, +28.4] (72) / +3.2 [-16.1, +23.9] (94) | -6.4 / -0.4 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: position in range (52-week, 20-day, bands) + returns, reversal and oscillators (234 picks)

- Moved within 10 days: 55% (on D1 7%); median move day D3.
- Its own indicators (share of its picks): 52-week range 85%, 4/13-week momentum 64%, ATR / volatility 55%, volume 53%, 20-day range 27%, Bollinger bands 21%.
- D's top-5 push for these picks: 34% the stock's own daily inputs (followed through their indicator family), 58% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 8% left out (WorldQuant 7%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| gap up above the previous high | candle | 23 | 40% / 43% | D3 / 4 | +15.9 [-20.0, +50.0] (11) / - [-, -] (0) | +8.0 / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 63 | 7% / 3% | D1 / 4 | +11.1 [-42.9, +85.7] (3) / - [-, -] (0) | +2.5 / +0.0 | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 49 | 23% / 19% | D4 / 3 | +9.4 [-50.0, +100.0] (8) / - [-, -] (0) | +12.5 / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 199 | 29% / 14% | D3 / 3 | +5.4 [-8.1, +20.4] (52) / +15.0 [-100.0, +100.0] (5) | -9.9 / -2.1 | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 199 | 33% / 18% | D2 / 2 | +3.7 [-16.0, +24.8] (85) / - [-, -] (1) | +1.1 / +0.0 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 125 | 44% / 24% | D2 / 2 | -0.6 [-16.3, +16.5] (47) / +28.3 [+0.0, +80.0] (10) | +0.8 / +12.3 | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 150 | 40% / 19% | D2 / 2 | -1.4 [-22.7, +23.8] (70) / - [-, -] (0) | +0.5 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 128 | 20% / 31% | D3 / 3 | -3.7 [-11.0, +5.4] (39) / +25.0 [+0.0, +100.0] (8) | +2.8 / -6.2 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 125 | 55% / 34% | D2 / 2 | -2.5 [-19.6, +15.8] (74) / -4.0 [-50.0, +47.1] (14) | -0.3 / +10.3 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 49 | 5% / 3% | D1 / 6 | -6.2 [-33.3, +0.0] (4) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 199 | 0% / 3% | - | -5.4 [-11.6, -1.0] (4) / -6.8 [-35.4, +0.0] (11) | - / -11.1 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 128 | 16% / 28% | D3 / 4 | -7.2 [-18.2, -1.0] (32) / -11.9 [-100.0, +25.0] (7) | -0.6 / +10.5 | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 150 | 6% / 6% | D2 / 5 | -19.4 [-53.6, +0.0] (9) / - [-, -] (1) | -8.3 / +0.0 | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 39 | 82% / 68% | D2 / 2 | -6.1 [-32.3, +19.4] (42) / -20.0 [-50.0, +33.3] (5) | -1.9 / +0.0 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 23 | 70% / 38% | D1 / 4 | -33.8 [-55.6, +0.0] (17) / - [-, -] (0) | +4.0 / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 39 | 14% / 5% | D4 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 9 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 9 | 0% / 19% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 9 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 37 | 4% / 0% | D2 / 3 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 150 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 234 | 69% / 35% | D2 / 2 | -2.1 [-11.9, +10.2] (153) / +1.9 [-21.5, +31.8] (28) | -3.7 / +1.7 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 234 | 34% / 23% | D2 / 2 | -5.6 [-14.1, +6.3] (88) / +7.1 [-19.8, +38.8] (20) | +2.4 / +1.7 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: returns, reversal and oscillators + volatility and jumpiness (185 picks)

- Moved within 10 days: 50% (on D1 8%); median move day D3.
- Its own indicators (share of its picks): ATR / volatility 86%, Bollinger bands 50%, 52-week range 39%, EMA-20 slope 38%, volume 37%, 4/13-week momentum 31%.
- D's top-5 push for these picks: 50% the stock's own daily inputs (followed through their indicator family), 33% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 17% left out (WorldQuant 15%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| new 13-week closing high | 4/13-week momentum | 58 | 25% / 9% | D3 / 2 | +4.4 [-50.1, +50.0] (7) / - [-, -] (0) | -0.4 / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 19 | 60% / 8% | D3 / 2 | - [-, -] (0) / +0.0 [+0.0, +0.0] (3) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 92 | 23% / 4% | D3 / 1 | +0.0 [+0.0, +0.0] (3) / +13.0 [-50.0, +66.7] (10) | +0.0 / +0.0 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 92 | 5% / 4% | D1 / 2 | +0.0 [+0.0, +0.0] (3) / +13.7 [-14.8, +64.1] (10) | +0.0 / +34.1 | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 72 | 30% / 12% | D1 / 2 | +28.5 [-28.4, +82.1] (13) / +0.0 [+0.0, +0.0] (2) | -0.3 / +0.0 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 28 | 62% / 8% | D1 / 2 | +0.0 [+0.0, +0.0] (8) / +16.7 [-20.0, +42.9] (9) | -12.5 / +2.8 | - | **TOO FEW** |
| gap up above the previous high | candle | 28 | 38% / 4% | D2 / 1 | +0.0 [+0.0, +0.0] (3) / +28.6 [+0.0, +100.0] (7) | -16.7 / +0.0 | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 70 | 89% / 61% | D1 / 2 | -1.7 [-16.7, +9.5] (54) / -3.9 [-19.5, +16.8] (72) | -7.1 / -3.6 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 70 | 11% / 8% | D4 / 1 | - [-, -] (1) / -6.2 [-40.0, +0.0] (8) | - / +0.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 160 | 16% / 14% | D2 / 2 | -7.5 [-20.0, +10.5] (17) / -5.3 [-40.0, +45.5] (21) | +15.2 / +1.2 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 160 | 21% / 25% | D3 / 2 | -9.3 [-21.4, +1.5] (31) / -5.2 [-25.0, +9.9] (28) | +7.3 / -4.7 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 68 | 41% / 27% | D2 / 2 | -11.6 [-45.3, +16.4] (17) / -9.7 [-50.0, +66.7] (5) | -2.7 / +3.7 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 68 | 38% / 26% | D3 / 1 | -16.8 [-30.2, +20.2] (45) / +8.9 [-10.2, +34.2] (6) | +11.6 / +2.4 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 72 | 22% / 9% | D4 / 2 | -20.0 [-66.7, +0.0] (5) / - [-, -] (0) | +2.0 / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 58 | 6% / 2% | D1 / 5 | -50.0 [-100.0, +0.0] (2) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 16 | 11% / 2% | D1 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 16 | 22% / 7% | D2 / 1 | - [-, -] (0) / - [-, -] (0) | - / +0.0 | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 72 | 0% / 2% | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 20 | 40% / 8% | D1 / 1 | - [-, -] (1) / - [-, -] (1) | -4.0 / +0.0 | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 58 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 185 | 73% / 22% | D3 / 1 | -2.0 [-20.2, +11.4] (66) / +9.8 [-4.6, +32.1] (43) | -2.4 / -1.5 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 185 | 27% / 19% | D3 / 1 | -7.2 [-19.1, +12.7] (62) / +10.7 [-15.5, +38.2] (30) | +10.6 / -1.3 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: position in range (52-week, 20-day, bands) + trend (104 picks)

- Moved within 10 days: 56% (on D1 9%); median move day D3.
- Its own indicators (share of its picks): EMA-20 slope 96%, 52-week range 71%, volume 50%, ATR / volatility 42%, 4/13-week momentum 30%, ADX / DI 22%.
- D's top-5 push for these picks: 70% the stock's own daily inputs (followed through their indicator family), 23% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 7% left out (WorldQuant 3%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| OBV above its previous 20-day high | volume | 52 | 63% / 36% | D1 / 1 | - [-, -] (0) / +2.8 [-17.4, +35.2] (31) | +12.5 / -6.5 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 44 | 6% / 26% | D4 / 4 | - [-, -] (0) / -0.9 [-10.0, +0.0] (10) | - / +7.4 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 44 | 19% / 30% | D3 / 5 | - [-, -] (0) / -2.4 [-12.8, +0.0] (22) | - / +4.1 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 52 | 47% / 30% | D2 / 1 | - [-, -] (1) / -3.0 [-19.6, +7.8] (35) | +33.3 / +0.2 | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 100 | 90% / 77% | D1 / 2 | -4.3 [-27.4, +22.2] (37) / +10.0 [-4.6, +21.5] (118) | +2.8 / +0.5 | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 74 | 11% / 10% | D2 / 4 | -8.3 [-22.2, +0.0] (3) / +14.1 [-6.8, +40.0] (17) | - / +12.8 | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 31 | 0% / 16% | - | - [-, -] (0) / -8.3 [-25.0, +0.0] (3) | - / +0.0 | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 74 | 25% / 8% | D1 / 1 | - [-, -] (1) / -13.6 [-33.3, +0.0] (13) | +0.0 / +2.6 | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 17 | 30% / 25% | D2 / 2 | - [-, -] (0) / -33.3 [-100.0, +0.0] (2) | - / +0.0 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 100 | 12% / 9% | D4 / 1 | +58.3 [+0.0, +100.0] (6) / -34.7 [-100.0, +0.0] (6) | -12.5 / -25.0 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 74 | 8% / 7% | D4 / 3 | +41.7 [-50.0, +100.0] (2) / -53.3 [-100.0, +0.0] (5) | +0.0 / -3.6 | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 23 | 14% / 0% | D6 / 1 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / +0.0 | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 20 | 17% / 8% | D1 / 1 | - [-, -] (0) / - [-, -] (1) | - / +18.8 | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 31 | 18% / 0% | D5 / 1 | - [-, -] (1) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 31 | 6% / 0% | D6 / 1 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 4 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 4 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 104 | 43% / 34% | D2 / 2 | +23.0 [-25.0, +50.0] (20) / +3.6 [-11.5, +19.1] (55) | +2.7 / +2.3 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 104 | 67% / 44% | D2 / 1 | +28.2 [-28.6, +75.0] (13) / +0.7 [-16.5, +16.6] (57) | -0.6 / +2.9 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: returns, reversal and oscillators + volume and liquidity (71 picks)

- Moved within 10 days: 49% (on D1 8%); median move day D4.
- Its own indicators (share of its picks): volume 87%, 4/13-week momentum 73%, 52-week range 54%, ATR / volatility 48%, Bollinger bands 30%, ADX / DI 24%.
- D's top-5 push for these picks: 37% the stock's own daily inputs (followed through their indicator family), 52% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 11% left out (WorldQuant 9%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| close comes within 5% of the 52-week high | 52-week range | 38 | 50% / 9% | D2 / 1 | +23.8 [-41.7, +86.2] (7) / - [-, -] (0) | -11.7 / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 52 | 30% / 9% | D6 / 1 | +21.1 [-26.8, +100.0] (9) / - [-, -] (0) | +1.3 / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 62 | 25% / 10% | D2 / 3 | +20.1 [-23.3, +56.9] (14) / - [-, -] (0) | -2.1 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 62 | 21% / 8% | D3 / 3 | +5.5 [-29.7, +50.4] (10) / - [-, -] (0) | +8.0 / - | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 13 | 100% / 80% | D1 / 2 | +0.0 [-100.0, +100.0] (6) / - [-, -] (0) | -7.1 / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 38 | 22% / 15% | D6 / 1 | -6.2 [-54.8, +100.0] (7) / - [-, -] (0) | +0.7 / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 52 | 0% / 10% | - | -8.3 [-50.0, +0.0] (3) / - [-, -] (0) | -8.3 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 34 | 6% / 26% | D3 / 1 | -16.7 [-66.7, +0.0] (6) / - [-, -] (0) | +16.7 / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 34 | 19% / 26% | D2 / 3 | -26.4 [-75.1, +21.4] (7) / - [-, -] (0) | +23.8 / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 13 | 60% / 10% | D1 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 17 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 21 | 11% / 10% | D1 / 1 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 21 | 11% / 3% | D8 / 1 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 38 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 7 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 52 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 6 | 33% / 33% | D1 / 1 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 6 | 0% / 22% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 71 | 21% / 7% | D2 / 2 | +14.2 [-19.2, +56.8] (11) / - [-, -] (0) | +5.7 / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 71 | 72% / 40% | D2 / 2 | +6.6 [-12.3, +26.5] (49) / - [-, -] (1) | +3.4 / +0.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: volatility and jumpiness + volume and liquidity (38 picks)

- Moved within 10 days: 42% (on D1 3%); median move day D5.
- Its own indicators (share of its picks): ATR / volatility 87%, volume 71%, 52-week range 42%, EMA-20 slope 42%, Bollinger bands 42%, RSI-14 37%.
- D's top-5 push for these picks: 60% the stock's own daily inputs (followed through their indicator family), 29% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 11% left out (WorldQuant 7%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| volume above 1.5x its 20-day average | volume | 27 | 44% / 18% | D4 / 2 | +17.7 [-11.1, +100.0] (16) / - [-, -] (0) | +20.8 / - | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 16 | 100% / 98% | D2 / 4 | +4.5 [-100.0, +100.0] (11) / +0.0 [+0.0, +0.0] (2) | -9.4 / +25.0 | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 16 | 0% / 19% | - | +0.0 [+0.0, +0.0] (2) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 16 | 29% / 11% | D1 / 2 | +0.0 [+0.0, +0.0] (2) / - [-, -] (0) | +12.5 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 33 | 33% / 26% | D4 / 2 | -25.0 [-60.0, +0.0] (14) / - [-, -] (1) | +18.5 / +0.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 33 | 17% / 20% | D3 / 4 | -56.7 [-100.0, +0.0] (5) / - [-, -] (0) | +16.7 / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 27 | 44% / 10% | D2 / 2 | -66.7 [-100.0, +0.0] (3) / - [-, -] (0) | +3.7 / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 16 | 0% / 4% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 14 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 14 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 16 | 14% / 0% | D2 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 16 | 43% / 13% | D3 / 1 | - [-, -] (1) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 16 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 5 | - | - | - [-, -] (0) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 2 | - | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 38 | 27% / 15% | D4 / 2 | +17.7 [-11.1, +100.0] (16) / - [-, -] (0) | +20.8 / +0.0 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 38 | 80% / 43% | D3 / 3 | -9.1 [-50.0, +50.0] (11) / -6.0 [-40.0, +75.0] (7) | +1.9 / -5.2 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: position in range (52-week, 20-day, bands) + raw price levels (32 picks)

- Moved within 10 days: 75% (on D1 6%); median move day D4.
- Its own indicators (share of its picks): 52-week range 84%, EMA-20 slope 66%, volume 59%, ATR / volatility 53%, MACD 41%, Bollinger bands 6%.
- D's top-5 push for these picks: 57% the stock's own daily inputs (followed through their indicator family), 20% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 23% left out (WorldQuant 0%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| true range above 1.5x ATR | ATR / volatility | 17 | 55% / 33% | D2 / 2 | - [-, -] (0) / +29.2 [-25.0, +100.0] (6) | - / -9.3 | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 21 | 87% / 72% | D2 / 3 | - [-, -] (1) / +19.8 [-14.3, +50.0] (16) | +25.0 / -1.1 | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 27 | 29% / 19% | D5 / 2 | - [-, -] (0) / +0.0 [-100.0, +100.0] (4) | +0.0 / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 17 | 9% / 47% | D2 / 5 | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 19 | 50% / 20% | D1 / 3 | - [-, -] (0) / -30.0 [-89.4, +0.0] (5) | - / -4.2 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 21 | 0% / 9% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 13 | 12% / 0% | D8 / 1 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 27 | 29% / 30% | D1 / 2 | - [-, -] (1) / - [-, -] (1) | - / -6.0 | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 27 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 19 | 21% / 5% | D4 / 2 | - [-, -] (0) / - [-, -] (0) | - / +0.0 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 32 | 73% / 53% | D2 / 3 | +0.0 [-100.0, +100.0] (5) / +14.4 [-19.0, +66.7] (15) | +14.3 / +6.5 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 32 | 36% / 15% | D4 / 2 | -50.0 [-100.0, +0.0] (2) / -20.0 [-100.0, +0.0] (5) | +11.1 / -2.7 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: position in range (52-week, 20-day, bands) + volume and liquidity (19 picks)

- Moved within 10 days: 26% (on D1 0%); median move day D5.
- Its own indicators (share of its picks): volume 89%, 52-week range 74%, ATR / volatility 58%, EMA-20 slope 32%, 4/13-week momentum 26%, 20-day range 21%.
- D's top-5 push for these picks: 66% the stock's own daily inputs (followed through their indicator family), 28% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 6% left out (WorldQuant 4%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 6 | 100% / 88% | D2 / 3 | +0.0 [+0.0, +0.0] (3) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 14 | 25% / 38% | D5 / 2 | +0.0 [+0.0, +0.0] (3) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 11 | 33% / 46% | D2 / 2 | - [-, -] (1) / -25.0 [-100.0, +0.0] (2) | +33.3 / +66.7 | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 17 | 50% / 56% | D4 / 4 | -28.1 [-100.0, +0.0] (8) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 17 | 50% / 44% | D2 / 6 | -50.0 [-100.0, +0.0] (5) / - [-, -] (1) | -3.3 / +0.0 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 6 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 14 | 25% / 10% | D4 / 1 | - [-, -] (1) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 14 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 4 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 5 | 0% / 17% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 5 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 5 | 100% / 33% | D2 / 5 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 11 | 0% / 21% | - | - [-, -] (1) / - [-, -] (0) | +50.0 / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 19 | 60% / 56% | D3 / 2 | -24.4 [-75.0, +0.0] (9) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 19 | 80% / 37% | D3 / 3 | -35.7 [-87.4, +0.0] (7) / - [-, -] (0) | +0.0 / +0.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: trend + volume and liquidity (16 picks)

- Moved within 10 days: 38% (on D1 6%); median move day D3.
- Its own indicators (share of its picks): EMA-20 slope 94%, volume 94%, ATR / volatility 38%, 4/13-week momentum 38%, 52-week range 38%, ADX / DI 31%.
- D's top-5 push for these picks: 71% the stock's own daily inputs (followed through their indicator family), 22% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 7% left out (WorldQuant 6%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| volume above 1.5x its 20-day average | volume | 15 | 20% / 33% | D3 / 1 | - [-, -] (1) / +0.0 [+0.0, +0.0] (2) | -12.5 / +0.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 6 | - | - | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 15 | 80% / 73% | D2 / 2 | +66.7 [+0.0, +100.0] (3) / -14.3 [-100.0, +100.0] (7) | -8.3 / +0.0 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 15 | 0% / 27% | - | -75.0 [-100.0, +0.0] (2) / - [-, -] (1) | +0.0 / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 15 | 20% / 4% | D2 / 1 | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 6 | 25% / 0% | D1 / 1 | - [-, -] (1) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 6 | 0% / 38% | - | - [-, -] (1) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 6 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 6 | - | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 16 | 80% / 30% | D2 / 1 | +50.0 [+0.0, +100.0] (2) / +33.3 [+0.0, +100.0] (3) | +0.0 / +0.0 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 16 | 20% / 30% | D3 / 1 | - [-, -] (1) / +0.0 [+0.0, +0.0] (2) | -12.5 / +0.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: other + trend (16 picks)

- Moved within 10 days: 62% (on D1 12%); median move day D4.
- Its own indicators (share of its picks): EMA-20 slope 88%, 4/13-week momentum 38%, volume 31%, ATR / volatility 31%, ADX / DI 31%, 52-week range 19%.
- D's top-5 push for these picks: 31% the stock's own daily inputs (followed through their indicator family), 16% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 53% left out (WorldQuant 5%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 14 | 100% / 92% | D1 / 4 | - [-, -] (0) / +7.7 [-59.6, +50.0] (13) | +0.0 / +0.0 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 14 | 12% / 18% | D3 / 1 | - [-, -] (0) / - [-, -] (1) | - / +0.0 | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 5 | 0% / 67% | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 6 | 0% / 50% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 6 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 6 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / +0.0 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 16 | 75% / 85% | D2 / 4 | - [-, -] (0) / +42.9 [+0.0, +100.0] (7) | - / +0.0 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 16 | 50% / 50% | D1 / 5 | - [-, -] (0) / +19.4 [-50.0, +100.0] (9) | - / +0.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: other + returns, reversal and oscillators (14 picks)

- Moved within 10 days: 79% (on D1 14%); median move day D3.
- Its own indicators (share of its picks): 52-week range 86%, 4/13-week momentum 50%, ATR / volatility 50%, EMA-20 slope 14%, ADX / DI 14%, candle 7%.
- D's top-5 push for these picks: 23% the stock's own daily inputs (followed through their indicator family), 20% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 58% left out (WorldQuant 12%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 12 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 12 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 12 | 0% / 31% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 7 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 7 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 7 | - | - | - [-, -] (0) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 7 | - | - | - [-, -] (0) / - [-, -] (0) | - / +0.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 7 | - | - | - [-, -] (0) / - [-, -] (0) | - / +0.0 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 14 | 67% / 56% | D1 / 3 | - [-, -] (1) / -100.0 [-100.0, -100.0] (2) | +0.0 / +0.0 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 14 | 11% / 0% | D1 / 1 | - [-, -] (0) / - [-, -] (0) | +0.0 / +0.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: raw price levels + volatility and jumpiness (13 picks)

- Moved within 10 days: 46% (on D1 15%); median move day D6.
- Its own indicators (share of its picks): EMA-20 slope 77%, ATR / volatility 69%, volume 62%, MACD 46%, 52-week range 38%, candle 23%.
- D's top-5 push for these picks: 68% the stock's own daily inputs (followed through their indicator family), 10% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 22% left out (WorldQuant 0%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 10 | 100% / 61% | D2 / 5 | - [-, -] (0) / +0.0 [+0.0, +0.0] (9) | - / +0.0 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 9 | - | - | - [-, -] (0) / +0.0 [+0.0, +0.0] (3) | - / +25.0 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 10 | 0% / 11% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 8 | 100% / 67% | D2 / 5 | - [-, -] (0) / - [-, -] (0) | - / +20.0 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 8 | 67% / 33% | D2 / 5 | - [-, -] (0) / - [-, -] (0) | - / +14.3 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 9 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 3 | - | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 13 | 100% / 54% | D2 / 5 | - [-, -] (0) / +0.0 [+0.0, +0.0] (5) | - / +16.7 | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 13 | 100% / 43% | D2 / 5 | - [-, -] (0) / +0.0 [+0.0, +0.0] (3) | - / +20.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: raw price levels + trend (13 picks)

- Moved within 10 days: 62% (on D1 0%); median move day D3.
- Its own indicators (share of its picks): EMA-20 slope 100%, volume 77%, ATR / volatility 62%, MACD 54%, 20-day range 23%, 52-week range 23%.
- D's top-5 push for these picks: 84% the stock's own daily inputs (followed through their indicator family), 5% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 11% left out (WorldQuant 0%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 13 | 100% / 72% | D1 / 2 | - [-, -] (0) / +8.3 [-18.2, +66.7] (12) | - / -10.7 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 13 | 12% / 10% | D3 / 6 | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 7 | 40% / 0% | D7 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 10 | 100% / 40% | D4 / 1 | - [-, -] (0) / - [-, -] (1) | - / +100.0 | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 10 | 100% / 40% | D4 / 1 | - [-, -] (0) / - [-, -] (1) | - / +50.0 | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 8 | 60% / 7% | D1 / 1 | - [-, -] (0) / - [-, -] (1) | - / +0.0 | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 8 | 20% / 0% | D1 / 8 | - [-, -] (0) / - [-, -] (1) | - / +0.0 | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 13 | 88% / 32% | D1 / 1 | - [-, -] (0) / -6.7 [-100.0, +100.0] (3) | - / +25.0 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 13 | 88% / 5% | D2 / 3 | - [-, -] (0) / - [-, -] (1) | - / -5.6 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## other (12 picks)

- Moved within 10 days: 83% (on D1 17%); median move day D3.
- Its own indicators (share of its picks): ATR / volatility 58%, EMA-20 slope 50%, 52-week range 42%, 4/13-week momentum 33%, volume 25%, 20-day range 8%.
- D's top-5 push for these picks: 29% the stock's own daily inputs (followed through their indicator family), 10% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 61% left out (WorldQuant 8%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 6 | - | - | - [-, -] (0) / - [-, -] (1) | - / +0.0 | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 4 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 4 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 4 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 7 | 33% / 33% | D6 / 1 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 7 | 33% / 67% | D5 / 2 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 12 | 25% / 19% | D4 / 4 | +0.0 [+0.0, +0.0] (2) / - [-, -] (0) | +0.0 / +0.0 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 12 | 88% / 19% | D2 / 2 | - [-, -] (0) / - [-, -] (0) | +0.0 / +0.0 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## volume and liquidity (10 picks)

- Moved within 10 days: 20% (on D1 0%); median move day D4.
- Its own indicators (share of its picks): volume 100%, 20-day range 60%, EMA-20 slope 60%, 52-week range 50%, MACD 30%, ATR / volatility 30%.
- D's top-5 push for these picks: 80% the stock's own daily inputs (followed through their indicator family), 19% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 1% left out (WorldQuant 1%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 6 | 100% / 62% | D2 / 2 | +25.0 [+0.0, +100.0] (4) / - [-, -] (0) | +33.3 / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 10 | 50% / 12% | D1 / 1 | -75.0 [-100.0, +0.0] (2) / - [-, -] (0) | +0.0 / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 6 | 50% / 0% | D4 / 2 | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| MACD crosses above its signal | MACD | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above the middle band | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| band width widens 10%+ | Bollinger bands | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 5 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 6 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 10 | 50% / 6% | D1 / 1 | - [-, -] (1) / - [-, -] (0) | -11.1 / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 10 | 50% / 25% | D3 / 3 | +33.3 [+0.0, +80.0] (6) / - [-, -] (0) | -4.2 / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 10 | 50% / 6% | D1 / 1 | - [-, -] (1) / - [-, -] (0) | -11.1 / - | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: other + position in range (52-week, 20-day, bands) (10 picks)

- Moved within 10 days: 30% (on D1 0%); median move day D5.
- Its own indicators (share of its picks): 52-week range 70%, 4/13-week momentum 70%, EMA-20 slope 30%, 20-day range 30%, ATR / volatility 20%, volume 20%.
- D's top-5 push for these picks: 38% the stock's own daily inputs (followed through their indicator family), 20% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 42% left out (WorldQuant 1%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| new 52-week closing low | 52-week range | 7 | 0% / 42% | - | - [-, -] (0) / +0.0 [+0.0, +0.0] (2) | - / - | - | **TOO FEW** |
| EMA-20 slope rises | EMA-20 slope | 3 | - | - | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 7 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 7 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous 20-day high | 20-day range | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 7 | 50% / 40% | D5 / 1 | - [-, -] (1) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 7 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 7 | 0% / 0% | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 10 | 67% / 48% | D3 / 2 | +0.0 [+0.0, +0.0] (3) / - [-, -] (1) | +33.3 / +0.0 | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 10 | 67% / 24% | D2 / 4 | - [-, -] (0) / - [-, -] (1) | - / -33.3 | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: other + volatility and jumpiness (3 picks)

- Moved within 10 days: 67% (on D1 0%); median move day D7.
- Its own indicators (share of its picks): ATR / volatility 100%, 4/13-week momentum 33%.
- D's top-5 push for these picks: 11% the stock's own daily inputs (followed through their indicator family), 26% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 63% left out (WorldQuant 12%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 3 | - | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 3 | - | - | - [-, -] (0) / - [-, -] (1) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 3 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## raw price levels (2 picks)

- Moved within 10 days: 0% (on D1 0%); median move day D0.
- Its own indicators (share of its picks): ATR / volatility 100%, volume 100%, 52-week range 50%, ADX / DI 50%, EMA-20 slope 50%.
- D's top-5 push for these picks: 73% the stock's own daily inputs (followed through their indicator family), 5% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 22% left out (WorldQuant 0%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing high | 52-week range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close comes within 5% of the 52-week high | 52-week range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 52-week closing low | 52-week range | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 2 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: other + volume and liquidity (1 picks)

- Moved within 10 days: 0% (on D1 0%); median move day D0.
- Its own indicators (share of its picks): 4/13-week momentum 100%, volume 100%, ATR / volatility 100%.
- D's top-5 push for these picks: 26% the stock's own daily inputs (followed through their indicator family), 39% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 35% left out (WorldQuant 13%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| 4-week return crosses above 0 (ROC 20) | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 13-week return crosses above 0 (ROC 65) | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| new 13-week closing high | 4/13-week momentum | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average | volume | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| OBV above its previous 20-day high | volume | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| true range above 1.5x ATR | ATR / volatility | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| 5-day ATR crosses above the 20-day | ATR / volatility | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## MIXED: raw price levels + returns, reversal and oscillators (1 picks)

- Moved within 10 days: 0% (on D1 0%); median move day D0.
- Its own indicators (share of its picks): EMA-20 slope 100%, RSI-14 100%, ADX / DI 100%, candle 100%.
- D's top-5 push for these picks: 51% the stock's own daily inputs (followed through their indicator family), 10% cross-sectional or weekly inputs (followed through the stock's own daily indicator), 38% left out (WorldQuant 0%).

| trigger | indicator | picks | fired before the move: moved / not moved | first fires / closes before the move | move within 3 closes after it vs could have but did not, same close and distance: 2020-23 / 2024-26 | the same for a 1-ATR fall | many-tests q | verdict |
|---|---|---|---|---|---|---|---|---|
| EMA-20 slope rises | EMA-20 slope | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close crosses above EMA-20 | EMA-20 slope | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 30 | RSI-14 | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| RSI-14 crosses above 50 | RSI-14 | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| +DI crosses above -DI | ADX / DI | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| bullish close (top quarter of the range) | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| gap up above the previous high | candle | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| close above the previous day's high *(yardstick)* | yardstick | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |
| volume above 1.5x its 20-day average *(yardstick)* | yardstick | 1 | - | - | - [-, -] (0) / - [-, -] (0) | - / - | - | **TOO FEW** |

Verdict numbers: points of chance (the move within 3 closes after the trigger fired, minus after closes where it could have fired but did not, at the same close after the pick and the same distance from the target); in brackets the 95% interval, then the matched firings. A trigger needs 100 matched firings in each period.

## The latest picks

- 2026-09-09 **DAVANGERE** (trend): own indicators EMA-20 slope; RSI-14; moved on D2; its own triggers after the pick: EMA-20 slope rises D1; close crosses above EMA-20 D8; RSI-14 crosses above 30 D2.
- 2026-09-09 **OMAXE** (MIXED: returns, reversal and oscillators + trend): own indicators ATR / volatility; 4/13-week momentum; Bollinger bands; did not move by D10; its own triggers after the pick: close crosses above the middle band D5.
- 2026-09-09 **PCJEWELLER** (position in range (52-week, 20-day, bands)): own indicators volume; EMA-20 slope; 52-week range; did not move by D10; its own triggers after the pick: EMA-20 slope rises D6; close comes within 5% of the 52-week high D9.
- 2026-09-10 **PCJEWELLER** (MIXED: position in range (52-week, 20-day, bands) + volatility and jumpiness): own indicators 52-week range; ATR / volatility; EMA-20 slope; Bollinger bands; volume; did not move by D10; its own triggers after the pick: EMA-20 slope rises D5; close comes within 5% of the 52-week high D8.
- 2026-09-10 **SYNCOMF** (returns, reversal and oscillators): own indicators 4/13-week momentum; ATR / volatility; Bollinger bands; RSI-14; did not move by D10; its own triggers after the pick: close crosses above the middle band D5; true range above 1.5x ATR D3; 5-day ATR crosses above the 20-day D2.
- 2026-09-10 **AYMSYNTEX** (returns, reversal and oscillators): own indicators ATR / volatility; ADX / DI; volume; did not move by D10; its own triggers after the pick: +DI crosses above -DI D3; volume above 1.5x its 20-day average D3; OBV above its previous 20-day high D4; true range above 1.5x ATR D3.
- 2026-09-11 **KPEL** (MIXED: returns, reversal and oscillators + trend): own indicators EMA-20 slope; 20-day range; moved on D5; its own triggers after the pick: EMA-20 slope rises D2.
- 2026-09-11 **PCJEWELLER** (MIXED: position in range (52-week, 20-day, bands) + volatility and jumpiness): own indicators ATR / volatility; 52-week range; Bollinger bands; RSI-14; volume; did not move by D10; its own triggers after the pick: close comes within 5% of the 52-week high D7.
- 2026-09-11 **IOLCP** (MIXED: returns, reversal and oscillators + volatility and jumpiness): own indicators 4/13-week momentum; ATR / volatility; 52-week range; moved on D7; its own triggers after the pick: close comes within 5% of the 52-week high D4; true range above 1.5x ATR D1.
- 2026-09-15 **SSWL** (returns, reversal and oscillators): own indicators candle; 4/13-week momentum; Bollinger bands; ATR / volatility; moved on D3; its own triggers after the pick: new 13-week closing high D7; bullish close (top quarter of the range) D1; gap up above the previous high D10.
- 2026-09-15 **MOREPENLAB** (returns, reversal and oscillators): own indicators candle; Bollinger bands; 4/13-week momentum; ATR / volatility; moved on D1; its own triggers after the pick: new 13-week closing high D2; true range above 1.5x ATR D1; bullish close (top quarter of the range) D1; gap up above the previous high D9.
- 2026-09-15 **WELENT** (returns, reversal and oscillators): own indicators Bollinger bands; 4/13-week momentum; ATR / volatility; RSI-14; moved on D3; its own triggers after the pick: new 13-week closing high D3; true range above 1.5x ATR D3; 5-day ATR crosses above the 20-day D2.

Per pick: picks.csv (the move; why a pick was left out), paths.csv (its indicators at every close D0-D10), firings.csv (each of its triggers, when it first fired, before the move or not); translation.csv (every input, its readable indicator and how it is followed); coverage.csv (the push shares above). Research only: nothing changes in the paper test.

