
import 'package:flutter/foundation.dart';
import '../models/order.dart';
import '../models/product.dart';

class OrderProvider with ChangeNotifier {
  final List<Order> _orders = [];

  List<Order> get orders => _orders;

  void createOrder(List<Product> items) {
    _orders.add(Order(
      id: DateTime.now().toString(),
      items: List.from(items),
      total: items.fold(0, (sum, item) => sum + item.price),
      date: DateTime.now(),
    ));
    notifyListeners();
  }
}
