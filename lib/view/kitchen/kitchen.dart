import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:myhomecontroller/view/kitchen/widget/air_conditioner_card.dart';
import 'package:myhomecontroller/view/kitchen/widget/bottom_toggle_button.dart';
import 'package:myhomecontroller/view/kitchen/widget/fan_spped_slider.dart';
import 'package:myhomecontroller/view/kitchen/widget/heat_fan_button.dart';
import 'package:myhomecontroller/view/kitchen/widget/high_low_button.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Main Content (Title - Buttons - Slider)
        Padding(
          padding: const EdgeInsets.only(left: ConstSize.defaultPadding * 0.1),
          child: ClipRect(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: ConstSize.defaultPadding * 0.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Section Title
                  const SizedBox(height: ConstSize.defaultPadding),
                  Text(
                    "Kitchen",
                    style: ConstTextStyle.largeDark
                        .copyWith(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                  //Section Container ( Kitchen Section)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: ConstSize.defaultPadding * 1.5),
                      Row(
                        children: [
                          InkWell(
                            child: Text(
                              "OVERVIEW",
                              style: ConstTextStyle.largeDark.copyWith(
                                  fontSize: 18,
                                  letterSpacing: 2,
                                  color: Colors.grey),
                            ),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {},
                          ),
                          const SizedBox(width: ConstSize.defaultPadding),
                          Text(
                            "DETAILS",
                            style: ConstTextStyle.largeDark.copyWith(
                                fontSize: 18,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: ConstSize.defaultPadding),
                      //Cards,Buttons ( Air Conditioner, heat, Fan, HighLow Button)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: const [
                                AirConditionerCard(),
                                HeatFanButton(),
                              ],
                            ),
                            const SizedBox(width: ConstSize.defaultPadding),
                            const HighLowButton(),
                          ],
                        ),
                      ),
                      const SizedBox(height: ConstSize.defaultPadding),
                      //Slider - Fan Speed
                      const FanSpeed(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        //Bottom Toggle buttons
        const BottomToggleButton()
      ],
    );
  }
}
