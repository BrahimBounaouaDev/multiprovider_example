import 'package:flutter/foundation.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(id: '1', name: 'منتج 1', price: 10.99),
    Product(id: '2', name: 'منتج 2', price: 20.99),
    Product(id: '3', name: 'منتج 3', price: 30.99),
    Product(id: '4', name: 'منتج 4', price: 40.99),
  ];

  List<Product> get products => _products;
}


