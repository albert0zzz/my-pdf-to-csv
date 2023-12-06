@echo off
setlocal enabledelayedexpansion

REM Folder with .pdf files
set sourceFolder=..\pdf_files

REM Folder with .txt files
set destinationFolder=..\txt_files

REM Loop through all the .pdf files in the source folder
for %%F in ("%sourceFolder%\*.pdf") do (
    REM Get the base file name without extension
    set "fileName=%%~nF"
    
    REM Use pdftotext tool to extract text from the .pdf and save it to a .txt file
    "..\xpdf_tools\pdftotext.exe" -enc UTF-8 "%%F" "!destinationFolder!\!fileName!.txt"
)
