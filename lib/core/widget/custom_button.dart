import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.textBtn, this.onTap});
  final String textBtn;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 73,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff34a853),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
              textBtn,
          style: AppStyle.style22,
        )),
      ),
    );
  }
}
