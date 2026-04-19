import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

 final AuthRepo authRepo;
 
  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    final result = await authRepo.signinWithEmailAndPassword(email, password);
    result.fold(
      (l) => emit(LoginFailure(l.message)),
      (r) => emit(LoginSuccess(r)),
    );
  }


  Future <void> loginWithGoogle() async {
    emit(LoginLoading());
    final result = await authRepo.signinWithGoogle();
    result.fold(
      (l) => emit(LoginFailure(l.message)),
      (r) => emit(LoginSuccess(r)),
    );
  }

  Future <void> loginWithFacebook() async {
    emit(LoginLoading());
    final result = await authRepo.signinWithFacebook();
    result.fold(
      (l) => emit(LoginFailure(l.message)),
      (r) => emit(LoginSuccess(r)),
    );
  }

}
