import 'package:chatbot/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../global.dart';
import 'conversation_controller.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  final conversationController = Get.put(ConversationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  conversationController.exitScreen();
                },
                child: const Icon(
                  Icons.arrow_back_ios_sharp,
                  color: Colors.white,
                  size: 20,
                )),
            backgroundColor: AppColors.backgroundColor,
            centerTitle: true,
            titleSpacing: 0.0,
            title: Text('Conversation',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            actions: [
              SvgPicture.asset(ImageConstanst.mute),
              10.widthBox,
              SvgPicture.asset(ImageConstanst.share),
              10.widthBox
            ],
          ),
          body:Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: AppColors.backgroundColor,
            child: GetBuilder<ConversationController>(
              init: ConversationController(),
              builder: (cont) {
                conversationController.context = context;
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(ImageConstanst.mango),
                      10.heightBox,

                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyColor,
                            ),
                            borderRadius:
                            BorderRadius.circular(
                                10)),
                       child: Column(
                         children: [
                           Text('Lorem Ipsum is simply dummy text of the printing.',
                               style: TextStyle(
                                   fontSize: 14,
                                   fontFamily: AppConstants.fontFamily,
                                   fontWeight: FontWeight.w400,
                                   color: Colors.white)),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Container(
                                 padding: EdgeInsets.all(5),
                                 decoration: BoxDecoration(
                                     border: Border.all(
                                       color: AppColors.greyColor,
                                     ),
                                     borderRadius:
                                     BorderRadius.circular(
                                         10)),
                                 child: Row(
                                   children: [
                                     SvgPicture.asset(ImageConstanst.restore),
                                     Text('Regenerate',
                                         style: TextStyle(
                                             fontSize: 12,
                                             fontFamily: AppConstants.fontFamily,
                                             fontWeight: FontWeight.w600,
                                             color: Colors.white)),
                                   ],
                                 ),
                               ),
                               10.widthBox,
                               Container(
                                 padding: EdgeInsets.all(5),
                                 decoration: BoxDecoration(
                                     border: Border.all(
                                       color: AppColors.greyColor,
                                     ),
                                     borderRadius:
                                     BorderRadius.circular(
                                         10)),
                                 child: Row(
                                   children: [
                                     SvgPicture.asset(ImageConstanst.copy),
                                     Text('Copy',
                                         style: TextStyle(
                                             fontSize: 12,
                                             fontFamily: AppConstants.fontFamily,
                                             fontWeight: FontWeight.w600,
                                             color: Colors.white)),
                                   ],
                                 ),
                               )
                             ],
                           )
                         ],
                       ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyColor,
                            ),
                            borderRadius:
                            BorderRadius.circular(
                                8)),
                        child: Row(
                          children: [
                            Text('Write a message',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: AppConstants.fontFamily,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff949BA5))),
                            SvgPicture.asset(ImageConstanst.send1),
                          ],
                        ),
                      ),
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
