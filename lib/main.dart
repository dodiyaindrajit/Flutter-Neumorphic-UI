import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:myhomecontroller/constant/color.dart';
import 'package:myhomecontroller/observer/counter_observer.dart';
import 'package:myhomecontroller/view/home.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const MyApp());
}

class MyApp extends NeumorphicApp {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Your Home',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: ConstColor.backgroundLight,
        lightSource: LightSource.topLeft,
        depth: 10,
        accentColor: ConstColor.heightLight,
        variantColor: ConstColor.heightLight2,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: Home(),
    );
  }
}
