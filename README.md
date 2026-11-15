# UTS Pemrograman Mobile (Flutter)

Repository ini berisi hasil pengerjaan Ujian Tengah Semester (UTS) mata kuliah **Pemrograman Mobile (Flutter)** (Dosen Pengampu: I Ketut Gunawan, S.Kom., MTI).

---

## Identitas Mahasiswa

| Keterangan | Data |
|---|---|
| **Nama Lengkap** | Muhamad Anggara Nurzati Arief Wijak Hidayah |
| **NIM** | 1124160219 |
| **Program Studi** | Teknik Informatika |
| **Kelas** | TI 24 P SE 1 |
| **Email** | anggaratzy001@gmail.com |
| **GitHub** | [github.com/MuhamadAnggara](https://github.com/MuhamadAnggara) |

---

## Link Penting

- **Video Presentasi YouTube (5–10 menit):** [Tonton Video Presentasi di YouTube](https://youtu.be/gxRSR37TLjE)
  - Judul Video: `UTS PML – Aplikasi Profil – Muhamad Anggara Nurzati Arief Wijak Hidayah – 1124160219`
- **Download APK Release (v1.0.0):** [app-release.apk (v1.0.0)](https://github.com/MuhamadAnggara/uts-pml-1124160219/releases/tag/v1.0.0)

---

## Struktur Repository

```text
uts-pml-1124160219/
├── README.md                              # Dokumentasi utama repositori UTS
│
├── screenshots/                           # Dokumentasi tangkapan layar aplikasi Android
│   ├── about.png                          # Halaman Tentang Saya (ListView keahlian & pendidikan)
│   ├── drawer_dark.png                    # Menu Drawer navigasi samping & switch mode gelap
│   ├── edit_profile.png                   # Halaman Edit Profil (Form validasi)
│   ├── login.png                          # Halaman Login (Autentikasi akun)
│   └── profile.png                        # Halaman Utama Profil Mahasiswa
│
├── soal1_live_coding/                     # Proyek Flutter Soal 1 (Live Coding)
│   ├── lib/
│   │   └── main.dart                      # Implementasi StatelessWidget & UI profil dasar
│   └── pubspec.yaml                       # Konfigurasi dependensi Soal 1
│
└── soal2_profile_app/                     # Proyek Flutter Soal 2 (Aplikasi Android Profil Mahasiswa)
    ├── assets/
    │   └── images/
    │       └── profile.png                # Foto profil mahasiswa (CircleAvatar)
    ├── lib/
    │   ├── main.dart                      # Root widget MaterialApp, tema terang/gelap, named routes
    │   ├── models/
    │   │   └── profile.dart               # Model data Profil Mahasiswa
    │   ├── screens/
    │   │   ├── login_page.dart            # Halaman Login (Form, validasi email/pass, loading async)
    │   │   ├── profile_page.dart          # Halaman Utama Profil (Scaffold, Drawer, BottomNav, FAB)
    │   │   ├── edit_profile_page.dart     # Halaman Edit Profil (TextEditingController, Navigator.pop)
    │   │   └── about_page.dart            # Halaman Tentang Saya (ListView keahlian & pendidikan)
    │   └── widgets/
    │       └── info_tile.dart             # Reusable custom widget Card + ListTile dengan icon
    ├── screenshots/                       # Asset tangkapan layar aplikasi Soal 2
    ├── pubspec.yaml                       # Konfigurasi aset & dependensi Flutter
    └── README.md                          # Dokumentasi teknis, 5 screenshot & panduan lengkap Soal 2
```

---

> **Catatan:** Dokumentasi teknis detail fitur, 5 tangkapan layar antarmuka lengkap (*screenshots*), dan panduan instalasi/pengujian aplikasi terdapat pada [soal2_profile_app/README.md](soal2_profile_app/README.md).