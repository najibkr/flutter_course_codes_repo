mixin FormValidatorMixin {
  String? validateUserName(String? userName) {
    userName = userName?.trim();
    if (userName == null || userName.isEmpty) {
      return 'User name cannot be empty';
    } else if (userName.length < 3) {
      return 'User name cannot be less than 3 characters';
    } else if (userName.length > 10) {
      return 'User name is too long please enter something that you could remember';
    } else if (userName.contains(' ')) {
      return 'Username cannot have spaces';
    }
  }

  String? validatePassword(String? password) {
    password = password?.trim();
    if (password == null || password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < 3) {
      return 'Password cannot be less than 3 characters';
    } else if (password.length > 10) {
      return 'Password is too long please enter a password that you could remember';
    } else if (password.contains(' ')) {
      return 'Password cannot have spaces';
    }
  }
}
