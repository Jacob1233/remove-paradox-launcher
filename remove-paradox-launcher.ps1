# script to delete paradox launcher from AppData 

$paradox = Get-Process -Name "Paradox Launcher" -ErrorAction SilentlyContinue
if ($paradox) {
  Stop-Process -Name "Paradox Launcher"
}
Remove-Variable paradox

$path1 = "~\AppData\Roaming\Paradox Interactive"
$path2 = "~\AppData\Roaming\paradox-launcher-v2"
$path3 = "~\AppData\Local\Paradox Interactive"
$path4 = "~\AppData\Local\Programs\Paradox Interactive"

if (Test-Path $path1) {
    del -r $path1
}

if (Test-Path $path2) {
    del -r $path2
}

if (Test-Path $path3) {
    del -r $path3
}

if (Test-Path $path4) {
    del -r $path4
}

Write-Host "Paradox Launcher is removed"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
