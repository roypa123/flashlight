part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class  MainSplash extends MainEvent {
  @override
  List<Object?> get props => [];
}