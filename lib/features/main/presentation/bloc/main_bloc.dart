import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torch_light/torch_light.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(FlashlightOffState()) {
    on<MainPowerButtonEvent>(_onPowerButtonEvent);
  }

  Future<void> _onPowerButtonEvent(
      MainPowerButtonEvent event, Emitter<MainState> emit) async {
    try {
      if (state is FlashlightOffState) {
        await TorchLight.enableTorch(); // Turn on the flashlight
        emit(FlashlightOnState());
      } else {
        await TorchLight.disableTorch();
        emit(FlashlightOffState());
      }
    } catch (e) {
      print("Error controlling flashlight: $e");
    }
  }
}
