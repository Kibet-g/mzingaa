import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainLiqourPage extends StatefulWidget { //our stateful class which will contain a header and body section with containers
  const MainLiqourPage({Key? key}) : super(key: key);

  @override
  MainLiqourPageState createState() => MainLiqourPageState();
}

class MainLiqourPageState extends State<MainLiqourPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Text("Country"),//the text for our header part
                Text("City")

              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(//we specify for the box decoration here
                borderRadius: BorderRadius.circular(15),//decoration for our container class
                color: Colors.blue,//color for our container class
              ),
            )
          ],
        ),
      ),
    );
  }
}
