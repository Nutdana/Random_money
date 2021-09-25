import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Midteam extends StatefulWidget {
  const Midteam({Key? key}) : super(key: key);

  @override
  _MidteamState createState() => _MidteamState();
}

class _MidteamState extends State<Midteam> {
  int r = 0;
  int b = 0;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Colors.red.shade900,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 250,
                child: Image(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Women's Light(57-60kg)Semi-final",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xFFA00000),
                    size: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 25.0,
                            child: Image(
                              image: AssetImage(
                                "assets/images/flag_ireland.png",
                              ),
                            ),
                          ),
                          Text('  IRELAND'),
                        ],
                      ),
                      Text('HARRINGTON Kellie Anne'),
                    ],
                  ),
                ],
              ),
              if (r >= 3) Icon(Icons.check),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xFF0000A0),
                    size: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 25.0,
                            child: Image(
                              image: AssetImage(
                                "assets/images/flag_thailand.png",
                              ),
                            ),
                          ),
                          Text('  THAILAND'),
                        ],
                      ),
                      Text('SEESONDEE Sudaporn'),
                    ],
                  ),
                ],
              ),
              if (b >= 3) Icon(Icons.check),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 5.0,
                  color: Color(0xFFA00000),
                ),
              ),
              Expanded(
                child: Container(
                  height: 5.0,
                  color: Color(0xFF0000A0),
                ),
              )
            ],
          ),
          //รอบ1
          if (i == 0)
            Expanded(
              child: Container(),
            ),
          if (i >= 1)
            Column(
              children: [
                Container(
                  height: 15,
                ),
                Text('ROUND 1'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (r > b)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r > b)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b > r)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b > r)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b == r)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b == r)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          if (i == 1)
            Expanded(
              child: Container(),
            ),
          if (i >= 2)
            Column(
              children: [
                Container(
                  height: 15,
                ),
                Text('ROUND 2'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (r > b)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r > b)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b > r)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b > r)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b == r)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b == r)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          if (i == 2)
            Expanded(
              child: Container(),
            ),
          if (i >= 3)
            Column(
              children: [
                Container(
                  height: 15,
                ),
                Text('ROUND 3'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (r > b)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r > b)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b > r)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b > r)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b == r)
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (b == r)
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          if (i == 3)
            Column(
              children: [
                Container(
                  height: 15,
                ),
                Text('TOTAL'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (r == 3 && b == 0)
                      Text(
                        '30',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r == 3 && b == 0)
                    Text(
                      '27',
                      style: TextStyle(fontSize: 20),
                    ),
                    if (r == 0 && b == 3)
                      Text(
                        '27',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r == 0 && b == 3)
                    Text(
                      '30',
                      style: TextStyle(fontSize: 20),
                    ),
                    if (r == 1 && b == 2)
                      Text(
                        '28',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r == 1 && b == 2)
                    Text(
                      '29',
                      style: TextStyle(fontSize: 20),
                    ),
                    if (r == 2 && b == 1)
                      Text(
                        '29',
                        style: TextStyle(fontSize: 20),
                      ),
                    if (r == 2 && b == 1)
                    Text(
                      '28',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ],
            ),


          if (i >= 3)
            Expanded(
              child: Container(),
            ),
          if (i < 3)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          r = r + 1;
                          i = i + 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFA00000),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          b = b + 1;
                          i = i + 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0000A0),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if(i>=3)
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        r = 0;
                        i = 0;
                        b = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Icon(
                      Icons.clear,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
