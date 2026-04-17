import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/feature/auth/data/repos/auth_repo_imp.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
