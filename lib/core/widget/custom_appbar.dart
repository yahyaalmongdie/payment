
  import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_style.dart';

AppBar customAppBar({required String? title}) {
    return AppBar(backgroundColor: Colors.transparent,
    leading: const Icon(Icons.arrow_back,color: Colors.black,),
      elevation: 0,
      centerTitle: true,
      title: Text(title!,style: AppStyle.style25,),
    );
  }
