# Summary

## Flutter Form and Advance Form

* Form digunakan untuk menerima isian data dari user. membuat form mengunakan StatefulWidget, menggunakan GlobalKey<FormState> untuk menyimpan form. input widget yang dapat digunakan properti textfield (untuk menerima isian data, properti yang digunakan TextEditingController untuk mengambil data yang diisi berupa teks), radio (untuk memberi opsi pada user, dan user hanya dapat memilih satu opsi), checkbox (memberi opsi pada user tetapi dapat memilih beberapa opsi, menggunakan property bool untuk mengambil data).

* Didalam form menggunakan properti button seperti tombol yang akan melakukan sesuatu saat ditekan, ElevatedButton adalah tombol yang timbul yang akan menjalankan onPressed jika ditekan, IconButton adalah tombol yang menampilkan icon dan akan menjalankan onPressed jika ditekan.

* Interactive widgets adalah interaksi antara aplikasi dan user, yang akan mengumpulkan input dan feedback dari usuer. Interactive widget ada 3, yaitu: Date Picker (user dapat menginput tanggal baik tanggal kelahiran, jadwal meeting, dll), Color Picker (user dapat memilih berbagai macam warna), dan File Picker (kemampuan widget untuk mengakses storage, memilih, dan membuka file).