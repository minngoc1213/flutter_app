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
import '../features/categories/data/data_source/categories_data_source.dart'
    as _i299;
import '../features/categories/data/repositories/get_categories_repositoryImpl.dart'
    as _i485;
import '../features/categories/domain/use_case/get_categories_use_case.dart'
    as _i396;
import '../features/categories/presentation/bloc/categories_bloc.dart' as _i105;

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
    gh.singleton<_i299.CategoriesDataSource>(
      () => appNetworkModule.getCategoriesDataSource(gh<_i361.Dio>()),
    );
    gh.factory<_i485.GetCategoriesRepositoryImpl>(
      () => _i485.GetCategoriesRepositoryImpl(
        categoriesDataSource: gh<_i299.CategoriesDataSource>(),
      ),
    );
    gh.factory<_i396.GetCategoriesUseCase>(
      () => _i396.GetCategoriesUseCase(
        getCategoriesRepositoryImpl: gh<_i485.GetCategoriesRepositoryImpl>(),
      ),
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
