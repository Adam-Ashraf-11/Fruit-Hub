import 'dart:developer' as developer; // استيراد مكتبة التطوير بشكل آمن
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    developer.log('Bloc: ${bloc.runtimeType}, Transition: ${transition.currentState} -> ${transition.nextState}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    developer.log('${bloc.runtimeType} $change');
  }
}