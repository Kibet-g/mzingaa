// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mzingaa/home/liqour_page_body.dart';
import 'package:mzingaa/utils/colors.dart';
import 'package:mzingaa/utils/dimensions.dart';
import 'package:mzingaa/widgets/small_text.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;

  const BigText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

class MainLiquorPage extends StatefulWidget {
  const MainLiquorPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainLiquorPageState createState() => _MainLiquorPageState();
}

class _MainLiquorPageState extends State<MainLiquorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //here should not be hard coded also for device compatibility
            margin:  EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
            padding:  EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BigText(text: "Kenya", color: AppColors.turquoiseColor),
                    Row(
                      children: [
                        SmallText(text: "Nairobi", color: Colors.black54),
                        const Icon(Icons.arrow_drop_down_rounded),//here is our small icon
                      ],
                    ),
                  ],
                ),
                Container(
                  width: Dimensions.height45,
                  height: Dimensions.height45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                  child:  Icon(Icons.search, color: Colors.white, size:Dimensions.iconsize24),
                ),
              ],
            ),
          ),
          LiqourPageBody(),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainLiquorPage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
