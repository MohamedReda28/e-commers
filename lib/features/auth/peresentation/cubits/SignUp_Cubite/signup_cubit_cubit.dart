import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../domain/entites/User entites.dart';
import '../../../domain/repos/Auth Repo.dart';
part 'signup_cubit_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRebo) : super(SignupCubitInitial());

  final AuthRepo authRebo;

  Future<void> CreateUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SignupLoading());

    var result =
        await authRebo.CreateUserWithEmailAndPassword(email, password, name);

    result.fold(
      (Failur) => emit(SignupFailure(message: Failur.message)),
      (userEntity) => emit(SignupSuccess(userEntity: userEntity)),
    );
  }
}
