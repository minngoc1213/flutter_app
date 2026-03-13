// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/network/app_dio.dart' as _i334;
import '../features/auth/presentation/bloc/auth_bloc.dart' as _i59;
import '../features/categories/data/data_source/category_data_source.dart'
    as _i1068;
import '../features/categories/data/data_source/meal_data_source.dart' as _i656;
import '../features/categories/data/repositories/category_repository_impl.dart'
    as _i346;
import '../features/categories/data/repositories/meal_repository_impl.dart'
    as _i260;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i396;
import '../features/categories/domain/use_case/get_category_details_use_case.dart'
    as _i473;
import '../features/categories/domain/use_case/get_meal_details_use_case.dart'
    as _i959;
import '../features/categories/presentation/bloc/categories_bloc.dart' as _i105;
import '../features/categories/presentation/bloc/category_details_bloc.dart'
    as _i970;
import '../features/categories/presentation/bloc/meal_details_bloc.dart'
    as _i257;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appNetworkModule = _$AppNetworkModule();
    gh.singleton<_i361.Dio>(() => appNetworkModule.provideDio());
    gh.singleton<_i59.AuthBloc>(() => _i59.AuthBloc());
    gh.singleton<_i1068.CategoryDataSource>(
      () => appNetworkModule.getCategoryDataSource(gh<_i361.Dio>()),
    );
    gh.singleton<_i656.MealDataSource>(
      () => appNetworkModule.getMealDataSource(gh<_i361.Dio>()),
    );
    gh.factory<_i346.CategoryRepositoryImpl>(
      () => _i346.CategoryRepositoryImpl(
        categoryDataSource: gh<_i1068.CategoryDataSource>(),
      ),
    );
    gh.factory<_i473.GetCategoryDetailsUseCase>(
      () => _i473.GetCategoryDetailsUseCase(
        categoryRepositoryImpl: gh<_i346.CategoryRepositoryImpl>(),
      ),
    );
    gh.factory<_i260.MealRepositoryImpl>(
      () =>
          _i260.MealRepositoryImpl(mealDataSource: gh<_i656.MealDataSource>()),
    );
    gh.factory<_i970.CategoryDetailsBloc>(
      () => _i970.CategoryDetailsBloc(gh<_i473.GetCategoryDetailsUseCase>()),
    );
    gh.factory<_i396.GetCategoriesUseCase>(
      () => _i396.GetCategoriesUseCase(
        getCategoriesRepositoryImpl: gh<_i346.CategoryRepositoryImpl>(),
      ),
    );
    gh.factory<_i959.GetMealDetailsUseCase>(
      () => _i959.GetMealDetailsUseCase(
        mealRepositoryImpl: gh<_i260.MealRepositoryImpl>(),
      ),
    );
    gh.factory<_i257.MealDetailsBloc>(
      () => _i257.MealDetailsBloc(gh<_i959.GetMealDetailsUseCase>()),
    );
    gh.factory<_i105.CategoriesBloc>(
      () => _i105.CategoriesBloc(
        getCategoriesUseCase: gh<_i396.GetCategoriesUseCase>(),
      ),
    );
    return this;
  }
}

class _$AppNetworkModule extends _i334.AppNetworkModule {}
