import 'package:flutter/material.dart';
import 'package:mzingaa/home/main_liqour_page.dart';
import 'package:mzingaa/utils/colors.dart';
import 'package:mzingaa/widgets/icon_and%20text_widget.dart';
import 'package:mzingaa/widgets/small_text.dart';

class LiqourPageBody extends StatefulWidget {
  const LiqourPageBody({Key? key}) : super(key: key);

  @override
  State<LiqourPageBody> createState() => _LiqourPageBodyState();
}

class _LiqourPageBodyState extends State<LiqourPageBody> {
  PageController pageController=PageController(viewportFraction: 0.85 );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320, // Set a specific height for the PageView
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);//to return the scrolling effecr
        },
      ),
    );

  }

  Widget _buildPageItem(int index) {
    //we build the container first with height margin and padding
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? const Color(0xFF800080) : const Color(0xFF4682B4),//decision maker to use a specific color
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/Image/alcohol.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,


            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column (
                //catering for all things to be centered
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Gilbeys", color: Colors.black,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.turquoiseColor, size: 15,)),
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: "1287"),
                      SizedBox(width: 10,),
                      SmallText(text: "comments"),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconAndTextWidget(icon: Icons.circle_sharp,
                          text: "Normal",

                          iconcolor: AppColors.orangeColor,
                      ),

                      IconAndTextWidget(icon: Icons.location_on,
                        text: "1.7KM",

                        iconcolor: AppColors.turquoiseColor,
                      ),
                      IconAndTextWidget(icon: Icons.access_time_rounded,
                        text: "32min",

                        iconcolor: AppColors.redColor,
                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
        )
      ],
    ) ;
  }
}
