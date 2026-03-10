import 'package:flutter_application_2/bloc/counter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton(CounterBloc());
}