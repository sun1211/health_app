import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screen/home/components/body.dart';
import 'package:health_app/screen/home/components/bottom_navigation.dart';
import 'package:health_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: mainBgColor,
      body: Body(),
      bottomNavigationBar: MyBottonNav(),
    );
  }
}
