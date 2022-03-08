import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_counter_state.dart';

class CubitCounterCubit extends Cubit<CubitCounterState> {
  CubitCounterCubit() : super(const CubitCounterInitial(firstValue: 20));

  void increment() {
    emit(
      MyCounterState(counterValue: state.counter + 1),
    );
  }

  void decrement() {
    emit(
      MyCounterState(counterValue: state.counter - 1),
    );
  }
}
