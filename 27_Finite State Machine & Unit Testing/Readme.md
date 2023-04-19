# Summary

## Finite State Machine

* Finite State Mechine, adalah mesin yang memiliki sejumlah state diman setiap state menunjukkan apa yang terjadi sebelumnya. Ada 3 state yang menunjukkan kejadian dalam suatu proses, yaitu (IDDLE, RUNNING, ERROR).

* Implementasi pada View-Model yaitu menambahkan enum untuk masing-masing state: none saat IDDLE, loading saat RUNNING, error saat ERROR. Lale menambahkan Getter-Setter. Informasi finite state berguna untuk menentukan seperti apa tampilan yang dimunculkan.

* Unit Test adalah pengujian pada perangkat lunak, pengujian ini dilakukan pada fungsi atau method dalam perangkat lunak.

* Tujuan unit test ini untuk memastikan fungsi dapat mengolah jenis input, memastikan hasil dari suatu fungsi atau method sudah sesuai, dan menjadi dokumentasi.

* Melakukan Unit Test dapat dilakukan secara Manual dan Automated, lalu menambahkan test, di bagian dev_dependencies dalam file pubspec.yaml.

* Mocking adalah proses yang terikat dengan sistem eksternal dan dapat mempengaruhi berjalannya pengujian, pengaruh itu dapat mengganggu proses pengujian, mocking dilakukan untuk menghindari masalah-masalah.

* Cara kerja mocking, object dibuat bentuk tiruannya yang memiliki input dan output yang sama dengan yang asli, bentuk tiruan ini menghilangkan ketergantungan pada sistem eksernal.

* Untuk melakukan mocking, maka harus menambahkan mockito dan build_runner di bagian dev_dependencies di file pubspec.yaml.