import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';

class FanSpeed extends StatefulWidget {
  const FanSpeed({
    Key? key,
  }) : super(key: key);

  @override
  State<FanSpeed> createState() => _FanSpeedState();
}

class _FanSpeedState extends State<FanSpeed> {
  double sliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fan Speed",
          style: ConstTextStyle.mediumDark,
        ),
        SizedBox(height: ConstSize.defaultPadding * 0.5),
        NeumorphicSlider(
          height: 15,
          min: 5,
          max: 50,
          value: sliderValue,
          style: const SliderStyle(
            depth: -1,
            disableDepth: false,
            lightSource: LightSource.bottomRight,
          ),
          onChanged: (newValue) {
            setState(() => sliderValue = newValue);
          },
          thumb: SizedBox(
            height: 22,
            width: 45,
            child: Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 1,
                  lightSource: LightSource.right,
                  color: ConstColor.backgroundLight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i in [1, 2, 3])
                    SizedBox(
                      height: 10,
                      width: 4,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12)),
                            color: ConstColor.heightLight2),
                      ),
                    )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
