import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './widgets/product_grid.dart';
import '../providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => Products())],
        child: const MaterialApp(home: Scaffold(body: ProductGrid())));
  }
}
