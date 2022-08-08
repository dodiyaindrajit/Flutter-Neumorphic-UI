import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/text_style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstConst.background,
      appBar: AppBar(
          leading: NeumorphicIcon(
            Icons.add_circle,
            style: NeumorphicStyle(color: Colors.black),
            size: 40,
          ),
          centerTitle: true,
          title: Text(
            "Your Home",
            style: ConstTextStyle.largeDark,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Kitchen",
              style: ConstTextStyle.largeDark,
            ),
          ],
        ),
      ),
    );
  }
}
