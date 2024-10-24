import 'package:dartz/dartz.dart';
import 'package:e_commercial/features/auth/data/models/auth_model.dart';
import 'package:e_commercial/features/auth/domain/auth_repository/auth_repository.dart';
import 'package:e_commercial/features/auth/domain/auth_use_case/auth_use_case.dart';
import 'package:e_commercial/internal/dependencies/get_it.dart';

class SignUpUseCase implements AuthUseCase<Either, AuthModel> {
  @override
  Future<Either> call({AuthModel ? params}) async {
    
    return await locator<AuthRepository>().signUp(params!);
  }
  
  }
  

