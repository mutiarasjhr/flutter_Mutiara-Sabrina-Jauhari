class Book {
  int id;
  String judul;
  String penerbit;
  int harga;
  String kategori;

  Book(
      {required this.id,
      required this.judul,
      required this.penerbit,
      required this.harga,
      required this.kategori});
}

class Tokobuku {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Buku berhasil ditambahkan.");
  }

  void viewBooks() {
    if (books.isEmpty) {
      print("Tidak ada buku yang tersedia.");
    } else {
      print("Data buku:");
      for (var book in books) {
        print("ID: ${book.id}");
        print("Judul: ${book.judul}");
        print("Penerbit: ${book.penerbit}");
        print("Harga: ${book.harga}");
        print("Kategori: ${book.kategori}");
        print("===============");
      }
    }
  }

  void removeBook(int id) {
    var index = books.indexWhere((book) => book.id == id);
    if (index != -1) {
      books.removeAt(index);
      print("Buku berhasil dihapus.");
    } else {
      print("Buku tidak ditemukan.");
    }
  }
}

void main() {
  var tokobuku = Tokobuku();

  var buku1 = Book(
      id: 001,
      judul: "The Maze Runner",
      penerbit: "Pers Delacorte",
      harga: 90000,
      kategori: "Fiksi Ilmiah");
  var buku2 = Book(
      id: 002,
      judul: "In a Blue Moon",
      penerbit: "Gramedia Pustaka Utama",
      harga: 80000,
      kategori: "Fiksi");
  var buku3 = Book(
      id: 002,
      judul: "Dua Dini Hari",
      penerbit: "Noura Books Publishing",
      harga: 65000,
      kategori: "Thriller");

  tokobuku.addBook(buku1);
  tokobuku.addBook(buku2);
  tokobuku.addBook(buku3);

  tokobuku.viewBooks();

  tokobuku.removeBook(2);

  tokobuku.viewBooks();
}
