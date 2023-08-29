import 'package:clean_arh/src/core/service_locator/service_locator.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
@InjectableInit(
  initializerName: r'$getItInit',
  preferRelativeImports: true,
  asExtension: false,
  usesNullSafety: true,
)
void configure() => $getItInit(sl);
