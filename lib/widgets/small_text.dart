// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;//color for our color variable
  final String text;// the text we pass from the color function
  double size; // the size for our text
  double height;




  SmallText({Key? key, this.color = const Color(0xFF89dad0),//Default color
    required this.text,
    this.size=12,
    this.height=1.2


  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          height: height



      ),
    );
  }
}
