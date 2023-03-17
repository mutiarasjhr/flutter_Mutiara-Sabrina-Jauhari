# Summary

## Platform Widget

* Platform Widget terdiri atas 2 yaitu MaterialApp dan CupertinoApp untuk memanfaatkan widget dengan gaya berbeda pada Android dan iOS.

* Material App merupakan widget dasar yang mengemas seluruh widget dalam aplikasi, dan juga widget yang digunakan pada sistem Android. Material App ini di import dari package:flutter/material.dart. Widget pertama kali dibuka, diletakkan di bagian home. Untuk mengatur halaman dapat menggunakan routes dan initialRoute. MaterialApp terdiri atas beberapa Scaffold.

* CupertinoApp merupakan widget dasar yang mengemas seluruh widget dalam aplikasi, dan juga widget yang digunakan pada sistem iOS. Cupertino App ini di import dari package:flutter/cupertino.dart. Dalam CupertinoApp tidak menyediakan ThemeData.dark() seperti di MaterialApp, maka dibuatlah variabel _themeDark untuk menyimpan tema.  Widget pertama kali dibuka, diletakkan di bagian home. CupertinoApp terdiri atas beberapa CupertinoPageScaffold.