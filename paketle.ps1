# NOVDOC proje paketi (GitHub'a yuklemek icin)
# PowerShell: sag tik -> Run with PowerShell

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$zip = Join-Path $root "novdoc-github-upload.zip"

if (Test-Path $zip) { Remove-Item $zip -Force }

$exclude = @('\.dart_tool', '\\build\\', '\.flutter', 'flutter_sdk\.zip')
$files = Get-ChildItem -Path $root -Recurse -File | Where-Object {
  $p = $_.FullName
  -not ($p -match '\\\.dart_tool\\') -and -not ($p -match '\\build\\') -and -not ($p -match '\\\.flutter\\')
}

Compress-Archive -Path (Join-Path $root '*') -DestinationPath $zip -Force
Write-Host "Hazir: $zip"
Write-Host "Zip icindeki DOSYALARI (klasoru degil) GitHub upload ekranina surukleyin."
Write-Host "Detay: BASLANGIC.md"
