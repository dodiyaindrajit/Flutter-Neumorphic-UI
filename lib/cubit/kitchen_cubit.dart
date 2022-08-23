import 'package:bloc/bloc.dart';
import 'package:myhomecontroller/model/kitchen.dart';

class KitchenCubit extends Cubit<Kitchen> {
  KitchenCubit()
      : super(const Kitchen(
            isAcOn: false,
            isHeatOn: true,
            heatSpeed: 20,
            isFanOn: false,
            fanSpeed: 20));

  void turnOnAc() => emit(state.copyWith(isAcOn: !state.isAcOn));
  void turnOnHeat() => emit(state.copyWith(isHeatOn: !state.isHeatOn));

  void turnOnFan() => emit(state.copyWith(isFanOn: !state.isFanOn));

  void increaseHeatSpeed() =>
      emit(state.copyWith(heatSpeed: state.heatSpeed + 1));

  void decreaseHeatSpeed() =>
      emit(state.copyWith(heatSpeed: state.heatSpeed - 1));
}
