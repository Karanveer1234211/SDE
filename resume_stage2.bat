@echo off
rem resume_stage2.bat - branchlab BR1 Stage 2 from run 20 of 44 (written by Claude, 14 Nov 2026): the first 19
rem (D P_S1 .. B_RCL, TLB_20261114_001 .. 019) finished; D K_SLOT stopped on an unreadable daily-bar file.
rem Step 1 refuses to start while any daily-bar file in the cache is unreadable; then the 25 runs left, then Holm.
call "C:\Users\karanvsi\PyCharmMiscProject\tradelab\env_tradelab.bat"
if errorlevel 1 goto :fail
echo checking every daily-bar file in the cache ...
python -c "exec('import os, sys, glob, time\nimport pyarrow.parquet as pq\nr = os.environ[\'CACHE_DAILY_ROOT\']\nfs = glob.glob(os.path.join(r, \'*_daily.parquet\'))\nbad = []\nfor f in fs:\n    try:\n        pq.ParquetFile(f)\n    except Exception as e:\n        bad.append((os.path.basename(f), os.path.getsize(f), time.ctime(os.path.getmtime(f))))\nnew = sorted(fs, key=os.path.getmtime)[-3:]\nprint(len(fs), \'daily files;\', len(bad), \'unreadable:\', bad)\nprint(\'newest:\', [(os.path.basename(f), time.ctime(os.path.getmtime(f))) for f in new])\nsys.exit(1 if bad or not fs else 0)')"
if errorlevel 1 goto :badfile
set "BRANCHLAB_OUT=C:\QuantData\branchlab"
cd /d "C:\Users\karanvsi\PyCharmMiscProject\tradelab"
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#K_SLOT --compare strategies\tree.py --engines D --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 K_SLOT D"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#K_LATE --compare strategies\tree.py --engines D --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 K_LATE D"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#K_BOTH --compare strategies\tree.py --engines D --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 K_BOTH D"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#X_D2 --compare strategies\tree.py --engines D --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 X_D2 D"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_S1 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_S1 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_S2 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_S2 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_S3 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_S3 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_C1 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_C1 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_C2 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_C2 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_C3 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_C3 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_ALL --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_ALL ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_ALL1 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_ALL1 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#P_ALL2 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 P_ALL2 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_S1 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_S1 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_S2 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_S2 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_S3 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_S3 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_C1 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_C1 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_C2 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_C2 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_C3 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_C3 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#N_ALL --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 N_ALL ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#B_BRK --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 B_BRK ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#B_RET --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 B_RET ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#B_RCL --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 B_RCL ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#X_D2 --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 X_D2 ENS"
if errorlevel 1 goto :fail
python tl_backtest.py --root %CACHE_DAILY_ROOT% --pm-run PM_20261017_001 --strategy strategies\branchlab.py#E_OPEN --compare strategies\tree.py --engines ENS --branchlab "C:\QuantData\branchlab\runs\BR_20261114_001" --declare "branchlab BR1 E_OPEN ENS"
if errorlevel 1 goto :fail
cd /d "C:\Users\karanvsi\PyCharmMiscProject\branchlab"
python branchlab.py holm --scan "%TRADELAB_OUT%\backtest"
echo RESULT: Stage 2 done
pause
goto :eof
:badfile
echo RESULT: NOT STARTED - a daily-bar file above is unreadable (send Claude these lines)
pause
exit /b 1
:fail
echo RESULT: FAILED - send Claude the lines above
pause
exit /b 1
