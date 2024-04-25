import 'package:chatbot/chatbot/chatbot_controller.dart';
import 'package:chatbot/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../conversation/conversation_screen.dart';
import '../global.dart';
import '../subscribe/subscribe_screen.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {

  final chatbotController = Get.put(ChatbotController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: AppColors.backgroundColor,
          child: GetBuilder<ChatbotController>(
            init: ChatbotController(),
            builder: (cont) {
              chatbotController.context = context;
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      15.heightBox,
                      InkWell(
                        onTap: (){
                          Get.to(const ConversationScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.greyColor,
                                ),
                                borderRadius:
                                BorderRadius.circular(
                                    10)),
                            child: Row(
                              children: [
                                Image.asset(ImageConstanst.user),
                                10.widthBox,
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Hey John!',
                                      style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white
                                      ),),
                                      Text('Welcome to Musemind',
                                        style: TextStyle(
                                            fontFamily: AppConstants.fontFamily,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: const Color(0xFF949BA5)
                                        ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          colors: [Color(0xffEE4365), Color(0xffFCE6A7)]),
                                      borderRadius:
                                      BorderRadius.circular(
                                          20)),
                                  child: Text('10 entries',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),),
                                )
                              ],
                            )),
                      ),

                      30.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Explain',
                            style: TextStyle(
                                fontFamily: AppConstants.fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white
                            ),),
                          Text('(Examples)',
                            style: TextStyle(
                                fontFamily: AppConstants.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.greyColor
                            ),),

                        ],
                      ),

                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Quantum\ncomputing in\nsimple terms',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          8.widthBox,
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Creative\nideas for a\nbirthday?',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      20.heightBox,
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              onTap: () {
                               Get.to(const SubscribeScreen());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [Color(0xffEE4365), Color(0xffFCE6A7)]),
                                    borderRadius:
                                    BorderRadius.circular(
                                        20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(ImageConstanst.addImg),
                                    10.heightBox,
                                    Text('Select a Photo',
                                      style: TextStyle(
                                          fontFamily: AppConstants.fontFamily,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white
                                      ),),
                                    5.heightBox,
                                    Text('What is this\nimage about?',
                                      style: TextStyle(
                                          fontFamily: AppConstants.fontFamily,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Colors.white
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                            10.widthBox,
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [Color(0xffEE4365), Color(0xffFCE6A7)]),
                                  borderRadius:
                                  BorderRadius.circular(
                                      20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(ImageConstanst.icDoc),
                                  10.heightBox,
                                  Text('Pick a PDF File',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.white
                                    ),),
                                  5.heightBox,
                                  Text('Summarize\nthis PDF File',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),),
                                ],
                              ),
                            ),
                            10.widthBox,
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [Color(0xffEE4365), Color(0xffFCE6A7)]),
                                  borderRadius:
                                  BorderRadius.circular(
                                      20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(ImageConstanst.icLink),
                                  10.heightBox,
                                  Text('Add URL',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.white
                                    ),),
                                  5.heightBox,
                                  Text('Summarize\nthis web Page',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),),
                                ],
                              ),
                            ),
                            10.widthBox,
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [Color(0xffEE4365), Color(0xffFCE6A7)]),
                                  borderRadius:
                                  BorderRadius.circular(
                                      20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(ImageConstanst.icLink),
                                  10.heightBox,
                                  Text('Add Text',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.white
                                    ),),
                                  5.heightBox,
                                  Text('Generate Image from Text',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      15.heightBox,
                      Text('Write & Edit',
                        style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white
                        ),),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('How make an\nHTTP request in\nJavascript?',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          8.widthBox,
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Craft Compelling\nTales with Ease\n',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      10.heightBox,
                      Text('Translate',
                        style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white
                        ),),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Write Your Text to\nTranslate\n',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          8.widthBox,
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Translate\nyour Email\n',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),


                      10.heightBox,
                      Text('Ask to Chatbot',
                        style: TextStyle(
                            fontFamily: AppConstants.fontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white
                        ),),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Hello! How are\nyou? How can i\nhelp you?',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          8.widthBox,
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Can you write\nemail about\nLeave?',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  const Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      20.heightBox,
                      Row(
                        children: [
                          SvgPicture.asset(ImageConstanst.plus),
                          15.widthBox,
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.greyColor,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Summarise this web page ',
                                    style: TextStyle(
                                        fontFamily: AppConstants.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: const Color(0xFF949BA5)
                                    ),),
                                  SvgPicture.asset(ImageConstanst.send),
                                ],
                              ),
                            ),
                          )

                        ],
                      )




                    ],
                  ),
                ),
              );
            },
          ),
        )
      ),
    );
  }
}
