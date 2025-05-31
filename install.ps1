$link = "https://github.com/Rayanzay/rynstaller/releases/latest/download/RynstallerCli.exe"

$outfile = "$env:TEMP\RynstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
