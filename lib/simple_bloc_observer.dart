import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('onChange -- bloc: $bloc, change: $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('onClose -- bloc: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('onCreate -- bloc: $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
