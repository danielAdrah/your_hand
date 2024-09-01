// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme.dart';
import '../reservation/reservation_view.dart';
import 'service_tile.dart';

class ServiceProviderList extends StatefulWidget {
  const ServiceProviderList({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  State<ServiceProviderList> createState() => _ServiceProviderListState();
}

class _ServiceProviderListState extends State<ServiceProviderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ThemeColor.primary,
        title: ZoomIn(
          delay: Duration(milliseconds: 150),
          child: Text(widget.appBarTitle,
              style: TextStyle(color: ThemeColor.white, fontSize: 23)),
        ),
        actions: [
          FadeInRight(
            delay: Duration(milliseconds: 150),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_forward_ios,
                  color: ThemeColor.white, size: 30),
            ),
          ),
        ],
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 13, left: 13, top: 20),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: FadeInDown(
                    delay: Duration(milliseconds: 350),
                    child: InkWell(
                        onTap: () {
                          Get.to(ReservationView());
                        },
                        child: ServiceTile(title: "جليسة أطفال متاحة للعمل")),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
