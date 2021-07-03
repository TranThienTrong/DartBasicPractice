void main() {
  const List<String> emailList = [
    'abc@abc.com',
    'dxc@dxc.com',
    'trong@gmail.com',
    'trong@yahoo.com',
    'trongtt@fpt.edu.com'
  ];

  const knownEmail = ['gmail.com', 'yahoo.com'];
  getUnknownEmail(emailList,knownEmail).forEach((e) => print(e));

}

Iterable<String> getUnknownEmail(List<String> emailList, List<String> knownEmail){
  List<String> domainList = [];
  emailList.forEach((element) => domainList.add(element.split('@').last));

  Iterable<String> unknownEmail = domainList.where((element) => !knownEmail.contains(element));

  return unknownEmail;
}
