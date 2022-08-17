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
      this.isTitle = true})
      : super(key: key);

  final Function? onTap;
  final String? imageName;
  final String buttonName;
  final bool isTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      drawSurfaceAboveChild: true,
      provideHapticFeedback: true,
      pressed: true,
      minDistance: -3,
      onPressed: () => onTap,
      style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: 5,
          lightSource: LightSource.topLeft,
          color: color),
      margin: EdgeInsets.symmetric(vertical: ConstSize.defaultPadding * 0.8),
      padding: EdgeInsets.all(ConstSize.defaultPadding * 0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imageName!, height: 45, width: 45, fit: BoxFit.contain),
          if (isTitle) SizedBox(height: ConstSize.defaultPadding / 2),
          if (isTitle) Text(buttonName, style: ConstTextStyle.mediumDark),
        ],
      ),
    );
  }
}
