import 'package:dartz/dartz.dart';
import 'package:tnt_store/core/errors/exceptions.dart';
import 'package:tnt_store/core/errors/failures.dart';
import 'package:tnt_store/core/services/firebase_auth_service.dart';
import 'package:tnt_store/features/auth/data/models/user_model.dart';
import 'package:tnt_store/features/auth/domain/entities/user_entity.dart';
import 'package:tnt_store/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(serverFailure(e.message));
    } catch (e) {
      return left(serverFailure('لقد حدث خطاء ما. برجاء المحاولة مرة اخرى'));
    }
  }
}
