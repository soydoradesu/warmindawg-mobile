# Warmindawg (A Warmindo with extra spice 🌶️) but mobile
Warmindawg is a very simple app made with flutter

# Jawaban Tugas Individu (Update: Tugas Individu 7)

**Nama**: Valentino Kim Fernando <br />
**NPM**: 2306275771 <br />
**Kelas**: PBP F 

<details>
    <summary><h2>Tugas Individu 7</h2></summary>

## 1. Jelaskan apa yang dimaksud dengan __stateless widget dan stateful widget__, dan jelaskan perbedaan dari keduanya.

- **Stateless Widget** adalah widget yang bersifat statis atau statusnya tidak dapat berubah. Sekali widget ini dibangun, maka ia tidak akan di-render ulang dengan perubaha data.

- **Stateful Widget** adalah widget yang memiliki state yang dapat berubah seiring waktu. Karena memiliki state, `StatefulWidget` membutuhkan pengelolaan lifecycle, dan dapat di-render ulang menggunakan fungsi `setState()` untuk memperbarui tampilan saat ada perubahan pada state tersebut.

**Perbedaan Utama:**
- Stateless widget tidak bisa berubah setelah dirender, sedangkan stateful widget bisa berubah dan diperbarui menggunakan `setState()`
- Stateful widget umumnya digunakan untuk widget interaktif yang membutuhkan perubahan data atau kondisi visual, sedangkan stateless widget lebih ringan dan optimal untuk elemen statis.

## 2.  Sebutkan __widget__ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- ***AppBar***		    : Membuat *app bar* di bagian atas halaman sebagai header untuk menampilkan judul aplikasi.
- ***Column*** 		    : Menyusun child element secara vertikal. Dalam proyek ini, *Column* digunakan untuk mengatur tata letak elemen-elemen secara vertikal, misalnya InfoCard dan teks "Welcome to Food Pedia".
- ***Row*** 		    : Menyusun child element secara horizontal. Dalam proyek ini, *Row* digunakan untuk mengatur tata letak elemen-elemen secara horizontal, misalnya InfoCard agar NPM, nama, dan kelas tersusun sejajar ke samping.
- ***Container*** 	    : Mengatur tata letak dan dekorasi elemen pada halaman. Hal yang bisa diatur misalnya margin dan *padding*, ukuran (*height* dan *width*), dekorasi, posisi (*alignment*), serta transformasi(*transform*).
- ***Icon*** 		    : Menampilkan ikon. Dalam proyek ini, *Icon* ditampilkan di tengah ItemCard untuk menjadi lambang setiap item. 
- ***Text*** 		    : Menampilkan teks. Dalam proyek ini, *Text* digunakan untuk menampilkan judul aplikasi, tulisan selamat datang, nama item, dan lain-lain.
- ***Scaffold***		: Memberikan struktur dasar halaman dengan *AppBar* dan *body*.
- ***Padding****		: Memberikan jarak di sekitar *widget*. Biasanya digunakan agar elemen-elemen yang ada tidak terlalu berdekatan satu sama lain.
- ***Card***		    : Menampilkan kotak kartu yang dapat memuat informasi. Dalam proyek ini, *Card* digunakan untuk menampilkan NPM, nama, dan kelas sama suatu kartu yang ada bayangannya.
- ***MediaQuery***	    : Mendapatkan informasi mengenai ukuran dan orientasi layar dari perangkat yang digunakan. Dalam proyek ini, *MediaQuery* digunakan untuk menyesuaikan lebar *InfoCard* agar dapat sesuai dengan ukuran layar perangkat pengguna.
- ***GridView.count***	: Membuat tampilan dalam bentuk grid dengan jumlah kolom tertentu. Dalam proyek ini, *GridView.count* digunakan untuk menampilkan *ItemCard* dalam format grid kolom dengan jumlah 3 kolom.
- ***Material***		: Memberikan desain pada elemen yang memiliki efek ketika diklik. Dalam proyek ini, *Material* digunakan dalam memberi warna dan efek melengkung pada kartu *item*.
- ***InkWell***		    : Memberikan efek/aksi pada elemen yang dapat diklik. Dalam proyek ini, *InkWell* digunakan untuk memberi efek ketukan pada *ItemCard* dengan menampilkan *SnackBar* pada saat diklik.
- ***SnackBar***		: Menampilkan pesan sementara di bagian bawah layar. Dalam proyek ini, *SnackBar* digunakan untuk menampilkan pesan tertentu kepada sesuai dengan *ItemCard* yang diklik.

