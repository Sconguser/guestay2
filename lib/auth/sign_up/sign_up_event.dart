abstract class SignUpEvent {}

class SignUpEmaiLChanged extends SignUpEvent {
  final String userEmail;

  SignUpEmaiLChanged({required this.userEmail});
}

class SignUpNameChanged extends SignUpEvent {
  final String userName;
  SignUpNameChanged({required this.userName});
}

class SignUpLastNameChanged extends SignUpEvent {
  final String userLastName;
  SignUpLastNameChanged({required this.userLastName});
}

class SignUpUsernameChanged extends SignUpEvent {
  final String userUsername;

  SignUpUsernameChanged({required this.userUsername});
}

class SignUpPasswordChanged extends SignUpEvent {
  final String userPassword;

  SignUpPasswordChanged({required this.userPassword});
}

class SignUpPasswordConfirmationChanged extends SignUpEvent {
  final String userPasswordConfirmation;

  SignUpPasswordConfirmationChanged({required this.userPasswordConfirmation});
}

class SignUpSubmitted extends SignUpEvent {}
