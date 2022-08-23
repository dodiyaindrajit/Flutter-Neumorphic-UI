import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/cubit/kitchen_cubit.dart';
import 'package:myhomecontroller/view/widget/image_button.dart';

class HeatFanButton extends StatelessWidget {
  const HeatFanButton({
    Key? key,
    this.onTap,
    this.imageName,
    this.buttonName,
  }) : super(key: key);

  final Function? onTap;
  final String? imageName;
  final String? buttonName;

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
              color: context.watch<KitchenCubit>().state.isHeatOn
                  ? ConstColor.heightLight
                  : ConstColor.background,
              isDepthPositive:
                  context.watch<KitchenCubit>().state.isHeatOn ? true : false,
              onTap: () => context.read<KitchenCubit>().turnOnHeat(),
            ),
          ),
          const SizedBox(width: ConstSize.defaultPadding),
          Expanded(
            child: ImageButton(
              buttonName: "Fan",
              imageName: "assets/icons/fan.png",
              color: context.watch<KitchenCubit>().state.isFanOn
                  ? ConstColor.heightLight
                  : ConstColor.background,
              onTap: () => context.read<KitchenCubit>().turnOnFan(),
              isDepthPositive:
                  context.watch<KitchenCubit>().state.isFanOn ? true : false,
            ),
          )
        ],
      ),
    );
  }
}