## 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

- Memperbarui State Komponen: `setState()` digunakan untuk memperbarui nilai variabel atau properti yang berada dalam state komponen.
- Memicu Rebuild UI: Saat `setState()` dipanggil, Flutter akan menandai widget tersebut untuk di-rebuild, yang berarti tampilan akan diperbarui agar sesuai dengan perubahan yang baru saja terjadi.

Variabel yang terpengaruh oleh `setState()` adalah variabel yang perubahan nya terjadi di dalam fungsi `setState()`. Mari kita ambil contoh
```dart 
class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; // c_counter akan diupdate statenya
    });
  }
}
```

## 4. Jelaskan perbedaan antara `const` dengan `final`.

- `const`: Nilai harus diketahui saat kompilasi dan tidak bisa diubah sama sekali. Cocok untuk nilai konstan yang benar-benar tetap. Contoh bilangan pi: `const int pi = 3.14;`.
- `final`: Nilai ditetapkan sekali saat runtime dan tidak bisa diubah setelahnya, tetapi nilainya tidak perlu diketahui saat kompilasi. Cocok untuk nilai yang tetap setelah inisialisasi pertama. Contoh: `final DateTime currentTime = DateTime.now();`.

## 5.  Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. **Buat Proyek Flutter Baru**
   - Jalankan perintah berikut untuk membuat proyek baru dengan `flutter create warmindawg_mobile`
   - Setelah proyek dibuat, lakukan setup remote untuk menghubungkan proyek dengan repositori GitHub yang baru.

2. **Membuat File `menu.dart`**
   - Tambahkan file `menu.dart` di dalam direktori `warmindawg_mobile/lib`.
   - Pastikan untuk menambahkan import yang diperlukan di file ini.

3. **Memindahkan Snippet Code dari `main.dart` ke `menu.dart`**
   - Untuk merapikan struktur proyek, pindahkan beberapa bagian kode yang relevan dari `main.dart` ke `menu.dart`.

4. **Mengubah Tema Warna Aplikasi**
   - Di dalam `main.dart`, ubah warna tema aplikasi sesuai warna khas ind*mie:
     - **Merah**
     - **Kuning**
     - **Hijau**

5. **Mengubah Widget Halaman Menu menjadi Stateless Widget**
   - Ubah halaman menu menjadi *stateless widget* untuk meningkatkan efisiensi dan kesederhanaan kode.

6. **Membuat Card Info (InfoCard)**
   - Buat card sederhana yang menampilkan informasi seperti:
     - **NPM**
     - **Nama**
     - **Kelas**
   - Buat class `InfoCard` untuk mengatur tampilan card ini.

7. **Membuat Button Card dengan Icon (ItemCard)**
   - Tambahkan button card dengan ikon di tengahnya.
   - Buat class `ItemCard` dan sesuaikan tampilannya sesuai kebutuhan.

8. **Mengintegrasikan `InfoCard` dan `ItemCard` di Halaman Utama**
   - Gabungkan `InfoCard` dan `ItemCard` agar bisa ditampilkan di halaman utama aplikasi.

9. **Mengatur Tampilan Halaman Utama**
   - Atur tampilan halaman utama dengan mempertimbangkan aspek-aspek berikut:
     - **Padding**
     - **Row dan Column**
     - **Ikon yang digunakan**
   - Pastikan tampilan keseluruhan rapi dan terstruktur.

10. **Menambahkan Warna pada `ItemHomePage`**
    - Tambahkan atribut warna pada class `ItemHomePage` untuk mengubah warna kartu pada fitur berikut:
      - **Lihat Daftar Produk**
      - **Tambah Produk**
      - **Logout**

11. **Menyimpan Perubahan ke GitHub**
    - Setelah selesai, jalankan add, commit dan push ke repository GitHub Anda!

</details>

<details open>
    <summary><h2>Tugas Individu 8</h2></summary>

## 1. Apa kegunaan `const` di Flutter? Apa keuntungan saat menggunakan `const`, kapan sebaiknya digunakan, dan kapan sebaiknya tidak?

