# Glassify — Customization & Configuration Guide

Panduan ini berisi cara menyesuaikan widget Glassify sesuai kebutuhan dan setup desktop kamu.

## ⚙️ Configuration & Customization

### 1. Global Variables

Pengaturan umum seperti nama pengguna, font, radius kartu, dan warna aksen dapat diubah melalui:

`@Resources/Variables.inc`

```ini
[Variables]

UserName=Reza

; Typography
FontMain=Plus Jakarta Sans
FontMono=Consolas

; Radius & Colors
CardRadius=8
AccentCyan=0, 240, 255
AccentGreen=0, 255, 150
TextPrimary=255, 255, 255, 240
```

---

### 2. Quick Notes — Mengubah & Menambah Catatan

Widget **Quick Notes** dapat digunakan untuk menampilkan catatan singkat langsung di desktop.

1. Klik tombol **"Click to edit or add notes"** di bagian bawah widget Quick Notes.
2. Aplikasi **Notepad** akan otomatis terbuka dan membaca file `notes.txt` di folder widget.
3. Edit isi catatan dengan maksimal **3 poin** agar layout tetap presisi.
4. Simpan menggunakan **`Ctrl + S`**, lalu tutup Notepad.
5. Widget akan memperbarui catatan secara otomatis.

---

### 3. Weather — Mengubah Lokasi Kota & Koordinat

Lokasi cuaca dapat disesuaikan dengan kota atau lokasi yang kamu inginkan.

1. Klik kanan widget **Weather** → pilih **Edit skin**.
2. Cari bagian `[Variables]` di bagian atas file `.ini`:

```ini
[Variables]
CityName=Bekasi
Latitude=-6.2383
Longitude=106.9756
```

3. Ubah `CityName` dengan nama kota yang diinginkan.
4. Ganti `Latitude` dan `Longitude` sesuai koordinat lokasi tersebut.
5. Simpan file lalu pilih **Refresh skin**.

> **Tips:** Koordinat lokasi dapat disalin dari Google Maps.

---

### 4. System Monitor — Mengubah Label Storage SSD / HDD

Label storage pada widget **System Monitor** dapat disesuaikan dengan konfigurasi storage komputer, misalnya **SSD / SSD**, **NVMe / SSD**, atau kombinasi lainnya.

1. Klik kanan widget **System Monitor** → pilih **Edit skin**.
2. Cari bagian meter tag drive:

```ini
[MeterDiskCTag]
...
Text="SSD (C:)"

[MeterDiskDTag]
...
Text="HDD (D:)"
```

3. Ubah teks `HDD (D:)` menjadi label yang sesuai, misalnya:

```ini
Text="SSD (D:)"
```

4. Simpan file lalu pilih **Refresh skin**.

---

### 5. Daily Brief — Mengubah Pesan Sapaan & Quotes

Pesan sapaan dan quote pada widget **Daily Brief** dapat diubah sesuai preferensi.

1. Klik kanan widget **Daily Brief** → pilih **Edit skin**.
2. Cari bagian meter teks terkait:

```ini
[MeterGreeting]
...
Text="Have a productive day, #UserName#!"

[MeterQuote]
...
Text="Make it simple, but significant."
```

3. Ubah nilai `Text=` sesuai pesan yang diinginkan.

Contoh:

```ini
[MeterGreeting]
...
Text="Good morning, #UserName#!"

[MeterQuote]
...
Text="Stay focused and keep moving."
```

4. Simpan file lalu pilih **Refresh skin**.

> **Tips:** Gunakan kalimat yang singkat agar teks tetap rapi dan proporsi layout widget tidak berubah.

---

⬅️ [Kembali ke README utama](README.md)
