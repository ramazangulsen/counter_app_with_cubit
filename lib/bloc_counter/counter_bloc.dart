import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //bloc a eventler girer stateler çıkar
  CounterBloc() : super(CounterInitial(firstValue: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter + 1));
    });
    on<DecrementCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter - 1));
    });
  }
}
