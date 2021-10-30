import 'dart:io';
import 'dart:math';

void main () {
  print('╔═══════════════════════════════════════════');
  print('║            GUESS THE NUMBER               ');
  print('╟───────────────────────────────────────────');
  stdout.write ('║ Enter max number you want to guess: ');
  var input = stdin.readLineSync();
  var guess = int.tryParse(input!);
  var game = Game(guess);
  var sum = 0;
  var isCorrect = false;
  do {
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      isCorrect = game.doGuess(guess);
      sum++;
    }
    var total = game.getTotalGuesses(guess ,sum);
  }while (!isCorrect);
}

class Game {
  late int answer;

  Game(guess) {
    this.answer = Random().nextInt(guess) + 1;
    //print('${this.answer}');
    print('╟───────────────────────────────────────────');
    stdout.write ('║ Guess the number between 1 and 1000: ');
  }

  bool doGuess(int num) {

    if (num > this.answer) {
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟───────────────────────────────────────────');
      stdout.write ('║ Guess the number between 1 and 1000: ');
      return false;
    }
    else if (num < this.answer) {

      print('║ ➜ $num is TOO LOW! ▼');
      print('╟───────────────────────────────────────────');
      stdout.write ('║ Guess the number between 1 and 1000: ');
      return false;
    }
    else {
      print('║ ➜ $num : CORRECT ');
      print('╟───────────────────────────────────────────');
      return true;
    }
  }

  getTotalGuesses(guess, sum) {
    if (guess == answer) {
      print('║ Total guesses : $sum');
      print('║                    THE END                 ');
      print('╟───────────────────────────────────────────');
      print('╚═══════════════════════════════════════════');
    }
  }
}