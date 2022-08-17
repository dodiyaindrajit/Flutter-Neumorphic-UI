import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/size.dart';
import 'package:myhomecontroller/constant/text_style.dart';
import 'package:myhomecontroller/view/kitchen/widget/air_conditioner_card.dart';
import 'package:myhomecontroller/view/kitchen/widget/bottom_toggle_button.dart';
import 'package:myhomecontroller/view/kitchen/widget/fan_spped_slider.dart';
import 'package:myhomecontroller/view/kitchen/widget/heat_fan_button.dart';
import 'package:myhomecontroller/view/kitchen/widget/high_low_button.dart';
import 'package:myhomecontroller/view/widget/custom_appbar.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ConstSize.defaultPadding * 0.1),
          child: ClipRect(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ConstSize.defaultPadding * 0.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: ConstSize.defaultPadding * 2.5),
                  //Appbar - Home, Title, Menu
                  const CustomAppBar(),
                  //Section Title
                  SizedBox(height: ConstSize.defaultPadding * 2),
                  Text(
                    "Kitchen",
                    style: ConstTextStyle.largeDark
                        .copyWith(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                  //Section Container ( Kitchen Section)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ConstSize.defaultPadding * 1.5),
                      Row(
                        children: [
                          Text(
                            "OVERVIEW",
                            style: ConstTextStyle.largeDark.copyWith(
                                fontSize: 18,
                                letterSpacing: 2,
                                color: Colors.grey),
                          ),
                          SizedBox(width: ConstSize.defaultPadding),
                          Text(
                            "DETAILS",
                            style: ConstTextStyle.largeDark.copyWith(
                                fontSize: 18,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: ConstSize.defaultPadding),
                      //Cards,Buttons ( Air Conditioner, heat, Fan, HighLow Button)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                const AirConditionerCard(),
                                HeatFanButton(),
                              ],
                            ),
                            SizedBox(width: ConstSize.defaultPadding),
                            const HighLowButton(),
                          ],
                        ),
                      ),
                      SizedBox(height: ConstSize.defaultPadding),
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
