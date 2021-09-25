import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homework8 extends StatefulWidget {
  const homework8({Key? key}) : super(key: key);

  @override
  _homework8State createState() => _homework8State();
}

class _homework8State extends State<homework8> {
  int b = 1;
  String font = "Kanit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THAI FONT VIEWER'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: [
                if (b == 1)
                  Text(
                    'การเดินทางคือการเรียนรู้',
                    style: GoogleFonts.kanit(fontSize: 60),
                    textAlign: TextAlign.center,
                  ),
                if (b == 2)
                  Text(
                    'การเดินทางคือการเรียนรู้',
                    style: GoogleFonts.prompt(fontSize: 60),
                    textAlign: TextAlign.center,
                  ),
                if (b == 3)
                  Text(
                    'การเดินทางคือการเรียนรู้',
                    style: GoogleFonts.mitr(fontSize: 60),
                    textAlign: TextAlign.center,
                  ),
                if (b == 4)
                  Text(
                    'การเดินทางคือการเรียนรู้',
                    style: GoogleFonts.sarabun(fontSize: 60),
                    textAlign: TextAlign.center,
                  ),
                if (b == 5)
                  Text(
                    'การเดินทางคือการเรียนรู้',
                    style: GoogleFonts.chakraPetch(fontSize: 60),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Font: $font',
                  style: TextStyle(fontSize: 20),
                ),
                Card(
                  color: Colors.white,
                  elevation: 40.0, //การยกตัวของการ์ด ซึ่งทำให้เกิดเงา
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              b = 1;
                              font = "Kanit";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Kanit',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              b = 2;
                              font = "Prompt";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Prompt',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              b = 3;
                              font = "Mitr";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Mitr',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              b = 4;
                              font = "Sarabun";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Sarabun',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              b = 5;
                              font = "Chakra Petch";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Chakra Petch',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
