import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fireauth/models/custom_error.dart';
import 'package:fireauth/repo/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  final AuthRepository authRepository;

  SigninCubit({required this.authRepository}) : super(SigninState.initial());

  Future<void> signin({
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(signInStatus: SignInStatus.submitting));

    try {
      await authRepository.signin(email: email, password: password);

      emit(state.copyWith(signInStatus: SignInStatus.success));
    } on CustomError catch (e) {
      emit(state.copyWith(signInStatus: SignInStatus.error, error: e));
    } catch (e) {
      throw e.toString();
    }
  }
}
