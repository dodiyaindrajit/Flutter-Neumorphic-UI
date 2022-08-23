import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';

class BottomToggleButton extends StatefulWidget {
  const BottomToggleButton({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomToggleButton> createState() => _BottomToggleButtonState();
}

class _BottomToggleButtonState extends State<BottomToggleButton> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Neumorphic(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(
              const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            color: ConstColor.backgroundLight,
            surfaceIntensity: 0,
            depth: 10,
            lightSource: LightSource.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 5,
              width: 150,
              child: Neumorphic(
                padding: const EdgeInsets.all(35),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(30),
                  ),
                  color: ConstColor.background,
                  depth: -1,
                  lightSource: LightSource.bottom,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: NeumorphicToggle(
                style: NeumorphicToggleStyle(
                  lightSource: LightSource.top,
                  animateOpacity: true,
                  backgroundColor: ConstColor.background,
                  borderRadius: BorderRadius.circular(30),
                ),
                // displayForegroundOnlyIfSelected: true,
                padding: const EdgeInsets.all(5),
                selectedIndex: selectedIndex,
                thumb: Container(
                  color: ConstColor.heightLight2,
                ),
                onChanged: (index) {
                  setState(() => selectedIndex = index);
                },
                children: [
                  for (var i in ["Temperature", "Light", "Devices"])
                    ToggleElement(
                      background: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              i,
                              textAlign: TextAlign.center,
                              style: ConstTextStyle.mediumDark,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      foreground: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            i,
                            textAlign: TextAlign.center,
                            style: ConstTextStyle.mediumDark.copyWith(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: ConstSize.defaultPadding * 0.1)
          ],
        ),
      ),
    );
  }
}
