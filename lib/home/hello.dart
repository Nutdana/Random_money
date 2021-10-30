import 'dart:io';
import 'dart:math';

void main(){
  const MAX_RANDOM = 100;
  var r = new Random();
  var answer = r.nextInt(MAX_RANDOM)+1;
  var sum = 0;
  var guess;
  while(true) {
    stdout.write('Guess the number between 1 and $MAX_RANDOM: ');
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    } else {
      sum++;
      if (answer == guess) {
        print('$input is CORRECT!, total guesses: $sum ');
        break;
      } else if (answer < guess) {
        print('$input is TOO HIGH! ▲');
      } else if (answer > guess) {
        print('$input is TOO LOW! ▼');
      }
    }
  }
  print('---- THE END ----');
}

