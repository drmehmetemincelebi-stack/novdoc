# NOVDOC — Sıfırdan çalışan uygulama (5 adım)

Flutter, FlutterFlow veya Android Studio **kurmanıza gerek yok**. Kod hazır; siz sadece GitHub’a yükleyeceksiniz. Derleme **bulutta** otomatik yapılır.

---

## Adım 1 — GitHub hesabı

https://github.com/signup adresinden ücretsiz hesap açın.

---

## Adım 2 — Yeni depo (repository)

1. GitHub’da sağ üst **+** → **New repository**
2. Repository name: `novdoc`
3. **Public** seçin (Pages ve Actions ücretsiz çalışsın diye)
4. **Create repository** (README eklemeyin — zaten projede var)

---

## Adım 3 — Projeyi yükleyin (2 yol)

### Yol A — GitHub Desktop (en kolay, tek program)

1. https://desktop.github.com/download/ indirin ve kurun (Flutter değil, sadece kod yüklemek için).
2. **File → Add local repository** → klasör:  
   `C:\Users\mehme\Projects\novdoc`
3. “Create repository” derse onaylayın.
4. Summary’ye örneğin `NOVDOC ilk sürüm` yazın → **Commit to main**
5. **Publish repository** → GitHub’daki `novdoc` reposunu seçin → Publish

### Yol B — Zip ile (Desktop istemezseniz)

1. `C:\Users\mehme\Projects\novdoc` klasörünü zip’leyin.
2. GitHub repo sayfasında **uploading an existing file** → zip’i açıp **içindeki tüm dosyaları** sürükleyin (klasörün kendisini değil).
3. **Commit changes**

---

## Adım 4 — Bulutta derleme

1. GitHub’da repo → **Actions** sekmesi
2. **Flutter CI** workflow’unun yeşil tik almasını bekleyin (~5–10 dk)
3. Bitince:
   - **Summary** → en altta **Artifacts**:
     - `novdoc-android-apk` → telefona yüklenecek **APK**
     - `novdoc-web-release` → tarayıcı sürümü (zip)

İsterseniz **Actions → Flutter CI → Run workflow** ile yeniden de çalıştırabilirsiniz.

---

## Adım 5 — Uygulamayı deneyin

### Telefon (Android)

1. APK’yı indirin.
2. Telefonda “Bilinmeyen kaynaklardan yükleme”ye izin verin.
3. APK’yı açıp kurun.
4. Uygulama: Açılış → **Giriş Yap** → Doktor veya Hastane → demo ana ekran.

### Tarayıcı (GitHub Pages)

1. Repo → **Settings → Pages**
2. **Build and deployment** → Source: **GitHub Actions** (zaten workflow ayarlı)
3. Deploy bitince adres:  
   `https://KULLANICI_ADINIZ.github.io/novdoc/`  
   (Actions’taki **deploy-web** job’ından link de çıkar)

---

## Sonraki geliştirme (Cursor + AI)

- Kod klasörü: `C:\Users\mehme\Projects\novdoc`
- Değişiklik yaptıkça GitHub Desktop ile **Commit + Push**
- Her push’ta Actions yeni APK ve web üretir
- Gerçek veritabanı: `docs/BACKEND.md` — Supabase adımları

---

## Sık sorulan

**Flutter kurmalı mıyım?** Hayır, günlük kullanım için gerekmez.  
**FlutterFlow?** Hayır, proje saf Flutter kodu.  
**Para?** GitHub public repo + Actions kotası hobi projesi için genelde yeterli.

Sorun olursa Actions log’undaki kırmızı satırı kopyalayıp Cursor chat’e yapıştırın.
