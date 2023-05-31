import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class simpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    debugPrint('cahnge $change ');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('onClose');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('onCreatess');
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
