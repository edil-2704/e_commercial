import 'package:dartz/dartz.dart';
import 'package:e_commercial/features/auth/data/models/auth_model.dart';

abstract class AuthRepository {
  Future<Either> signUp(AuthModel user);
   
}
