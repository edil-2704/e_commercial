import 'package:dartz/dartz.dart';
import 'package:e_commercial/features/auth/data/models/auth_model.dart';
import 'package:e_commercial/features/auth/data/sources/auth_firebase_sourse.dart';
import 'package:e_commercial/features/auth/domain/auth_repository/auth_repository.dart';
import 'package:e_commercial/internal/dependencies/get_it.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp(AuthModel user) async {
    return locator<AuthFirebaseService>().signUp(user);
  }
}
