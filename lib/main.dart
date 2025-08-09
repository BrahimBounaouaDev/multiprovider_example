import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import './providers/product_provider.dart';
import './providers/cart_provider.dart';
import './providers/order_provider.dart';
import './screens/home_screen.dart';
import './screens/product_list_screen.dart';
import './screens/cart_screen.dart';
import './screens/orders_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrintRebuildDirtyWidgets = false;
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'متجر إلكتروني',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      routes: {
        '/products': (ctx) => const ProductListScreen(),
        '/cart': (ctx) => const CartScreen(),
        '/orders': (ctx) => const OrdersScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}