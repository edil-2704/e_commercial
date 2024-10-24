import 'package:e_commercial/features/auth/data/auth_repositories_impl/auth_repository_impl.dart';
import 'package:e_commercial/features/auth/data/sources/auth_firebase_sourse.dart';
import 'package:e_commercial/features/auth/domain/auth_repository/auth_repository.dart';
import 'package:e_commercial/features/auth/domain/auth_use_case/sign_up.dart';
import 'package:e_commercial/internal/dependencies/get_it.dart';

Future<void> initializeDependecies() async {
  // Services
  locator.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  //Repositories

  locator.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //Use case

  locator.registerSingleton<SignUpUseCase>(SignUpUseCase());
}