- **Kegunaan `const` di Flutter**: `const` digunakan untuk membuat objek yang nilainya konstan pada waktu kompilasi dan tidak akan berubah selama aplikasi berjalan. Contohnya, widget yang tidak berubah tampilannya atau konstan dapat didefinisikan dengan `const` agar lebih efisien.

- **Keuntungan menggunakan `const`**:
  - **Efisiensi Memori**: Karena objek `const` disimpan dalam memori hanya sekali dan tidak dibuat ulang, ini mengurangi penggunaan memori.
  - **Performa**: Menggunakan `const` pada widget yang tidak berubah memungkinkan Flutter menghindari render ulang widget tersebut, mempercepat performa aplikasi.

- **Kapan menggunakan `const`**: Gunakan `const` untuk widget atau variabel yang nilai atau tampilannya tetap, seperti `Text`, `Icon`, atau `Padding` yang konstan.

- **Kapan tidak menggunakan `const`**: Hindari `const` pada widget atau variabel yang nilai atau tampilannya berubah seiring waktu, misalnya pada widget yang bergantung pada `State` atau data yang dinamis.

## 2. Jelaskan dan bandingkan penggunaan `Column` dan `Row` di Flutter, serta berikan contoh implementasi.

- **Column**: Menyusun elemen secara vertikal, dari atas ke bawah. Digunakan saat ingin menempatkan widget dalam satu kolom.
- **Row**: Menyusun elemen secara horizontal, dari kiri ke kanan. Digunakan untuk menempatkan widget dalam satu baris.

**Contoh Implementasi:**

```dart
Column(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
);

Row(
  children: <Widget>[
    Icon(Icons.star),
    Text('Star'),
  ],
);
```
## 3. Apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas ini? Apakah ada elemen input Flutter lain yang tidak kamu gunakan? Jelaskan!

- Elemen Input yang Digunakan: Pada halaman form tugas kali ini, elemen yang digunakan adalah:
  - `TextFormField`: Untuk input teks seperti nama kerajinan, deskripsi, dan harga.
  - `ElevatedButton`: Untuk tombol aksi seperti tombol "Save".

- Yang tidak digunakan:
  - `Slider`: Tidak digunakan karena tidak diperlukan input berbentuk range dalam tugas ini.
  - `Switch`: Umumnya untuk opsi biner, tetapi tidak diperlukan dalam tugas ini.

## 4. Bagaimana cara mengatur tema dalam aplikasi Flutter agar konsisten? Apakah kamu menerapkan tema pada aplikasi yang kamu buat?

- **Mengatur Tema dalam Flutter**: Tema dapat diatur pada `MaterialApp` melalui properti `ThemeData`. Ini mencakup pengaturan warna utama, warna teks, jenis font, ikon, dan elemen lainnya untuk menjaga konsistensi.
``` dart
. . .
   theme: ThemeData(
      colorScheme: ColorScheme(
         primary: Colors.red, // Set primary color here
         onPrimary: Colors.white, // Contrast color for primary text/icons
         secondary: Colors.green, // Set a distinct secondary color here
         onSecondary: Colors.white, // Contrast color for secondary text/icons
         surface: Colors.grey[200]!, // Surface color
         onSurface: Colors.black, // Text color on surfaces
         error: Colors.redAccent, // Color for errors
         onError: Colors.white, // Contrast color for errors
         brightness: Brightness.light, // Set light or dark mode
      ),
   ),
. . .
```

Jika sudah diterapkan, maka aplikasi akan memiliki gaya konsisten. Jika belum, pertimbangkan untuk menambahkan pengaturan tema untuk kemudahan perubahan tampilan secara global.

## 5. Bagaimana cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Flutter menggunakan `Navigator` untuk menangani navigasi antar halaman, yang memungkinkan transisi halaman baru atau kembali ke halaman sebelumnya. Berikut adalah dua metode umum:

### Navigasi dengan `Navigator`
Dengan menggunakan `Navigator.push`, `Navigator.pop` dan `Navigator.pushReplacement`, kita dapat mengatur alur perpindahan halaman:

```dart
// Navigasi ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);

// Kembali ke halaman sebelumnya
Navigator.pop(context);
```

Untuk page dengan jumlah banyak, gunakan `routes` di `MaterialApp` untuk mendefinisikan semua halaman di awal dan gunakan `Navigator` untuk navigasi antar halaman.

</details>