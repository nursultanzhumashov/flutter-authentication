import 'package:bloc/bloc.dart';

class SignUpCubit extends Cubit<int> {
  SignUpCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
