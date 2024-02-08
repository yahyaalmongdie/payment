import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/view/my_cart_view.dart';

void main() {
  runApp(const CheckOutApp());
}
class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

debugShowCheckedModeBanner: false,
      home: MyCartView(),

    );
  }
}
