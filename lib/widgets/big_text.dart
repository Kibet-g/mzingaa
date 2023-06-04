import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
   Color? color;//color for our color variable
  final String text;// the text we pass from the color function
  double size; // the size for our text
  TextOverflow overflow; //To add the ..function for our texts to be continous



   BigText({Key? key, this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size=20,
    this.overflow=TextOverflow.ellipsis// the default property for ..function

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400

      ),
    );
  }
}
