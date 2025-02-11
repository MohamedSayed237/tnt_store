import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tnt_store/features/auth/domain/entities/user_entity.dart';
import 'package:tnt_store/features/auth/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(
      String email, String password) async {
    emit(SigninLoading());
    final result =
        await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(
        SigninFailure(message: failure.message),
      ),
      (UserEntity) => emit(
        SigninSuccess(userEntity: UserEntity),
      ),
    );
  }
    Future<void> signInWithGoogle() async{
    emit(SigninLoading());
    final result =
        await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(
        SigninFailure(message: failure.message),
      ),
      (UserEntity) => emit(
        SigninSuccess(userEntity: UserEntity),
      ),
    );
  }
}
