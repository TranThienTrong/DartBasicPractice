import 'dart:io';

Future<void> countDown(int seconds) async {
  for (int i = seconds; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}

void main() async {
  int seconds = int.parse(stdin.readLineSync()!);
  await countDown(seconds);
}