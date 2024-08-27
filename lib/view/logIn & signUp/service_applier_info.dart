// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/primary_button.dart';
import '../../common_widgets/textField.dart';
import '../../common_widgets/textField_area.dart';
import '../../common_widgets/upper_logo.dart';
import '../../theme.dart';
import '../service_applier_homePage/service_applier_home.dart';
import 'logIn.dart';

class ServiceApplierInfo extends StatefulWidget {
  const ServiceApplierInfo({super.key});

  @override
  State<ServiceApplierInfo> createState() => _ServiceApplierInfoState();
}

class _ServiceApplierInfoState extends State<ServiceApplierInfo> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeInDown(
            delay: Duration(milliseconds: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInDown(
                    delay: Duration(milliseconds: 300),
                    child: UpperLogo(width: width, height: height)),
                SizedBox(height: height * 0.04),
                FadeInDown(
                  delay: Duration(milliseconds: 320),
                  child: Text(
                    "إنشاء حساب مقدم الخدمة",
                    style: TextStyle(
                        color: ThemeColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomTextFieldArea(
                    icon: Text(""),
                    onIconPressed: () {},
                    title: "نبذة عنك",
                    controller: TextEditingController(),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            //here we will put the method responsible for select a file
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 236, 161, 213),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            child: Text(
                              // only for now im displaying this text nut we will display the selected file
                              "اختر ملف",
                              style: TextStyle(color: ThemeColor.black),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          decoration: BoxDecoration(
                              color: ThemeColor.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Text(
                            "لم يتم اختيار ملف",
                            style: TextStyle(color: ThemeColor.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Text(
                      "CV",
                      style: TextStyle(
                          color: ThemeColor.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        "اختر نوع الخدمة التي تقدمها",
                        style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: 220,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ThemeColor.white,
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(height: 25),
                PrimaryButton(
                  text: "إكمال",
                  onTap: () {
                    Get.to(LogIn(
                      onTap: () {
                        Get.to(ServiceApplierPage());
                      },
                    ));
                  },
                  height: 50,
                  width: 190,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
