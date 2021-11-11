import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class random_money extends StatefulWidget {
  const random_money({Key? key}) : super(key: key);

  @override
  _random_moneyState createState() => _random_moneyState();
}

class _random_moneyState extends State<random_money> {
  void _showMaterialDialog(String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'สุ่มเงินรางวัลได้',
            style: GoogleFonts.allertaStencil(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
          content: Text(
            title,
            style: GoogleFonts.allertaStencil(
                fontSize: 15, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.green,
                  Theme.of(context).colorScheme.background.withOpacity(0.5),
                  Theme.of(context).colorScheme.background.withOpacity(0.5),
                  Colors.green,
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ลุ้นรวย',
                              style: GoogleFonts.allertaStencil(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                            height: 200,
                            width: 200,
                            child: Image.asset(
                                'assets/images/money-00043496637361030428333515_normal.png')),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          onPressed: () {
                            setState(() {
                              String text;
                              int _random = Random().nextInt(10) + 1;
                              if (_random == 1 ||
                                  _random == 2 ||
                                  _random == 3 ||
                                  _random == 4) {
                                text = 'เสียใจด้วยคุณอดเงินรางวัล';
                                _showMaterialDialog(text);
                              } else if (_random == 5 || _random == 6) {
                                text = 'ดีใจด้วยคุณได้เงินรางวัล 100 บาท';
                                _showMaterialDialog(text);
                              } else if (_random == 7) {
                                text = 'ดีใจด้วยคุณได้เงินรางวัล 2,000 บาท';
                                _showMaterialDialog(text);
                              } else if (_random == 8) {
                                text = 'ดีใจด้วยคุณได้เงินรางวัล 30,000 บาท';
                                _showMaterialDialog(text);
                              } else if (_random == 9) {
                                text = 'ดีใจด้วยคุณได้เงินรางวัล 400,000 บาท';
                                _showMaterialDialog(text);
                              } else if (_random == 10) {
                                text = 'ดีใจด้วยคุณได้เงินรางวัล 100,000,000 บาท';
                                _showMaterialDialog(text);
                              }
                            });
                          },
                          child: Text(
                            'click me ',
                            style: GoogleFonts.allertaStencil(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
