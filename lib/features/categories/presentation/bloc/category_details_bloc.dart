import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/features/categories/domain/use_case/get_category_details_use_case.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryDetailsBloc
    extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  final GetCategoryDetailsUseCase getCategoryDetailsUseCase;
  CategoryDetailsBloc(this.getCategoryDetailsUseCase)
    : super(CategoryDetailsState()) {
    on<GetCategoryDetailsEvent>(_onGetCategoryDetailsEvent);
  }

  Future<void> _onGetCategoryDetailsEvent(
    GetCategoryDetailsEvent event,
    Emitter<CategoryDetailsState> emit,
  ) async {
    final result = await getCategoryDetailsUseCase.call(event.category);
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
