part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  const CounterInitial({required int firstValue}) : super(counter: firstValue);
}

class MyCounterState extends CounterState {
  const MyCounterState({required int counterValue})
      : super(counter: counterValue);
}
