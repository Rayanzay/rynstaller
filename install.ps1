$link = "https://github.com/Rayanzay/rynstaller/releases/latest/download/rynstallerCli.exe"

$outfile = "$env:TEMP\rynstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
