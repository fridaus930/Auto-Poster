# ⚡ AutoPoster

**Satu post · semua platform.** Upload gambar/video sekali, isi title + description sekali,
dan hantar ke **Facebook Page, Instagram, Threads, YouTube, TikTok, X, LinkedIn dan Telegram**
serentak.

---

## 🚀 Mula pantas (Windows)

1. Muat turun **`AutoPoster-win-x64.zip`** dari tab **[Releases](../../releases)**.
2. Extract ke folder tetap, contoh `C:\AutoPoster`.
3. Double-click **`AutoPoster.exe`** — browser akan terbuka automatik di `http://localhost:3000`.
4. Klik ikon **⚙️** dan isi API key platform yang anda mahu guna.
5. Klik **sambung** pada setiap platform untuk login (Telegram guna token bot sahaja).
6. Lepas media, isi title/description, pilih platform → **Post sekarang**.

> **Tiada Node.js diperlukan** untuk versi `.exe` — semuanya sudah dibungkus dalam satu binary.

### Auto-start bila log masuk Windows

Jalankan **`install-autostart.cmd`** sekali. AutoPoster akan mula tersembunyi setiap kali anda
log masuk Windows dan browser akan terbuka sendiri.

Batalkan dengan **`uninstall-autostart.cmd`**.

---

## 🌐 Versi online (ngrok)

**https://autoposter-firdhaus.ngrok-free.app**

- Hanya hidup apabila PC host dihidupkan **dan** tunnel ngrok berjalan.
- Halaman amaran ngrok mungkin muncul sekali — klik **Visit Site**.
- ⚠️ **Kongsi hanya dengan orang yang anda percaya.** Link ini memberi akses penuh kepada
  tetapan, akaun yang disambung dan sejarah post.
- Untuk kegunaan ramai, setiap pengguna patut jalankan AutoPoster sendiri — token & media
  kekal dalam PC masing-masing.

---

## 💻 Host sendiri (Node.js 20+)

Jika anda tidak mahu guna `.exe`, fail `server.cjs` sudah dibundel (semua dependency included):

```bash
npm start          # atau:  node server.cjs
```

Kemudian buka `http://localhost:3000`.

Untuk akses awam, jalankan tunnel sendiri:

```bash
ngrok http 3000
```

…kemudian masukkan URL `https://…` ke **⚙️ Tetapan → Public Media URL** (wajib untuk
Instagram, Threads dan foto TikTok).

---

## ⚙️ Konfigurasi

Semua API key diisi melalui **⚙️ Tetapan** di dalam app — tiada edit fail:

| Platform | Yang diperlukan |
|---|---|
| 📘 Facebook Page | Meta App ID + Secret, redirect URI |
| 📸 Instagram | Guna kunci Meta yang sama + akaun Business linked ke Page |
| 🧵 Threads | Threads App ID + Secret |
| ▶️ YouTube | Google OAuth Client ID + Secret |
| 🎵 TikTok | Client Key + Secret (app audit untuk post public) |
| 𝕏 X | OAuth 2.0 Client ID + Secret |
| 💼 LinkedIn | Client ID + Secret |
| ✈️ Telegram | Bot token + Chat ID |

Setiap kunci hanya disimpan **secara lokal** dalam `data/settings.json`.

---

## 📁 Data anda

| Fail | Kandungan |
|---|---|
| `data/settings.json` | API key + URL awam |
| `data/accounts.json` | Token OAuth platform |
| `uploads/` | Gambar/video yang di-upload |

Tiada data dihantar ke pelayan lain melainkan API rasmi platform sosial media.

**Sandaran:** copy folder `data/` dan `uploads/` untuk pindah ke PC lain.

---

## 📌 Had & nota

- **Upload max 100 MB** (boleh ubah di Tetapan, max 2048 MB).
- **Instagram / Threads** perlukan URL awam https (`Public Media URL`).
- **TikTok** memerlukan app review untuk post public; sebelum itu post hanya private.
- Video paling serasi: **MP4 (H.264 + AAC)**.
- Satu platform gagal tidak menghalang platform lain.

---

## 🔐 Lesen

**Proprietary — All Rights Reserved.** Lihat [LICENSE.txt](LICENSE.txt).

Dilarang mengubah, mengedar semula, menjual atau melakukan *reverse engineering* tanpa
kebenaran bertulis. Untuk lesen komersial / penjenamaan semula, hubungi FridhausMusic.

---

## 👤 Kredit

**© 2026 FridhausMusic. Hak cipta terpelihara.**

| Pautan | URL |
|---|---|
| 🎵 FridhausMusic (Play Store) | https://play.google.com/store/apps/dev?id=4925125647236016409 |
| 🌐 Triavatech | https://triavatech.store/ |
| ✦ Triavatech AI Studio | https://triavatechstudio.ngrok.app/ |

---

<details>
<summary>🇬🇧 English quick start</summary>

1. Download `AutoPoster-win-x64.zip` from **Releases** and extract it.
2. Run **`AutoPoster.exe`** — the browser opens at `http://localhost:3000`.
3. Open **⚙️ Settings** and paste your API keys.
4. Connect each platform, upload media, fill in the title/description → **Post now**.

Hosted demo: https://autoposter-firdhaus.ngrok-free.app (online only while the host PC is running).

Self-host with Node.js 20+: `npm start` (or `node server.cjs`), then `ngrok http 3000`.

Proprietary license — modification and redistribution are prohibited.

</details>
