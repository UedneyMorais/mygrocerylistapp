class Product {
  int _id;
  String _name;
  double _quantity;
  double _price;

  int get id => _id;
  set id(int value) => _id = value;

  String get name => _name;
  set name(String value) => _name = value;

  double get quantity => _quantity;
  set quantity(double value) => _quantity = value;

  double get price => _price;
  set price(double value) => _price = value;

  Product(id, name, quantity, price)
      : _id = id,
        _name = name,
        _quantity = quantity,
        _price = price;

  Product.fromJson(Map<String, dynamic> json)
      : _id = json['id'] == null ? 1 : json['id'],
        _name = json['name'] == null ? '' : json['name'],
        _quantity = json['quantity'] == null ? 0.0 : json['quantity'],
        _price = json['price'] == null ? 0.0 : json['price'];

  Map<String, dynamic> toJson() =>
      {'id': _id, 'name': _name, 'quantity': _quantity, 'price': _price};
}
