import 'package:fireauth/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fireauth/models/custom_error.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository authRepository;

  SignupCubit({required this.authRepository}) : super(SignupState.initial());

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(signUpStatus: SignUpStatus.submitting));

    try {
      await authRepository.signup(
        name: name,
        email: email,
        password: password,
      );

      emit(state.copyWith(signUpStatus: SignUpStatus.success));
    } on CustomError catch (e) {
      emit(state.copyWith(signUpStatus: SignUpStatus.error, error: e));
    } catch (e) {
      throw e.toString();
    }
  }
}
