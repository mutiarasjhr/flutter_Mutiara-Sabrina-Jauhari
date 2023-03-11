# Summary

## Introduction Flutter dan Widget

* Flutter merupakan alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi desktop, web, dan mobile. Keuntungan flutter antara lain, mudah dipelajari dan digunakan, dokumentasi lengkap, dan komunitas yang berkembang. Bagian flutter ada SDK (software develompment kit) sebagai alat bantu dalam proses pengembangan aplikasi, dan Framework adalah perlengkapan untuk membangun aplikasi yang bisa dikustomisasi. Dalam folder project flutter memiliki struktur direktori, direktori platform(android, IOS, web) dan direktori project(lib dan test).

* Widget untuk membentuk user interface, berupa class dan dapat terdiri dari beberapa widget lainnya. Jenis-jenis widget yaitu, stateless dan stateful. Stateless Widget memiliki ciri fokus pada tampilan, dibuat dengan extends pada class StatelessWidget dan tidak bergantung pada perubahan data. Stateful Widget ini mementingkan perubahan data, dibuat dengan extends pada class StatefulWidget.

* Built in Widget adalahh widget yang bisa langsung digunakan dan sudah terinstall langsung bersama Flutter. Ada MaterialApp menggunakan material desain untuk pengembangan aplikasi dalam android, merupakan komponen penting. Scaffold untuk membentuk sebuah halaman, scaffold ini kita dapat membuat body, bar, button, drawer. AppBar untuk membentuk application bar yang terletak pada bagian atas halaman, property AppBar ada title. Text untuk menampilkan teks.