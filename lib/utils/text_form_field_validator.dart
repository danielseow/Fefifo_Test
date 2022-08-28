class TextFormFieldValidator {
  static emailValidator(String email) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    if (email.isEmpty) {
      return 'Email cannot be empty';
    } else if (!RegExp(pattern).hasMatch(email)) {
      return 'Email is invalid';
    }

    return null;
  }

  static passwordValidator(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }
}
