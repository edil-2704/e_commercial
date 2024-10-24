abstract class AuthUseCase<Type, Params> {
  Future<Type> call({Params params});
}
