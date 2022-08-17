import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HighLowButton extends StatefulWidget {
  const HighLowButton({
    Key? key,
  }) : super(key: key);

  @override
  State<HighLowButton> createState() => _HighLowButtonState();
}

class _HighLowButtonState extends State<HighLowButton> {
  double heatValue = 21;

  @override
  Widget build(BuildContext context) {
    print(heatValue);
    return Column(
      children: [
        SizedBox(
          width: 245,
          height: 385,
          child: Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: ConstColor.background),
              padding: EdgeInsets.all(ConstSize.defaultPadding),
              drawSurfaceAboveChild: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circulerProcessWidget(heatValue),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NeumorphicButton(
                          provideHapticFeedback: true,
                          minDistance: -2,
                          onPressed: () {
                            if (heatValue > 16) setState(() => heatValue--);
                          },
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(40)),
                              depth: 5,
                              lightSource: LightSource.topLeft,
                              shadowLightColor: Colors.grey,
                              color: ConstColor.backgroundLight),
                          margin: EdgeInsets.symmetric(
                              vertical: ConstSize.defaultPadding * 0.6),
                          padding:
                              EdgeInsets.all(ConstSize.defaultPadding * 0.6),
                          child: const Icon(
                            Icons.remove,
                            size: 30,
                            color: ConstColor.darkGray,
                          ),
                        ),
                        NeumorphicButton(
                          provideHapticFeedback: true,
                          minDistance: -2,
                          onPressed: () {
                            if (heatValue < 30) setState(() => heatValue++);
                          },
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(40)),
                              depth: 5,
                              lightSource: LightSource.topLeft,
                              shadowLightColor: Colors.grey,
                              color: ConstColor.backgroundLight),
                          margin: EdgeInsets.symmetric(
                              vertical: ConstSize.defaultPadding * 0.6),
                          padding:
                              EdgeInsets.all(ConstSize.defaultPadding * 0.6),
                          child: const Icon(
                            Icons.add,
                            size: 30,
                            color: ConstColor.darkGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }

  Expanded circulerProcessWidget(double heatValue) {
    return Expanded(
      flex: 3,
      // height: 220,
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 15,
            maximum: 30,
            endAngle: 270,
            interval: 1.5,
            tickOffset: 10,
            startAngle: 270,
            showLabels: false,
            radiusFactor: 1.01,
            ticksPosition: ElementsPosition.outside,
            majorTickStyle: const MajorTickStyle(color: Colors.white),
            minorTickStyle: const MinorTickStyle(color: Colors.transparent),
            axisLineStyle: const AxisLineStyle(
                color: ConstColor.backgroundLight, thickness: 20),
            pointers: <GaugePointer>[
              RangePointer(
                color: ConstColor.heightLight,
                value: heatValue,
                width: 20,
                enableDragging: true,
                cornerStyle: CornerStyle.endCurve,
                enableAnimation: true,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                // horizontalAlignment: GaugeAlignment.near,
                positionFactor: 0.1,
                axisValue: 3,
                widget: NeumorphicButton(
                  provideHapticFeedback: true,
                  minDistance: -2,
                  onPressed: () {
                    print("Power Key Pressed.");
                  },
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(70)),
                      depth: 3,
                      intensity: 2,
                      shadowLightColor: Colors.grey,
                      color: ConstColor.backgroundLight),
                  margin: EdgeInsets.symmetric(
                      vertical: ConstSize.defaultPadding * 0.1),
                  padding: EdgeInsets.all(ConstSize.defaultPadding * 1),
                  child: Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 70,
                    child: Text(
                      " ${heatValue.toInt()}°",
                      style: ConstTextStyle.largeDark.copyWith(
                        fontSize: 33,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
