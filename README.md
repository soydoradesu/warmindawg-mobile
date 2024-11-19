# Warmindawg (A Warmindo with extra spice 🌶️) but mobile
Warmindawg is a very simple app made with flutter

# Jawaban Tugas Individu (Update: Tugas Individu 9)

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

<details>
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

<details open>
    <summary><h2>Tugas Individu 9</h2></summary>

## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Model diperlukan untuk melakukan CRUD pada data JSON agar data dapat dipetakan ke dalam struktur yang konsisten dan mudah diakses di aplikasi. Model juga membantu validasi, sehingga membuat aplikasi lebih aman dan terstruktur. Tanpa model, data JSON bisa sulit diolah dan rentan terhadap error saat runtime, karena data mungkin memiliki format atau tipe yang tidak sesuai harapan.

## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library `http` dalam tugas ini berfungsi untuk melakukan integrasi antara aplikasi dan server, khususnya untuk mengambil atau mengirim data melalui protokol HTTP. Dengan `http`, aplikasi dapat melakukan request seperti `GET` untuk mengambil data atau `POST` untuk mengirim data ke server, dan menerima respon dalam bentuk JSON yang kemudian diolah lebih lanjut. Library ini mempermudah integrasi API, sehingga aplikasi dapat berinteraksi dengan server untuk mendapatkan informasi atau mengirim data secara dinamis dan real-time.

## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` berfungsi untuk mengelola sesi autentikasi dan menyimpan informasi cookie dari server dalam aplikasi. Dengan `CookieRequest`, aplikasi dapat melakukan request HTTP (seperti `GET` dan `POST`) yang menyertakan cookie untuk menjaga sesi tetap aktif, memungkinkan pengguna tetap terautentikasi selama aplikasi digunakan tanpa perlu login berulang kali. 

Membagikan instance `CookieRequest` ke seluruh komponen aplikasi sangat penting karena ini memungkinkan setiap komponen mengakses data sesi dan cookie yang sama. Ini menjaga konsistensi autentikasi di seluruh aplikasi, memastikan bahwa semua permintaan ke server yang memerlukan autentikasi dapat dilakukan dengan aman tanpa harus memuat ulang informasi sesi atau login pengguna kembali di setiap halaman.

## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

1. **Input Data**: User memasukkan data melalui widget input, seperti `TextField` atau `Form`, yang memungkinkan data dikumpulkan di app.

2. **Transmit data ke Server**: Data yang dikumpulkan kemudian dikemas dalam format yang sesuai, seperti JSON, dan dikirim ke server menggunakan HTTP, misalnya `POST`. `http` atau `CookieRequest` biasanya digunakan untuk mengirim permintaan ini dan menyertakan data yang diperlukan.

3. **Pemrosesan pada Server**: Di server, data diterima dan diproses sesuai dengan business logic dari suatu app. Server kemudian menyimpan data ini atau melakukan operasi yang diminta, seperti menyimpannya ke database atau melakukan perhitungan. Server mengirimkan respons yang mencakup data yang diperbarui atau status operasi.

4. **Penerimaan Respons**: Flutter menerima respons dari server. Respons ini kemudian diubah menjadi model atau objek data yang sesuai, yang memudahkan pengelolaan data di app. Model ini memastikan struktur data konsisten dengan yang diterima dari server.

5. **Menampilkan Data**: Model data kemudian diteruskan ke widget yang menampilkan data pada interface pengguna, misalnya menggunakan widget `ListView` atau `Text`. Flutter secara otomatis memperbarui tampilan ketika data baru tersedia, sehingga pengguna dapat melihat data terbaru yang telah mereka input atau hasil dari pengolahan server.

## 5.  Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1. Login:

Flutter - Login Form
```dart
final response = await request.login(
  "http://localhost:8000/auth/login/",
  {
    'username': username,
    'password': password,
  }
);

if (response['status']) {
  Navigator.pushReplacement(...); // Ke homepage jika berhasil
}
```

Django - Login Views

```python
@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        login(request, user)
        return JsonResponse({
            "status": True,
            "message": "Login successful!"
        })
    return JsonResponse({
        "status": False,
        "message": "Login failed!"
    })
```

2. Register:

Flutter - Register Form
```dart
final response = await request.post(
  "http://localhost:8000/auth/register/",
  {
    'username': username,
    'password': password,
  }
);

if (response['status']) {
  Navigator.pushReplacement(...); // Ke login page jika berhasil
}
```

Django - Register Views
```python
@csrf_exempt
def register(request):
    form = UserCreationForm(request.POST)
    if form.is_valid():
        form.save()
        return JsonResponse({
            "status": True,
            "message": "Register successful!"
        })
    return JsonResponse({
        "status": False,
        "message": "Register failed!"
    })
```

3. Logout:

Flutter - Logout 
```dart
final response = await request.logout(
  "http://localhost:8000/auth/logout/"
);

if (response['status']) {
  Navigator.pushReplacement(...); // Ke login page
}
```

Django - Logout Views
```python
@csrf_exempt
def logout(request):
    logout(request)
    return JsonResponse({
        "status": True,
        "message": "Logout successful!"
    })
```

