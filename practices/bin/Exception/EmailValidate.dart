class Email {
  late String emailAddress;

  Email(String emailAddress) {
    try {
      if (emailAddress.isEmpty) {
        throw FormatException("Email cannot be empty");
      } else if (!emailAddress.contains('@')) {
        throw FormatException("Email doesn't contain @");
      } else if (emailAddress.contains(' ')){
        throw FormatException("Email cannot contain space");
      }
    } on FormatException catch (e) {
      print(e);
    }
  }
}

void main() {
  new Email("");
  new Email("trong gmail.com");
  new Email("trong@ gmail.com");

  new Email("trong@gmail.com");

}
