import 'package:flutter/material.dart';

class LiqourPageBody extends StatefulWidget {
  const LiqourPageBody({Key? key}) : super(key: key);

  @override
  State<LiqourPageBody> createState() => _LiqourPageBodyState();
}

class _LiqourPageBodyState extends State<LiqourPageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Set a specific height for the PageView
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF69c5df),
      ),
    );
  }
}
