Get-Content "sample_commands_to_prepare.txt" | ForEach-Object {
    Write-Host "Executing: $_" -ForegroundColor Yellow
    cmd /c $_
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Command failed with exit code: $LASTEXITCODE" -ForegroundColor Red
        break
    }
}