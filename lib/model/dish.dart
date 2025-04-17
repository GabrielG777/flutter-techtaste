class Dish {
  final String id;
  final String name;
  final String description;
  final int price;
  final String imagePath;

  Dish({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  // Factory method to create a Dish from a JSON map
  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      imagePath: json['imagePath'],
    );
  }
  
  // Method to convert a Dish to a JSON map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imagePath': imagePath,
    };
  }

  // Factory method to create a Dish from a map (for database operations)
  factory Dish.fromMap(Map<String, dynamic> map) {
    return Dish(
      id: map['id'],
      name: map['name'],  
      description: map['description'],
      price: map['price'].toDouble(),
      imagePath: map['imagePath'],
    );
  }

  // Method to convert a Dish to a string representation
  @override
  String toString() {
    return 'Dish{id: $id, name: $name, description: $description, price: $price, imagePath: $imagePath}';
  }
}
