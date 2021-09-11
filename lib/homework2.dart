import 'dart:io';
import 'dart:math';

void main() {
  const MAX_RANDOM = 100;
  Random r = new Random();
  var answer = r.nextInt(MAX_RANDOM) + 1;
  var guess;
  var round = 0;

  do {
    stdout.write('Guess the number between 1 and $MAX_RANDOM: ');
    String? input = stdin.readLineSync(); // รับ input จาก keyboard
    guess = int.tryParse(input!); // input! : check null
    if(guess == null)
      continue;
    else
      round++;

    if (answer == guess)
      print('$guess is CORRECT!, total guesses: $round');
    else if (answer < guess)
      print('$guess is TOO HIGH!');
    else
      print('$guess is TOO LOW!');
  } while (answer != guess);
  print('-----   THE END   -----');
}
