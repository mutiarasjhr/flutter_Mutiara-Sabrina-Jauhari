# Summary

## Introduction REST API - JSON serialization/deserialization

* REST API atau Representational State Transfer Application Programming Interface, adalah arsitektiral yang memisahkan tampilan dengan proses bisnis dan berkirim data melalui HTTP Request.

* Pola Komunikasi HTTP adalah client mengirim request lalu server mengolah dan membalas dengan memberi response.

* Struktur Request ada URL, Method(GET, POST, PUT, DELETE), Header dan Body. Adapun Struktur response ada Status Code, Header, dan Body.

* Dio sebagai client HTTP yang andal dalam mendukung konfigurasi global, formdata, pembatalan permintaan,dll.

* JSON (Javascript Object Notation) ada 2 yaitu serialisasi dan deserialisasi. Serealisasi untuk mengubah struktur data ke bentuk JSON serta menggunakan fungsi jsonEncode dan Deserealisasi JSON mengubah bentuk JSON ke struktur data menggunakan fungsi jsonDecode..