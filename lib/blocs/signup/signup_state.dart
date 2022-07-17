part of 'signup_cubit.dart';

enum SignUpStatus {
  initial,
  submitting,
  success,
  error,
}

class SignupState extends Equatable {
  final SignUpStatus signUpStatus;
  final CustomError error;
  const SignupState({
    required this.signUpStatus,
    required this.error,
  });

  factory SignupState.initial() => const SignupState(
        signUpStatus: SignUpStatus.initial,
        error: CustomError(),
      );

  @override
  List<Object> get props => [signUpStatus, error];

  @override
  String toString() =>
      'SignupState(signUpStatus: $signUpStatus, error: $error)';

  SignupState copyWith({
    SignUpStatus? signUpStatus,
    CustomError? error,
  }) {
    return SignupState(
      signUpStatus: signUpStatus ?? this.signUpStatus,
      error: error ?? this.error,
    );
  }
}
