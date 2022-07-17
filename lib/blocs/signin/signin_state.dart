part of 'signin_cubit.dart';

enum SignInStatus {
  initial,
  submitting,
  success,
  error,
}

class SigninState extends Equatable {
  final SignInStatus signInStatus;
  final CustomError error;
  const SigninState({
    required this.signInStatus,
    required this.error,
  });

  factory SigninState.initial() => const SigninState(
        signInStatus: SignInStatus.initial,
        error: CustomError(),
      );

  @override
  List<Object> get props => [signInStatus, error];

  @override
  String toString() =>
      'SigninState(signInStatus: $signInStatus, error: $error)';

  SigninState copyWith({
    SignInStatus? signInStatus,
    CustomError? error,
  }) {
    return SigninState(
      signInStatus: signInStatus ?? this.signInStatus,
      error: error ?? this.error,
    );
  }
}
