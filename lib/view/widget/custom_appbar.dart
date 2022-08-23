import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:myhomecontroller/cubit/home_cubit.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ConstSize.defaultPadding * 0.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {
              context.read<HomeCubit>().activateSideMenu();
            },
            child: Image.asset("assets/icons/home.png",
                height: 32, width: 37, fit: BoxFit.fill),
            padding: const EdgeInsets.all(0),
            minWidth: double.minPositive,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("YOUR HOME",
                style: ConstTextStyle.largeDark
                    .copyWith(letterSpacing: 7, fontWeight: FontWeight.bold)),
          ),
          Flexible(
            child: MaterialButton(
              onPressed: () {},
              child: Image.asset("assets/icons/menu.png",
                  height: 35, width: 37, fit: BoxFit.fill),
              padding: const EdgeInsets.all(0),
              minWidth: double.minPositive,
            ),
          ),
        ],
      ),
    );
  }
}
