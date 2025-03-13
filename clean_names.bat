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

:: Initialize a counter to track line numbers
set "line_number=0"

:: Get the total number of lines in the file
for /f %%a in ('type "%input_file%" ^| find /c /v ""') do set "total_lines=%%a"

:: Process each line in the input file
for /f "tokens=*" %%a in (%input_file%) do (
    set /a "line_number+=1"
    
    :: Skip the first and last lines
    if !line_number! neq 1 if !line_number! neq !total_lines! (
        set "line=%%a"
        
        :: Remove unwanted characters
        set "line=!line:,=!"
        set "line=!line:'=!"
        
        :: Write the cleaned line to the output file
        echo !line! >> "%output_file%"
    )
)

echo File cleaned successfully. Output saved to "%output_file%".