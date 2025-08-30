import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../domain/entites/User_Entites.dart';
import '../../../domain/repos/Auth Repo.dart';
part 'forgetpass_state.dart';

class ForgetpassCubit extends Cubit<ForgetpassState> {
  ForgetpassCubit(this.authRepo) : super(ForgetpassInitial());

  final AuthRepo authRepo;

  Future<void> sendPasswordResetEmail({required String email}) async {
    var result = await authRepo.sendPasswordResetEmail(email: email);

    result.fold(
      (Failur) => emit(
        ForgetpassFaluir(
          messege: Failur.message,
        ),
      ),
      (userEntity) => emit(ForgetpassSuccess()),
    );
  }
}
