import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_appbar.dart';
import 'package:payment/features/checkout/presentation/view/widget/my_card_body_view.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
      body: const MyCardBodyViewBody(),
    );
  }
}
