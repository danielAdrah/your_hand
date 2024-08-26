// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({super.key, required this.text, required this.onTap});
  void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        width: 130,
        height: 50,
        decoration: BoxDecoration(
          color: ThemeColor.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500))),
      ),
    );
  }
}
