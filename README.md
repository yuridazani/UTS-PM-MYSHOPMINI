# UTS - PEMOGRAMAN MOBILE 7A2 (MyShop Mini)

**Nama:** Yurida Zani  
**NIM:** 221080200001  

---

## 📸 Screenshots  

### **Home Screen**
![Home](https://github.com/yuridazani/UTS-PM-MYSHOPMINI/blob/main/screenshoot/home.png)

### **Product List Screen**
![List](https://github.com/yuridazani/UTS-PM-MYSHOPMINI/blob/main/screenshoot/list.png)

### **Product Detail Screen**
![Detail](https://github.com/yuridazani/UTS-PM-MYSHOPMINI/blob/main/screenshoot/detail.png)

---

## **Jawaban Soal Nomor 4**

**Berikut adalah widget-widget yang digunakan untuk membangun HomeScreen, ProductListScreen, dan ProductDetailScreen, beserta fungsinya:**

---

### **1. Widget Struktural (Pondasi)**
- **MaterialApp** — widget akar untuk tema global, navigasi, dan konfigurasi dasar aplikasi.  
- **Scaffold** — kerangka dasar tiap halaman; tempat body, appbar, dan elemen utama.  
- **SafeArea** — memastikan konten tidak tertutup poni HP atau status bar.

---

### **2. Widget Layout (Tata Letak)**
- **Column** — menyusun widget secara vertikal (judul, list, konten).  
- **Row** — menyusun widget secara horizontal (misalnya header dengan tombol back).  
- **Padding** — memberi jarak dalam widget agar tidak menempel ke tepi layar.  
- **SizedBox** — memberi spasi antar elemen (height/width).  
- **Expanded** — mengisi ruang kosong yang tersisa, mencegah overflow (misalnya untuk List/Grid).  
- **Center** — memposisikan konten di tengah (misalnya pada detail produk).  
- **Stack** — menumpuk widget, seperti overlay ikon besar di belakang teks.  
- **Positioned** — menempatkan elemen di posisi spesifik dalam Stack (ikon dekoratif di pojok).

---

### **3. Widget List & Grid (Penampil Data)**
- **ListView** — menampilkan daftar kategori secara vertikal.  
- **GridView.builder** — menampilkan produk dalam grid 2 kolom di ProductListScreen.  
- **SingleChildScrollView** — digunakan di ProductDetailScreen agar konten tetap bisa discroll.

---

### **4. Widget Konten & Tampilan**
- **Text** — untuk semua tulisan (judul, harga, nama produk).  
- **Icon** — untuk ikon seperti Burger, Laptop, dan Back.  
- **Container** — pembungkus serbaguna dengan warna, radius, dan shadow.  
- **ClipRRect** — membuat elemen mengikuti lengkungan sudut (rounded corners).

---

### **5. Widget Interaksi & Navigasi**
- **GestureDetector** — mendeteksi tap pada CategoryCard dan ProductCard.  
- **ElevatedButton** — tombol kembali pada halaman detail.  
- **Navigator.push** — navigasi ke halaman berikutnya.  
- **Navigator.pop** — kembali ke halaman sebelumnya.

---

### **6. Widget Estetika & Animasi**
- **Hero** — animasi transisi halus.  
- **LinearGradient & RadialGradient** — efek gradasi pada background card atau ikon untuk tampilan modern.

---
