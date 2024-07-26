import 'package:chat_app/common/extension/font_extension.dart';
import 'package:chat_app/common/extension/image_extension.dart';
import 'package:chat_app/localization/languages.dart';
import 'package:chat_app/screens/auth/login/login_screen.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:chat_app/widgets/buttons.dart';
import 'package:chat_app/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: pOnBoarding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LKeys.textChatDedicated.tr,
                style: MyTextStyle.gilroyLight(size: 22),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                LKeys.socialMedia.tr,
                style: MyTextStyle.gilroyBold(size: 22),
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        OnBoardingCard(
                            assetName: MyImages.meeting,
                            title: LKeys.chatRoom,
                            desc: LKeys.chatRoomDesc),
                        OnBoardingCard(
                            assetName: MyImages.random,
                            title: LKeys.randomRoom,
                            desc: LKeys.randomRoomDesc),
                        OnBoardingCard(
                            assetName: MyImages.profile,
                            title: LKeys.createChatPost,
                            desc: LKeys.craftYourProfileDesc),
                        OnBoardingCard(
                            assetName: MyImages.quill,
                            title: LKeys.createChatPost,
                            desc: LKeys.createChatPostDesc),
                        CommonButton(
                          text: LKeys.letsStart,
                          onTap: () {
                            // Navigate.to(S)
                            Get.to(() => const LoginScreen());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardingCard extends StatelessWidget {
  final String assetName;
  final String title;
  final String desc;

  const OnBoardingCard(
      {required this.assetName,
      required this.title,
      required this.desc,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: cPrimary.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5), // Shadow position
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: cPrimary,
              child: Image.asset(
                assetName,
                height: 30,
                width: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.tr,
                  style: MyTextStyle.gilroyExtraBold(),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  desc.tr,
                  style: MyTextStyle.gilroyLight(size: 16, color: cLightText),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
