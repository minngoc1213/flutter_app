import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/bloc/counter_event.dart';
import 'package:flutter_application_2/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>(_increase);
    on<DecrementEvent>(_decrease);
  }
  void _increase(IncrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  void _decrease(DecrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }
}
