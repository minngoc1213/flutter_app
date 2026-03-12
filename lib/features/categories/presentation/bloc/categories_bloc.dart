import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/domain/use_case/get_categories_use_case.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesUseCase getCategoriesUseCase;
  CategoriesBloc({required this.getCategoriesUseCase})
    : super(CategoriesState()) {
    on<GetCategoriesEvent>(_onGetCategoriesEvent);
  }

  Future<void> _onGetCategoriesEvent(
    GetCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    final result = await getCategoriesUseCase.call(NoParams());
    result.fold(
      (failure) {
        print(failure.error);
      },
      (categories) {
        emit(state.copyWith(categories: categories));
        print('---' * 30);
        print(state.categories?.categories.first.idCategory);
      },
    );
  }
}
