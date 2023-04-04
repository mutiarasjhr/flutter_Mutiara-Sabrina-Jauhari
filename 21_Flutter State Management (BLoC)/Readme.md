# Summary

## Flutter State Management (BLoC)

* Pendekatan state management ada 3, yaitu; setState, provider, dan BloC

* Flutter state management (BloC) atau Business Logic Component adalah arsitektur pada flutter yang bertujuan memisahkan logika bisnis dari tampilan (UI). Dimana, ketika data diubah, objek tampilan akan diperbarui secara otomatis.

* BloC ini memiliki cara kerja yang simple, powerful, dan testable. Cara kerja state management BloC ini adalah menerima event sebagai input, lalu event yang diterima akan dianalisa dan dikelola di dalam Bloc lalu menghasilkan state sebagai output.

* Untuk menggunakan BloC kita harus install atau mendaftarkan package flutter_bloc dan equatable di Pubspec.yaml. 
