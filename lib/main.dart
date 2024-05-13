import 'package:flutter/material.dart';
import 'package:nati/intor.dart';
import 'package:nati/modeles/cart.dart';
import 'package:nati/sign%20page/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      
      create:(context) => Cart(),
      builder:(context,child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogIn(),
      ),

      
    
    );
    
  }
}