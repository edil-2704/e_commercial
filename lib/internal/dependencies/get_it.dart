import 'package:e_commercial/features/auth/data/auth_repositories_impl/auth_repository_impl.dart';
import 'package:e_commercial/features/auth/data/models/auth_model.dart';
import 'package:e_commercial/features/auth/data/sources/auth_firebase_sourse.dart';
import 'package:e_commercial/features/auth/domain/auth_repository/auth_repository.dart';
import 'package:e_commercial/internal/dependencies/get_it.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
  usesNullSafety: true,
)
void configureDependencies() => $initGetIt(getIt);

final locator = GetIt.instance;
