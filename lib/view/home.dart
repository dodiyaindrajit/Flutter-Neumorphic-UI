import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:myhomecontroller/view/kitchen/kitchen.dart';
import 'package:myhomecontroller/view/widget/image_button.dart';

import '../constant/size.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double sideMenuWidth = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.background,
      body: Row(
        children: [
          SideMenu(sideMenuWidth: sideMenuWidth),
          const Expanded(child: KitchenScreen()),
        ],
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.sideMenuWidth,
  }) : super(key: key);

  final double sideMenuWidth;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: sideMenuWidth,
      height: MediaQuery.of(context).size.height,
      duration: const Duration(seconds: 1),
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(0)),
            depth: 20,
            lightSource: LightSource.left,
            intensity: 0.9,
            color: ConstColor.background),
        padding: EdgeInsets.all(ConstSize.defaultPadding),
        drawSurfaceAboveChild: false,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "4 Rooms",
                  textAlign: TextAlign.center,
                  style: ConstTextStyle.mediumDark,
                ),
              ),
              for (ButtonData i in DummyData().roomButtonList)
                ImageButton(
                    imageName: i.imageName,
                    onTap: i.onTap,
                    color: i.color,
                    isTitle: false),
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "+ Add new room",
                  textAlign: TextAlign.center,
                  style: ConstTextStyle.mediumDark,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonData {
  String imageName;
  Color color;
  Function onTap;
  ButtonData(this.imageName, this.color, this.onTap);
}

class DummyData {
  List<ButtonData> roomButtonList = [
    ButtonData("assets/icons/sofa.png", ConstColor.backgroundLight, () {}),
    ButtonData("assets/icons/bed.png", ConstColor.backgroundLight, () {}),
    ButtonData("assets/icons/kitchen.png", ConstColor.heightLight, () {}),
    ButtonData("assets/icons/bath.png", ConstColor.backgroundLight, () {}),
  ];
}
