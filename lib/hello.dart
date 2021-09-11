import 'dart:io';
import 'dart:math';

void main() {
  var myList = ['hello', 'popopop', 'mewwwww'];
  myList.add('tooo');

  for (var item in myList) {
    print(item);
  }
  /*myList.forEach((element) {
        print(element);
      });*/

  const MAX_RANDOM = 100;
  Random r = new Random();
  var answer = r.nextInt(MAX_RANDOM) + 1;

  var guess;
  do {
    stdout.write('Guess the number between 1 and $MAX_RANDOM: ');
    String? input = stdin.readLineSync();
    /*
          if(input  == null) return; // check null
        */
    guess = int.parse(input!); // input! : check null
    if (answer == guess) {
      print('CORRECT!');
    } else if (answer < guess) {
      print('TOO HIGH!');
    } else {
      print('TOO LOW!');
    }
  } while (answer != guess);
  print('----- THE END -----');
}
