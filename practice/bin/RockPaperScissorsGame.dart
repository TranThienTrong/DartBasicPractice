import 'dart:io';

import 'dart:math';

enum Choices { rock, paper, scissors }

void main() {
  bool exit = false;

  while (!exit) {
    stdout.write("Rock, paper, scissors? (r/p/s): ");
    final choice = stdin.readLineSync();
    if (choice == "r" || choice == "p" || choice == "s") {
      processGame(choice);
    } else {
      stdout.write("Please input again!\n");
      continue;
    }
  }
}

void processGame(String? choice) {
  final Choices playerChoice;
  final Choices machineChoice = Choices.values[new Random().nextInt(2)];

  switch (choice) {
    case "r":
      playerChoice = Choices.rock;
      break;
    case "p":
      playerChoice = Choices.paper;
      break;
    case "s":
      playerChoice = Choices.scissors;
      break;
    default:
      return;
  }

  if (playerChoice == machineChoice) {
    print("DRAW");
  } else if (playerChoice == Choices.rock) {
    machineChoice == Choices.scissors?print("WIN"):print("LOSE");
  } else if (playerChoice == Choices.paper) {
    machineChoice == Choices.rock?print("WIN"):print("LOSE");
  } else {
    machineChoice == Choices.paper?print("WIN"):print("LOSE");
  }
  return;
}
