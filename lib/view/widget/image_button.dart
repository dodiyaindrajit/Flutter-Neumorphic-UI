import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';

class ImageButton extends StatelessWidget {
  const ImageButton(
      {Key? key,
      required this.onTap,
      required this.imageName,
      this.buttonName = "Name",
      this.color = ConstColor.heightLight,
      this.isTitle = true,
      this.isDepthPositive = false})
      : super(key: key);

  final Function onTap;
  final String imageName;
  final String buttonName;
  final bool isTitle;
  final Color color;
  final bool isDepthPositive;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      drawSurfaceAboveChild: true,
      provideHapticFeedback: true,
      pressed: true,
      minDistance: -3,
      onPressed: () => onTap(),
      style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: isDepthPositive ? -3 : 3,
          intensity: 0.9,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white.withOpacity(0.8),
          color: color),
      margin:
          const EdgeInsets.symmetric(vertical: ConstSize.defaultPadding * 0.8),
      padding: const EdgeInsets.all(ConstSize.defaultPadding * 0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imageName, height: 45, width: 45, fit: BoxFit.contain),
          if (isTitle) const SizedBox(height: ConstSize.defaultPadding / 2),
          if (isTitle) Text(buttonName, style: ConstTextStyle.mediumDark),
        ],
      ),
    );
  }
}
