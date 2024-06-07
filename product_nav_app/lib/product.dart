class Product {
  final String name;
  final String description;
  final int price;
  final String image;

  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        "Pixel", "Pixel is the most featureful phone ever", 800, "pixel.png"));
    items.add(Product("Laptop", "Laptop is most productive development tool",
        2000, "laptop.png"));
    items.add(Product(
        "Tablet",
        "Tablet is the most useful device ever for meeting",
        1500,
        "tablet.png"));
    items.add(Product(
        "Pendrive", "iPhone is the stylist phone ever", 100, "pendrive.png"));
    items.add(Product(
        "Floppy Drive", "iPhone is the stylist phone ever", 20, "floppy.png"));
    items.add(Product(
        "iPhone", "iPhone is the stylist phone ever", 1000, "iphone.png"));
    return items;
  }
}
