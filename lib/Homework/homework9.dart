import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game.dart';

class homework9 extends StatefulWidget {
  const homework9({Key? key}) : super(key: key);

  @override
  _homework9State createState() => _homework9State();
}

class _homework9State extends State<homework9> {
  late Game _game;
  final _controller = TextEditingController();
  String? _guessNumber;
  String _guessNumber1 = "I'm thinking of a number betweem 1 and 100.";
  String? _feedback;
  bool check = false;
  int nub = 0;
  var mylist =[];

  @override
  void initState() {
    super.initState();
    _game = Game();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showMaterialDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('GOOD JOB!'),
          content:
          Text("The answer is $_guessNumber\nYou have made $nub guesses.\n\n${getlist().toString()}"),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  String getlist(){
    String v ="";
    for(int i=0 ;i<mylist.length ; ++i) {
      v += "${mylist[i].toString()}";
      if(i!=mylist.length -1){
        v+=" => ";
      }
    }
    return v;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildHeader(),
                if (_guessNumber == null) Font(),
                if (_guessNumber != null) buildCenter(),
                _buildLast(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_number.jpg',
          width: 100.0, // 160 = 1 inch
        ),
        Text(
          'GUESS THE NUMBER',
          style: GoogleFonts.kanit(fontSize: 25.0),
        ),
      ],
    );
  }

  Widget Font() {
    return Column(
      children: [
        Text(
          _guessNumber1,
          style: GoogleFonts.kanit(fontSize: 22.0),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Can you guess it?',
              style: GoogleFonts.kanit(
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCenter() {
    return _guessNumber == null
        ? SizedBox.shrink()
        : Column(
            children: [
              Text(
                _guessNumber!,
                style: GoogleFonts.kanit(fontSize: 60.0),
              ),
              if (check == false)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                    Text(_feedback!, style: GoogleFonts.kanit(fontSize: 25.0)),
                  ],
                ),
              if (check == true)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    Text(_feedback!, style: GoogleFonts.kanit(fontSize: 25.0)),
                  ],
                ),
              Text(''),
              if (check == true)
                TextButton(
                  onPressed: () {
                    _game = Game();
                    setState(() {
                      _feedback = null;
                      _guessNumber = null;
                      mylist = [];
                      nub =0;
                    });
                  },
                  child: Text(
                    'NEW GAME',
                    style: GoogleFonts.kanit(fontSize: 25.0),
                  ),
                ),
            ],
          );
  }

  Widget _buildLast() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 10.0),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _guessNumber = _controller.text;
              int? guess = int.tryParse(_guessNumber!);
              mylist.add(guess!);
              if (guess != null) {
                nub++;
                var result = _game.doGuess(guess);
                if (result == 0) {
                  _feedback = ' CORRECT';
                  _showMaterialDialog();
                  check = true;
                } else if (result == 1) {
                  _feedback = ' TOO HIGH';
                  check = false;
                } else {
                  _feedback = ' TOO LOW';
                  check = false;
                }
              }
            });
          },
          child: Text('GUESS'),
        ),
      ],
    );
  }
}
