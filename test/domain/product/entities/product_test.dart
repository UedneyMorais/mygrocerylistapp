import 'package:flutter_test/flutter_test.dart';
import 'package:mygrocerylist/domain/product/product_export.dart';

void main() {
  late Map<String, dynamic> rawJson;

  setUp(() {
    rawJson = {"id": 4, "name": "Feijão 1kg", "quantity": 5.00, "price": 6.00};
  });

  group('Test group to product class', () {
    test('GIVEN a var,WHEN instancied product class,THEN should be a product',
        () {
      var systemUnderTest = Product(
          id: 1, name: 'description for test', price: 0.0, quantity: 0.0);
      expect(systemUnderTest, isA<Product>());
    });

    test(
        'GIVEN a Instance of product,WHEN product is null,THEN should be a product',
        () {
      var systemUnderTest =
          Product(id: null, name: null, quantity: null, price: null);
      expect(systemUnderTest, isA<Product>());
    });

    test(
        'GIVEN a Instance of product,WHEN id is null,THEN should be returned value not null',
        () {
      var systemUnderTest =
          Product(id: null, name: null, quantity: null, price: null);

      expect(systemUnderTest.id, 0);
    });

    test(
        'GIVEN a Instance of product,WHEN name is null,THEN should be returned value not null',
        () {
      var systemUnderTest =
          Product(id: null, name: null, quantity: null, price: null);

      expect(systemUnderTest.name, '');
    });

    test(
        'GIVEN a Instance of product,WHEN quantity is null,THEN should be returned value not null',
        () {
      var systemUnderTest =
          Product(id: null, name: null, quantity: null, price: null);

      expect(systemUnderTest.quantity, 0);
    });

    test(
        'GIVEN a product,WHEN price is null,THEN should be returned value not null',
        () {
      var systemUnderTest =
          Product(id: null, name: null, quantity: null, price: null);

      expect(systemUnderTest.price, 0);
    });

    test(
        'GIVEN an product read request without nulls on json response,WHEN decode json,THEN should return a value not null',
        () {
      var systemUnderTest = Product.fromJson(rawJson);
      expect(systemUnderTest, isA<Product>());
    });

    test(
        'GIVEN an product read request without null id on json response,WHEN decode json,THEN should return a value not null',
        () {
      rawJson['id'] = null;

      var systemUnderTest = Product.fromJson(rawJson);
      expect(systemUnderTest.id, 1);
    });

    test(
        'GIVEN an product read request without null name on json response,WHEN decode json,THEN should return a value not null',
        () {
      rawJson['name'] = null;

      var systemUnderTest = Product.fromJson(rawJson);
      expect(systemUnderTest.name, '');
    });

    test(
        'GIVEN an product read request without null quantity on json response,WHEN decode json,THEN should return a value not null',
        () {
      rawJson['quantity'] = null;

      var systemUnderTest = Product.fromJson(rawJson);
      expect(systemUnderTest.quantity, 0);
    });

    test(
        'GIVEN an product read request without null id on json response,WHEN decode json,THEN should return value not null',
        () {
      rawJson['price'] = null;

      var systemUnderTest = Product.fromJson(rawJson);
      expect(systemUnderTest.price, 0.0);
    });
  });
}
