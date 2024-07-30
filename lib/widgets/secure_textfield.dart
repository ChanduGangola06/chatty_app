import 'package:chat_app/utils/constants.dart';
import 'package:chat_app/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class SecureTextField extends StatefulWidget {
  final String placeHolder;
  final TextEditingController controller;

  const SecureTextField(
      {super.key, required this.placeHolder, required this.controller});

  @override
  State<SecureTextField> createState() => _SecureTextFieldState();
}

class _SecureTextFieldState extends State<SecureTextField> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyTextField(
          controller: widget.controller,
          placeHolder: widget.placeHolder,
          obscureText: isShowPassword,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 45,
          child: Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                child: Icon(
                  isShowPassword
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded,
                  color: cLightText,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
