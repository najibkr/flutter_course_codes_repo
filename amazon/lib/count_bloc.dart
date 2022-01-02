import 'package:flutter_bloc/flutter_bloc.dart';

class CountBloc extends Cubit<int> {
  CountBloc() : super(0);
  void increment() => emit(state + 1);
}
