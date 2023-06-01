import 'package:flutter/material.dart';
import 'package:mzingaa/utils/colors.dart';
import 'package:mzingaa/widgets/big_text.dart';

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
            margin: const EdgeInsets.only(top:45,bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),

            child: Row(
              children: [
                Column(
                  children: const [
                    BigText(text: "Kenya", color: AppColors.mainColor), // The text for our header part also
                    Text("House"), // The text for our header part also
                  ],
                ),
 //DECORATE OUR BACKGROUND COLOR FOR OUR CONTAINER CLASS
                Center(
                  child: Container(
                    width: 45,
                    height: 45,//This will be able to change our background color
                    decoration: BoxDecoration(
                      // Decoration for our container class
                      borderRadius: BorderRadius.circular(15), // Rounded corners for the container
                      color:AppColors.mainColor, //Calling our members class using the import function
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainLiquorPage(), // Corrected the class name here
    );
  }
}

void main() {
  runApp(const MyApp());
}
