part of '_index.dart';

class Product {
  final String id;
  final String name;
  final int price;
  final int quantity;
  final String createdAt;
  Product({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.quantity = 0,
    this.createdAt = '',
  });

  // * --------- Dibuat terpisah -------------

  static Product random() {
    return Product(
      id: UniqueKey().toString().substring(2, 7),
      name: generateWordPairs().take(2).join(' '),
      price: Random().nextInt(99999999),
      quantity: Random().nextInt(999),
      createdAt: DateTime.now().toString(),
    );
  }

  static Product init() {
    return Product(
      id: '00000',
      name: 'Laptop',
      price: 10000000,
      quantity: 50,
      createdAt: DateTime.now().toString(),
    );
  }

  static Product init2() {
    return Product(
      id: '00001',
      name: 'Mouse',
      price: 150000,
      quantity: 20,
      createdAt: DateTime.now().toString(),
    );
  }

  // * ---------------------------------------

  Product copyWith({
    String? id,
    String? name,
    int? price,
    int? quantity,
    String? createdAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'price': price});
    result.addAll({'quantity': quantity});
    result.addAll({'created_at': createdAt});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      createdAt: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, quantity: $quantity, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.quantity == quantity &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ price.hashCode ^ quantity.hashCode ^ createdAt.hashCode;
  }
}
