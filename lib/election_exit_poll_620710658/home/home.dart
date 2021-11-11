import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class exit_poll extends StatefulWidget {
  const exit_poll({Key? key}) : super(key: key);

  @override
  _exit_pollState createState() => _exit_pollState();
}

class _exit_pollState extends State<exit_poll> {
  @override
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;

  void _showMaterialDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('SUCCESS'),
          content: Text("บันทึกข้อมูลสำเร็จ [$a,$b,$c,$d,$e]}"),
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 120,
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assets/images/vote_hand.png'),
                          )),
                    ],
                  ),
                  Text(
                    "EXIT POLL",
                    style: GoogleFonts.chakraPetch(
                        fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "เลือกตั้ง อบต.",
                    style: GoogleFonts.chakraPetch(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "รายชื่อผู้สัมครรับเลือกตั้ง",
                        style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "นายกองค์การบริหารส่วนตำบลเขาพระ",
                        style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "อำเภอเมืองนครนายก จังหวัดนครนายก",
                        style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                a += 1;
                                _showMaterialDialog();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1  นาย สุรเดช สังฆธรรม',
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                b += 1;
                                _showMaterialDialog();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '2  นาย บุญญวัฒน์ หัสสากร',
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                c += 1;
                                _showMaterialDialog();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '3  นาย พงษ์สวัสดิ์ ธีระวัฒนกุล',
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                d += 1;
                                _showMaterialDialog();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4  นาย อุชัยยา จันทร์พรหมมา',
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                e += 1;
                                _showMaterialDialog();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '5  นาย ชัยพฤกษ์ รุ่งนิรันดร์',
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              doo(),
            ],
          ),
        ],
      ),
    );
  }
}

class doo extends StatefulWidget {
  const doo({Key? key}) : super(key: key);

  @override
  _dooState createState() => _dooState();
}

class _dooState extends State<doo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
            ),
            child: Text(
              'ดูผล',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
