# NOVDOC — Flutter (kod tabanlı)

**Sıfırdan başlıyorsanız → [BASLANGIC.md](BASLANGIC.md)** (5 adım, Flutter kurmadan APK + web)

Doktor–hastane kariyer platformu. FireVibe HTML tasarımlarından **saf Flutter kodu**; FlutterFlow yok.

## Bilgisayarınıza ne kurmanız gerekiyor?

| Seçenek | Ne kurulur? | Ne işe yarar? |
|--------|-------------|----------------|
| **A — Önerilen (Flutter yok)** | Sadece **Git + GitHub hesabı** | Kod push edilir; **GitHub Actions** projeyi bulutta derler, **Web + APK** artefakt üretir |
| **B — Yerel test** | [Flutter SDK](https://docs.flutter.dev/get-started/install) | `flutter run` ile emülatör/telefonda anlık test |

FlutterFlow, Android Studio zorunluluğu veya ek AI tasarım aracı **gerekmez**.

## A) Bulutta derleme (Flutter kurmadan)

1. Repoyu GitHub’a push edin (`main` branch).
2. **Actions** sekmesinde **Flutter CI** workflow’unu açın.
3. Başarılı build sonrası **Artifacts** indirin:
   - `novdoc-web-release` → tarayıcıda statik site
   - `novdoc-android-apk` → Android telefona yüklenebilir APK

Web build’i yerel sunucu ile denemek (Flutter kurulu bir makinede):

```bash
cd build/web && python -m http.server 8080
```

## B) Yerel geliştirme

```powershell
cd C:\Users\mehme\Projects\novdoc
flutter create . --project-name novdoc
flutter pub get
flutter run
```

## Mimari (verimlilik)

- **StatefulShellRoute + IndexedStack** — alt sekmeler arasında state korunur, gereksiz yeniden build azalır
- **JobsRepository** — mock veri + bellek önbelleği; ileride Supabase/REST ile `JobsDataSource` değiştirilir
- **NovdocNetworkImage** — `memCacheWidth/Height` ile liste performansı
- **RepaintBoundary** — ilan kartlarında çizim maliyeti düşürülür

## Cursor / AI ile devam

Yeni özellik veya ekran için chat’te isteyin; kod `lib/features/` altında kalır. Backend bağlarken:

1. `lib/shared/repositories/jobs_repository.dart` içinde yeni `JobsDataSource` implementasyonu
2. Ortam değişkenleri (`.env` — commit etmeyin)

## Sürüm

2.4.1 — UI-first, demo oturum (gerçek auth/API sonraki adım)
