class Shape {
  getArea() {}
  getPerimeter() {}
}

class Rectangle implements Shape {
  int width;
  int height;
  Rectangle(this.width, this.height);

  @override
  getArea() {
    return width * height;
  }

  @override
  getPerimeter() {
    return 2 * (width + height);
  }
}

class Square implements Shape {
  int side;
  Square(this.side);

  @override
  getArea() {
    return side * side;
  }

  @override
  getPerimeter() {
    return 4 * side;
  }
}

class Circle implements Shape {
  int r;
  final phi = 3.14;
  Circle(this.r);

  @override
  getArea() {
    return phi * (r * r);
  }

  @override
  getPerimeter() {
    return 2 * phi * r;
  }
}

void main() {
  print("Luas bangun datar persegi panjang adalah...");
  print(Rectangle(10, 7).getArea());
  print("Keliling bangun datar persegi panjang adalah ...");
  print(Rectangle(5, 4).getPerimeter());

  print("Luas bangun datar persegi adalah...");
  print(Square(5).getArea());
  print("Keliling bangun datar persegi adalah ...");
  print(Square(5).getPerimeter());

  print("Luas bangun datar lingkaran adalah...");
  print(Circle(14).getArea());
  print("Keliling bangun datar lingkaran adalah ...");
  print(Circle(14).getPerimeter());
}
