@echo off
setlocal enabledelayedexpansion

mkdir packed_modules

:: Input files
set "input_file=npm_list4.txt"

for /f "tokens=*" %%a in (%input_file%) do (
    npm pack --silent %%a --pack-destination ./packed_modules
) 


echo NPM packing for all listed modules completed.