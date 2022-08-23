import 'package:myhomecontroller/view/widget/side_menu.dart';

enum SideMenuNames { sofa, bed, kitchen, bath }

class Home {
  final bool isSideMenuActivate;
  final SideMenuNames sideMenuNames;

  const Home({required this.isSideMenuActivate, required this.sideMenuNames});

  Home copyWith({
    bool? isSideMenuActivate,
    SideMenuNames? sideMenuNames,
  }) {
    return Home(
      isSideMenuActivate: isSideMenuActivate ?? this.isSideMenuActivate,
      sideMenuNames: sideMenuNames ?? this.sideMenuNames,
    );
  }
}
