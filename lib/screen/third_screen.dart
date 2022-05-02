import 'package:dex_text/widgets/widgets3/dex_widget.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({
    Key? key,
  }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            builder: (context, snapshot) { 
              return DexWidget();
             }, 
    );
  }
}