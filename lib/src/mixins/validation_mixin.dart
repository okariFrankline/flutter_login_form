// defines functions that will be used validate forms
class ValidationMixin {
  // function for valiating an email address
  String validateEmail(String email) {
    // checks if email has '@'
    if (!email.contains('@')) {
      // return an error message
      return 'Enter a valid email address';
    }
    // return null
    return null;
  }

  // function for validating a password
  String validatePassword(String password) {
    // ensure password is at least four character long
    if (password.length < 4) {
      // return error message
      return 'Password must be at least four characters long';
    }
    // retun null
    return null;
  }
}
