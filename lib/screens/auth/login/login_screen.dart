import 'package:chat_app/common/extension/image_extension.dart';
import 'package:chat_app/localization/languages.dart';
import 'package:chat_app/screens/auth/login/widgets/login_button.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:chat_app/widgets/logo_tag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/extension/font_extension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const LogoTag(),
            const Spacer(),
            const TopBarForLogin(
              titleStart: LKeys.signInTo,
              titleEnd: LKeys.continue1,
              alignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 6),
            Text(
              textAlign: TextAlign.center,
              LKeys.signInDesc.tr,
              style: MyTextStyle.gilroyLight(color: cLightText, size: 18),
            ),
            const Spacer(),
            Column(
              children: [
                LoginButton(
                  text: LKeys.signInWithGoogle,
                  assetName: MyImages.google,
                  onTap: () {},
                ),
                LoginButton(
                  text: LKeys.signInWithEmail,
                  assetName: MyImages.email,
                  onTap: () {},
                ),
                (GetPlatform.isIOS)
                    ? LoginButton(
                        text: LKeys.signInWithApple,
                        assetName: MyImages.apple,
                        onTap: () {},
                      )
                    : Container(),
              ],
            ),
            const Spacer(),
            Text(
              textAlign: TextAlign.center,
              LKeys.bySelectingAgree.tr,
              style: MyTextStyle.gilroyLight(color: cLightText, size: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LKeys.iAgreeTo.tr,
                  style: MyTextStyle.gilroyLight(color: cLightText, size: 14),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    LKeys.termsOfUse.tr,
                    style:
                        MyTextStyle.gilroySemiBold(color: cPrimary, size: 14),
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  LKeys.and.tr,
                  style: MyTextStyle.gilroyLight(color: cLightText, size: 14),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    LKeys.privacyPolicy.tr,
                    style:
                        MyTextStyle.gilroySemiBold(color: cPrimary, size: 14),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
