// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/data/data_sourse/bitrix_data_sourse.dart' as _i3;
import '../../features/data/repository/bitrix_repository_impl.dart' as _i5;
import '../../features/domain/repository/tovars_repository.dart' as _i4;
import '../../features/domain/use_case/use_case.dart' as _i6;
import '../../features/presentation/bloc/start_page_bloc.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $getItInit(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.UserDataSources>(() => _i3.UserDataSources());
  gh.factory<_i4.UserRepository>(
      () => _i5.UserRepositoryImpl(gh<_i3.UserDataSources>()));
  gh.factory<_i6.GetUser>(
      () => _i6.GetUser(userRepository: gh<_i4.UserRepository>()));
  gh.factory<_i7.StartPageBloc>(() => _i7.StartPageBloc(gh<_i6.GetUser>()));
  return getIt;
}
