part of 'forgetpass_cubit.dart';

@immutable
sealed class ForgetpassState {}

final class ForgetpassInitial extends ForgetpassState {}
final class ForgetpassLoading extends ForgetpassState {}
final class ForgetpassSuccess extends ForgetpassState {}
final class ForgetpassFaluir extends ForgetpassState {
  final String messege;

  ForgetpassFaluir({required this.messege});

}



