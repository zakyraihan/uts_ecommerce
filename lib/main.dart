import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter/controller/cart_provider.dart';
import 'package:uts_flutter/controller/favorite_provider.dart';
import 'package:uts_flutter/controller/mainscreen_provider.dart';
import 'package:uts_flutter/view/ui/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainScreenNotifier()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => FavoriteProvider())
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
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
