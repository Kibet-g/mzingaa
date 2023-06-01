import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;//color for our color variable
  final String text;// the text we pass from the color function
  double size; // the size for our text




  SmallText({Key? key, this.color = const Color(0xFFccc7c5 ),
    required this.text,
    this.size=12,


  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,


      ),
    );
  }
}
