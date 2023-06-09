import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mzingaa/home/main_liqour_page.dart';
import 'package:mzingaa/utils/colors.dart';
import 'package:mzingaa/utils/dimensions.dart';
import 'package:mzingaa/widgets/icon_and%20text_widget.dart';
import 'package:mzingaa/widgets/small_text.dart';

class LiqourPageBody extends StatefulWidget {
  const LiqourPageBody({Key? key}) : super(key: key);

  @override
  State<LiqourPageBody> createState() => _LiqourPageBodyState();
}

class _LiqourPageBodyState extends State<LiqourPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double currPageValue = 0.0;
  double scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currPageValue = pageController.page!;
        print("Current value is " + currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position.toInt());
            },
          ),
        ),
        //dots
        // FLUTTER PACKAGE FOR OUR DOT SCROLLING EFFECT
        new DotsIndicator(
          dotsCount: 5,
          position: currPageValue.toInt(),
          decorator: DotsDecorator(
            activeColor: AppColors.turquoiseColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        //popular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left:Dimensions.width30),
          child: Row(
            children: [
              BigText(text: "Popular", color: Colors.black26,),
              Container(
                child:BigText(text: ".",color: Colors.black26,) ,
              ),
              SizedBox(width: Dimensions.width10,),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == currPageValue.floor()) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() + 1) {
      var currScale = scaleFactor + (currPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() - 1) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _height * (1 - scaleFactor) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? const Color(0xFF800080) : const Color(0xFF4682B4),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/Image/alcohol.jpg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFe8e8e8),
                    blurRadius: 5.0, // to create a shadow in our container
                    offset: const Offset(-5, -5),
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Gilbeys", color: Colors.black),
                    SizedBox(height: Dimensions.height10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                                (index) => Icon(
                              Icons.star,
                              color: AppColors.turquoiseColor,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SmallText(text: "4.5"),
                        SizedBox(width: 10),
                        SmallText(text: "1287"),
                        SizedBox(width: 10),
                        SmallText(text: "comments"),
                      ],
                    ),
                    SizedBox(height: Dimensions.height20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconcolor: AppColors.orangeColor,
                        ),
                        IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "1.7KM",
                          iconcolor: AppColors.turquoiseColor,
                        ),
                        IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          iconcolor: AppColors.redColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
