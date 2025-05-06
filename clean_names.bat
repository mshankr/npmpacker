@echo off
setlocal enabledelayedexpansion

:: Input and output files
set "input_file=npm_list3.txt"
set "output_file=npm_list4.txt"

:: Check if the input file exists
if not exist "%input_file%" (
    echo Input file "%input_file%" not found.
    exit /b 1
)

:: Clear the output file if it exists
if exist "%output_file%" del "%output_file%"

:: Process each line in the input file
for /f "tokens=2" %%a in ('findstr /b "loading: " "%input_file%"') do (
        
    :: Write the cleaned line to the output file
    echo %%a >> "%output_file%"
    
)

echo File cleaned successfully. Output saved to "%output_file%".
endlocal
