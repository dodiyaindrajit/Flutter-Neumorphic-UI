import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/cubit/home_cubit.dart';
import 'package:myhomecontroller/view/kitchen/kitchen.dart';
import 'package:myhomecontroller/view/widget/custom_appbar.dart';
import 'package:myhomecontroller/view/widget/side_menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.background,
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                const CustomAppBar(),
                Expanded(
                  child: Row(
                    children: [
                      //Helper Container to maintain width when open side-menu
                      AnimatedContainer(
                          duration: ConstSize.animationTime,
                          curve: Curves.ease,
                          width: context
                                  .watch<HomeCubit>()
                                  .state
                                  .isSideMenuActivate
                              ? MediaQuery.of(context).size.width * 0.24
                              : 0),
                      const Expanded(child: KitchenScreen()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SideMenu(),
        ],
      ),
    );
  }
}

class ButtonData {
  String imageName;
  Color color;
  Function onTap;
  bool isSelected;
  ButtonData(this.imageName, this.color, this.onTap, this.isSelected);
}

class DummyData {
  List<ButtonData> roomButtonList = [
    ButtonData(
        "assets/icons/sofa.png", ConstColor.backgroundLight, () {}, false),
    ButtonData(
        "assets/icons/bed.png", ConstColor.backgroundLight, () {}, false),
    ButtonData("assets/icons/kitchen.png", ConstColor.heightLight, () {}, true),
    ButtonData(
        "assets/icons/bath.png", ConstColor.backgroundLight, () {}, false),
  ];
}
