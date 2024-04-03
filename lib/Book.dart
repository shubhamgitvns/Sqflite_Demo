
class Book {
  final int id;
  final String name;
  final int price;

  Book(this.id, this.name, this.price) {}

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

// Implement toString to make it easier to see information about
// each book.
  @override
  String toString() {
    return 'Book{id: $id, name: $name, price: $price}';
  }
}

class Json{
  final int id;
  final String text;
  Json(this.id, this.text){}

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,

    };
  }
  @override
  String toString() {
    return 'Book{id: $id, text: $text,}';
  }
}


