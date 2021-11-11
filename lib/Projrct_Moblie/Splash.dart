import 'package:flutter/material.dart';
import 'package:untitled/Projrct_Moblie/Random_Money.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => random_money()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.0,
                  child: Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.green.shade800,
                    size: 70.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'LUCKY BAG',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}


