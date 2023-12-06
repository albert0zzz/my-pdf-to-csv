@echo off

REM Changing dir to misc
cd "%~dp0misc"

REM Сalling "pdf_to_txt.bat" script 
call pdf_to_txt.bat 

REM Сalling "txt_to_csv.py" script 
python %~dp0misc\txt_to_csv.py

echo Convertion from .pdf to .csv complete.
pause
