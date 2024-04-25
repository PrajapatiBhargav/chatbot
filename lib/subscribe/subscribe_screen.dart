import 'package:chatbot/extensions.dart';
import 'package:chatbot/subscribe/subscribe_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../ClipShadowPath.dart';
import '../global.dart';

class SubscribeScreen extends StatefulWidget {
  const SubscribeScreen({super.key});

  @override
  State<SubscribeScreen> createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
  final subscribeController = Get.put(SubscribeController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                subscribeController.exitScreen();
              },
              child: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
                size: 20,
              )),
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          titleSpacing: 0.0,
          title: Text('Subscription',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
        ),
          body:Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: AppColors.backgroundColor,
            child: GetBuilder<SubscribeController>(
              init: SubscribeController(),
              builder: (cont) {
                subscribeController.context = context;
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SvgPicture.asset(ImageConstanst.star),
                      ClipShadowPath(
                        clipper: _MyClipper(100),
                        shadow: const Shadow(
                          blurRadius: 0,
                          color: AppColors.backgroundColor,
                          offset: Offset(0, 10),
                        ),
                        child: SizedBox(
                          height: 470,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.greyColor,
                                ),
                                borderRadius:
                                BorderRadius.circular(
                                    10)),
                            //color: AppColors.backgroundColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:  [
                                20.heightBox,
                                Text('Upgrade to pro and\ncharm like a boss',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: AppConstants.fontFamily,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                      color: Colors.white),),


                                10.heightBox,
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageConstanst.check),
                                          5.widthBox,
                                          Text('Unlimited question and answers',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: AppConstants.fontFamily,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Colors.white),),
                                        ],
                                      ),

                                      10.heightBox,
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageConstanst.check),
                                          5.widthBox,
                                          Text('Powered by cutting edge AI',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: AppConstants.fontFamily,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Colors.white),),
                                        ],
                                      ),

                                      10.heightBox,
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageConstanst.check),
                                          5.widthBox,
                                          Text('Faster respond speed',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: AppConstants.fontFamily,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Colors.white),),
                                        ],
                                      ),

                                      10.heightBox,
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageConstanst.check),
                                          5.widthBox,
                                          Text('Higher word limit',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: AppConstants.fontFamily,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Colors.white),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                50.heightBox,

                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    color: AppColors.greyColor,
                                      borderRadius:
                                      BorderRadius.circular(
                                          10)),
                                  child: Text('3 days free + then weekly',
                                        style: TextStyle(
                                            fontFamily: AppConstants.fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white
                                        ),),
                                ),

                                10.heightBox,
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: AppColors.greyColor,
                                      borderRadius:
                                      BorderRadius.circular(
                                          10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Weekly',
                                        style: TextStyle(
                                            fontFamily: AppConstants.fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white
                                        ),),
                                      RichText(
                                          text: TextSpan(
                                              text: '\$8.99/',
                                              style: TextStyle(
                                                  fontFamily: AppConstants.fontFamily,
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                              children: [
                                                TextSpan(
                                                    text: "Week",
                                                    style: TextStyle(
                                                        fontFamily: AppConstants.fontFamily,
                                                        fontSize:12,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w400)),
                                              ])),
                                    ],
                                  ),
                                ),

                                10.heightBox,
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: AppColors.greyColor,
                                      borderRadius:
                                      BorderRadius.circular(
                                          10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Yearly',
                                        style: TextStyle(
                                            fontFamily: AppConstants.fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white
                                        ),),
                                      RichText(
                                          text: TextSpan(
                                              text: '\$49.99/',
                                              style: TextStyle(
                                                  fontFamily: AppConstants.fontFamily,
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                              children: [
                                                TextSpan(
                                                    text: "Year",
                                                    style: TextStyle(
                                                        fontFamily: AppConstants.fontFamily,
                                                        fontSize:12,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w400)),
                                              ])),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),

                      20.heightBox,
                      Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xffEE4365), Color(0xffFCE6A7)]),
                            borderRadius:
                            BorderRadius.circular(
                                10)),
                        child:
                            Text('Subscribe',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: AppConstants.fontFamily,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white
                              ),),

                      ),

                      10.heightBox,
                      Text('Restore purchase',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white
                        ),),
                    ],
                  ),
                );
              },
            ),
          )
      ),
    );
  }
}


class _MyClipper extends CustomClipper<Path> {
  final double space;

  _MyClipper(this.space);

  @override
  Path getClip(Size size) {
    final path = Path();
    final halfWidth = size.width / 2;
    final halfSpace = space / 2;
    final curve = space / 6;
    final height = halfSpace / 1.4;
    path.lineTo(halfWidth - halfSpace, 0);
    path.cubicTo(halfWidth - halfSpace, 0, halfWidth - halfSpace + curve,
        height, halfWidth, height);

    path.cubicTo(halfWidth, height, halfWidth + halfSpace - curve, height,
        halfWidth + halfSpace, 0);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

