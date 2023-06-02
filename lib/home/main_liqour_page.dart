import 'package:flutter/material.dart';
import 'package:mzingaa/utils/colors.dart';

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
  _MainLiquorPageState createState() => _MainLiquorPageState();
}

class _MainLiquorPageState extends State<MainLiquorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    BigText(text: "Kenya", color: AppColors.mainColor),
                    const Text("House"),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
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
