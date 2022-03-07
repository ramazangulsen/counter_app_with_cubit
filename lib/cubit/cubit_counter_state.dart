part of 'cubit_counter_cubit.dart';

@immutable
abstract class CubitCounterState {
  final int counter;
  const CubitCounterState({required this.counter});
}

class CubitCounterInitial extends CubitCounterState {
  const CubitCounterInitial({required int firstValue})
      : super(counter: firstValue);
}

class MyCounterState extends CubitCounterState {
  const MyCounterState({required int counterValue})
      : super(counter: counterValue);
}