Mekanisme:
1. Pada Flutter, User melakukan register/login akun
2. Data dari user dikirimkan ke Django endpoint
3. Django melakukan validasi data dan menyimpan data ke database, lalu mengautentikasi user
4. Jika berhasil, Django mengembalikan response status
5. Flutter kemudian melakukan redirect sesuai dengan status
6. Session disimpan dengan cookies untuk request selanjutnya
7. Jika user logout, Django menghapus session user dan mengembalikan response status

## 6. Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas secara _step-by-step_!

1. Membuat django app bernama authentication dengan menjalankan
```bash
py manage.py startapp authentication
```

2. Menambahkan authentication ke INSTALLED_APPS di `settings.py`

3. Menginstal corsheaders dan menambahkan nya pada `MIDDLEWARE`. Kemudian, menambahkan beberapa variabel cors pada `settings.py`

4. Buatlah method login dengan memasukkan kode berikut pada `views.py` app authentication 
```python
@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user:
        login(request, user)
        return JsonResponse({"status": True})
    return JsonResponse({"status": False})
```
jangan lupa untuk menambahkan endpoint nya pada `urls.py`

5. Menginstall beberapa package yang essential
```bash
flutter pub add provider
flutter pub add pbp_django_auth
```

6. Melakukan integrasi flutter pada `main.dart`
```dart
void main() {
  runApp(Provider(
    create: (_) => CookieRequest(),
    ...
  ));
}
```

7. Membuat login page untuk flutter dengan kode berikut pada `login.dart`
```dart
onPressed: () async {
  final response = await request.login(
    "http://<URL>/auth/login/",
    {
      'username': username,
      'password': password, 
    }
  );
  
  if (response['status']) {
    Navigator.pushReplacement(...);
  }
}
```

7. Pada main/views.py buatlah method create_menu_flutter dan hubungkan endpointnya di urls.py
```python
def create_menu_flutter(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
                        
            new_product = Item.objects.create(
                user=request.user,
                name=data['nama'], 
                price=int(data['harga']),
                description=data['deskripsi'],
            )
            
            return JsonResponse({
                "status": "success",
                "message": "Product berhasil ditambahkan!"
            }, status=200)
            
        except Exception as e:
            return JsonResponse({
                "status": "error",
                "message": str(e)
            }, status=400)
            
    return JsonResponse({
        "status": "error",
        "message": "Invalid request method"
    }, status=401)
```

8. Membuat subdirektori model pada direktori lib yang berisikan `item.dart`
```dart
class Item {
    String model;
    int pk;
    Fields fields;

    Item({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String username;
    String name;
    int price;
    String description;

    Fields({
        required this.user,
        required this.username,
        required this.name,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        username: json["username"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "username": username,
        "name": name,
        "price": price,
        "description": description,
    };
}
```

9. Buatlah form submit, dengan fetch fungsi create_menu_flutter di django web pada `foodentry_form.dart`
```dart
...
  final response = await request.postJson(
    "http://localhost:8000/create-flutter/",
    jsonEncode(<String, String>{
      'nama': _food,
      'harga': _price.toString(),
      'deskripsi': _descriptions,
    }),
  );
...
```

10. Integrasikan form dengan CookieRequest
```dart
final request = context.watch<CookieRequest>();

onPressed: () async {
  if (_formKey.currentState!.validate()) {
    final response = await request.postJson(...);
    if (response['status'] == 'success') {
      Navigator.pushReplacement(...);
    }
  }
}
```

11. Membuat menu logout pada widget `food_card.dart`
```dart
onPressed: () async {
  final response = await request.logout(
    "http://localhost:8000/auth/logout/");
  String message = response["message"];
  ...
  if (response['status']) {
    Navigator.pushReplacement(...); 
  }
}
```

12. Mengubah `list_foodentry.dart` menjadi seperti ini untuk membuat detail serta menghubungkan JSON Endpoint
```dart
class FoodEntryPage extends StatefulWidget {
  const FoodEntryPage({super.key});
  @override
  State<FoodEntryPage> createState() => _FoodEntryPageState();
}

class _FoodEntryPageState extends State<FoodEntryPage> {
  Future<List<Item>> fetchProducts(CookieRequest request) async {
    try {
      var response =
          await request.get('http://localhost:8000/api/menu/json/');
      List<Item> products = [];
      List<dynamic> jsonList = response;

      for (var item in jsonList) {
        products.add(Item.fromJson(item));
      }
      return products;
    } catch (e) {
      print('Error fetching products: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Menu'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData || snapshot.data.isEmpty) {
              return const Center(
                child: Text(
                  'Kamu belum memasukkan menu.',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ItemDetailPage(item: snapshot.data![index]),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                              "Price: Rp${snapshot.data![index].fields.price}"),
                          const SizedBox(height: 10),
                          Text(
                              "Description: ${snapshot.data![index].fields.description}"),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace 'fields' with the actual fields of your Item model
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.fields.name,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text("Price: Rp${item.fields.price}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Description: ${item.fields.description}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            // Add other attributes of your item here
            // For example:
            // Text("Category: ${item.fields.category}",
            //     style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Menu List'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

13. Web dan App telah terhubung dan dapat digunakan!!!
</details>