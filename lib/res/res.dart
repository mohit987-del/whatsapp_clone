import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/screens.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,cons){
      if(cons.maxWidth>900){
        //web layout
        return WebScreen();
      }else{
        //mobile layout
        return MobileScreen();
      }

    });
  }
}