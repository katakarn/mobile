import 'dart:io';
import 'dart:math';

void main() {
  print('╔═══════════════════════════════════════════════');
  print('║               GUESS THE NUMBER                ');
  print('╟───────────────────────────────────────────────');
  stdout.write('║ Enter max number you want to guess : ');
  int? maxRandom = int.parse(stdin.readLineSync()!);
  print('╟───────────────────────────────────────────────');
  var game = new Game(maxRandom : 1000);
  var isCorrect = false;

  do {
    stdout.write('║ Guess the number between 1 and $num : ');
    var guess = int.tryParse(stdin.readLineSync()!);
    if (guess != null) {
      Map resultMap = game.doGuess(guess);
      isCorrect = resultMap['isCorrect'];
      var message = resultMap['text'];
      print('║ ➜ $guess : $message');
      print('╟───────────────────────────────────────────────');
    }
  } while (!isCorrect);
  print('║ Total guesses : ${game.getTotalGuesses()}');
  print('╟───────────────────────────────────────────────');
  print('║                   THE END                     ');
  print('╚═══════════════════════════════════════════════');
}

class Game {
  late int answer;
  final int maxRandom;
  static int total = 0;
  static const List feedbackList = [
    {'text': 'TOO HIGH! ▲', 'isCorrect': false},
    {'text': 'TOO LOW! ▼', 'isCorrect': false},
    {'text': 'CORRECT :heart:', 'isCorrect': true}
  ];

  Game({required this.maxRandom}) : this.answer = Random().nextInt(maxRandom) + 1;
  // Game(int maxRandom) {
  //   this.answer = Random().nextInt(maxRandom) + 1;
  // }

  Map doGuess(int num) {
    total++;
    if (num > answer) {
      return feedbackList[0];
    } else if (num < answer) {
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }

  int getTotalGuesses() {
    return total;
  }
}
