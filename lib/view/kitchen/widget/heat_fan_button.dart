import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:myhomecontroller/view/widget/image_button.dart';

class HeatFanButton extends StatelessWidget {
  HeatFanButton({
    Key? key,
  }) : super(key: key);

  Function? onTap;
  String? imageName;
  String? buttonName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245,
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ImageButton(
                buttonName: "Heat",
                imageName: "assets/icons/sun.png",
                onTap: () {
                  print("heat");
                }),
          ),
          SizedBox(width: ConstSize.defaultPadding),
          Expanded(
            child: ImageButton(
                buttonName: "Heat",
                imageName: "assets/icons/fan.png",
                color: ConstColor.background,
                onTap: () {
                  print("Fan");
                }),
          )
        ],
      ),
    );
  }
}
