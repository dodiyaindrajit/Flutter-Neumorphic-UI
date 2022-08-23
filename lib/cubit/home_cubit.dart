import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhomecontroller/model/home.dart';

class HomeCubit extends Cubit<Home> {
  HomeCubit() : super(const Home(isSideMenuActivate: false));

  void activateSideMenu() =>
      emit(state.copyWith(isSideMenuActivate: !state.isSideMenuActivate));
}
