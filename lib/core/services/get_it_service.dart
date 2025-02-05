import 'package:get_it/get_it.dart';
import 'package:tnt_store/core/services/firebase_auth_service.dart';
import 'package:tnt_store/features/auth/data/repos/auth_repo_impl.dart';
import 'package:tnt_store/features/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;


void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
    ),
  );
}
