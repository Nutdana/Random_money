import 'dart:io';
import 'dart:math';



void main() {
  var r = Random();
  const MAX_RANDOM = 100;
  var answer = r.nextInt(MAX_RANDOM) + 1;
  var guess;
  var sum = 0;
  print('╔═══════════════════════════════════════════');
  print('║            GUESS THE NUMBER               ║');
  print('╟───────────────────────────────────────────');
  while (true) {
    stdout.write('║ Guess the number between 1 and 100: ');
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }
      sum++;
      if (answer == guess) {
        print('║ ➜ $input is CORRECT ❤, total guesses: $sum');
        print('╟───────────────────────────────────────────');
        break;
      }
      else if (answer < guess) {
        print('║ ➜ $input is TOO HIGH! ▲');
        print('╟───────────────────────────────────────────');
      }
      else {
        print('║ ➜ $input is TOO LOW! ▼');
        print('╟───────────────────────────────────────────');
      }
  }
  print('║                    THE END                 ');
  print('╚═══════════════════════════════════════════');
}



