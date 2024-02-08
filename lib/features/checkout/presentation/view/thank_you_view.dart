import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_appbar.dart';
import 'package:payment/features/checkout/presentation/view/widget/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(title: ""),
      // body: const ThankYouViewBody() ,
      body: Transform.translate(
        offset: const Offset(0, -16),
        
        child: const ThankYouViewBody()),
    );
  }
}