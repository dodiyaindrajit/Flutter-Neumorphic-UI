import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhomecontroller/model/home.dart';

class HomeCubit extends Cubit<Home> {
  HomeCubit()
      : super(const Home(
            isSideMenuActivate: false, sideMenuNames: SideMenuNames.kitchen));

  void activateSideMenu() =>
      emit(state.copyWith(isSideMenuActivate: !state.isSideMenuActivate));

  void changeSideMenu(SideMenuNames menuNames) =>
      emit(state.copyWith(sideMenuNames: menuNames));
}
