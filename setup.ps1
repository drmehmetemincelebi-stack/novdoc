# Yerel Flutter kurulumu (isteğe bağlı)
# Bulut derleme için README.md — GitHub Actions yolunu kullanın.

if (-not (Get-Command flutter -ErrorAction SilentlyContinue)) {
  Write-Host "Flutter PATH'te yok. GitHub Actions ile build alabilirsiniz (README A yolu)."
  exit 0
}

flutter create . --project-name novdoc
flutter pub get
flutter analyze
Write-Host "Hazir: flutter run"
