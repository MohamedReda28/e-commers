import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../domain/entites/User entites.dart';
import '../../../../domain/repos/Auth Repo.dart';
part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> SignWithEmailAndoPassword(String email, String password) async {
    emit(SigninLoading());

    var result = await authRepo.SignWithEmailAndoPassword(email, password);

    result.fold(
      (Failur) => emit(
        SigninFailure(message: Failur.message),
      ),
      (userEntity) => emit(
        SigninSuccess(userEntity: userEntity),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (Failur) => emit(SigninFailure(message: Failur.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (Failur) => emit(SigninFailure(message: Failur.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}
