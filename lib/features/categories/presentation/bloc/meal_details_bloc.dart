import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/features/categories/domain/use_case/get_meal_details_use_case.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MealDetailsBloc extends Bloc<MealDetailsEvent, MealDetailsState> {
  final GetMealDetailsUseCase getMealDetailsUseCase;

  MealDetailsBloc(this.getMealDetailsUseCase) : super(MealDetailsState()) {
    on<GetMealDetailsEvent>(_onGetMealDetailsEvent);
  }

  Future<void> _onGetMealDetailsEvent(
    GetMealDetailsEvent event,
    Emitter<MealDetailsState> emit,
  ) async {
    final result = await getMealDetailsUseCase.call(event.id);
    result.fold(
      (failure) {
        print(failure.error);
      },
      (meals) {
        emit(state.copyWith(meals: meals));
      },
    );
  }
}
