import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';

class AirConditionerCard extends StatelessWidget {
  const AirConditionerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245,
      height: 260,
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 10,
            lightSource: LightSource.topLeft,
            color: ConstColor.background),
        padding: EdgeInsets.all(ConstSize.defaultPadding),
        drawSurfaceAboveChild: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Ac Icon - Text
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/icons/ac.png",
                    height: 32, width: 37, fit: BoxFit.fill),
                SizedBox(width: ConstSize.defaultPadding),
                Flexible(
                  child: Text(
                    "Air conditioner",
                    style: ConstTextStyle.largeDark
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            //Power Icon - Text
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NeumorphicButton(
                  provideHapticFeedback: true,
                  minDistance: -2,
                  onPressed: () {
                    print("Power Key Pressed.");
                  },
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40)),
                      depth: 5,
                      lightSource: LightSource.topLeft,
                      color: ConstColor.heightLight),
                  margin: EdgeInsets.symmetric(
                      vertical: ConstSize.defaultPadding * 0.8),
                  padding: EdgeInsets.all(ConstSize.defaultPadding * 0.8),
                  child: Image.asset("assets/icons/off.png",
                      color: Colors.white,
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill),
                ),
                const SizedBox(width: 15),
                Flexible(
                  child: Text(
                    "Power on",
                    style: ConstTextStyle.largeDark
                        .copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            //Details Text
            Flexible(
              child: Text(
                "An air conditioner cools your home with a cold indoor coil called the evaporator.",
                style: ConstTextStyle.largeDark.copyWith(
                    fontSize: 14, letterSpacing: 2, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
