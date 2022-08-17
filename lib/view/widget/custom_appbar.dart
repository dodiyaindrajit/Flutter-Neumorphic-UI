import 'package:flutter/material.dart';
import 'package:myhomecontroller/constant/text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (false)
          MaterialButton(
            onPressed: () {},
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
        MaterialButton(
          onPressed: () {},
          child: Image.asset("assets/icons/menu.png",
              height: 35, width: 37, fit: BoxFit.fill),
          padding: const EdgeInsets.all(0),
          minWidth: double.minPositive,
        ),
      ],
    );
  }
}
