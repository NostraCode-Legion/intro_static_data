# intro_static_data

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## STEP BY STEP

```
1. Buat 4 folder di ui_screens menggunakan folder templates
nama folder : - product_list
              - product_detail
              - product_add
              - product_edit
Lalu bereskan setiap error yang ada, dari mulai daftarkan xtras lalu daftarkan
navigationnya.
2. Lalu run projectnya dan pastikan aman.
3. Rename setiap folder dengan menambahkan abjad di depannya untuk menandai folder
mana dulu yang akan dikerjakan.
nama folder : - a.product_list
              - b.product_detail
              - c.product_add
              - d.product_edit
Lalu bereskan export di tiap _index.dart yang error dan import ulang di xtras.
4. Buat folder baru di ui_screens tanpa folder templates dan tambahkan file _index.dart
didalamnya.
nama folder: products
Lalu bereskan setiap error yang ada dan cut ke empat product tadi lalu masukkan ke dalam
folder products.
5. Masuk ke dalam dt_domains di folder _models buat file product.dart jangan lupa daftarkan
di index.
6. Di dalam file product.dart kita buat model dengan properti sesuai  dengan apa yang kita inginkan,
tapi disini kita samain saja ya.
nama properti : - id
                - name
                - price
                - quantity
                - createdAt
                - updatedAt
7. Buat product init() dan product random() di product.dart untuk nantinya dipanggil di fungsi read
dan fungsi add.
8. Pindah ke a.product_list.data dan deklarasikan variabel rxProductList, rx menandakan
variabel reaktif artinya variabel dideklarasikan menggunakan rm.inject.
9. Pindah ke b.product_list_ctrl dan buat fungsi untuk me read product dengan memanggil variabel
yang ada di b.product_list.data dan buat fungsi untuk menangkap read tersebut.
10. Pastikan fungsi jalan , dengan membuat print (di fe kita pake log) di setiap fungsi.
11. Di c.product_list.view buat tampilan listviewnya, jangan lupa gunakan onbuilder.all() agar tampilan
state menjadi reaktif dan jangan lupakan properti listen_to: ketikan saja karena belum auto.
12. Buat variabel selectedId untuk menandakan id menggunakan fungsi setSelectedId, dan gunakan di fungsi select.
13. Panggil fungsi select di onTap product_list.view untuk pindah ke page product_detail.
14. Buat variabel rxproduct di product_detail.data untuk menyimpan salah satu productList yang di tap
15. Buat fungsi yang me read product_detail, dan jangan lupa buat juga fungsi untuk mewadahinya.
16. Pindah ke product_add, di datanya  panggil rxproductLIst yang ada di data.productList.
17. Gunakan variabel rxProductList ke dalam fungsi addproduct yang kita akan buat
lalu panggil di view list.
18. Buat fungsi removeById
19. Buat fungsi deleteAllproduct dengan me looping removebyid
20. Aplikasikan di appbar product_list
21. Buat juga fungsi removebyid di ctrl detail
22. Panggil di appbar detail
23. Deklarasikan rxProduct dan rxProductList di data edit
24. buat fungsi edit dan fungsi yang menangkapnya
25.
```
