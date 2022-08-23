import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:myhomecontroller/cubit/home_cubit.dart';
import 'package:myhomecontroller/view/home.dart';
import 'package:myhomecontroller/view/widget/image_button.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: context.watch<HomeCubit>().state.isSideMenuActivate
          ? 0
          : -MediaQuery.of(context).size.width * 0.24,
      duration: ConstSize.animationTime,
      curve: Curves.ease,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.24,
        height: MediaQuery.of(context).size.height,
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(0)),
              depth: 20,
              lightSource: LightSource.left,
              intensity: 0.9,
              color: ConstColor.background),
          padding: const EdgeInsets.all(ConstSize.defaultPadding),
          drawSurfaceAboveChild: false,
          child: SafeArea(
            child: Visibility(
              // visible: context.read<HomeCubit>().state.isSideMenuActivate,
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
                      onTap: () {
                        context.read<HomeCubit>().activateSideMenu();
                        i.onTap();
                      },
                      color: i.color,
                      isTitle: false,
                      isDepthPositive: i.isSelected,
                    ),
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
        ),
      ),
    );
  }
}
