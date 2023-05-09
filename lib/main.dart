import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stt_mgt/providers/product.dart';
import 'package:stt_mgt/providers/products.dart';
import 'package:stt_mgt/widgets/product-grid.dart';
import 'package:stt_mgt/widgets/product-item.dart';

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
        child: MaterialApp(home: Scaffold(body: ProductGrid())));
  }
}
