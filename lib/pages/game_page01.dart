import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GamePage01 extends StatefulWidget {
  const GamePage01({Key? key}) : super(key: key);

  @override
  _GamePage01State createState() => _GamePage01State();
}
 class _GamePage01State extends State<GamePage01> {

   @override
   Widget build(BuildContext context) {
     var num = Random().nextInt(100) + 1;
     return Scaffold(
       appBar: AppBar(title: Text('GUESS THE NUMBER')),
       body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Row(
               children: [
                 Icon(
                   Icons.person, // รูปไอคอน
                   size: 80.0, // ขนาดไอคอน
                   color: Colors.blue, // สีไอคอน
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                       'ณัฐดนัย ดำรงพาณิชกิจ',
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         fontSize: 15.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Row(
                       children: <Widget>[
                         Icon(
                           Icons.star,
                           color: Colors.orange,
                         ),
                         Icon(
                           Icons.star,
                           color: Colors.orange,
                         ),
                         Icon(
                           Icons.star,
                           color: Colors.orange,
                         ),
                         Icon(
                           Icons.star,
                           color: Colors.orange,
                         ),
                         Icon(
                           Icons.star_border,
                           color: Colors.orange,
                         ),
                       ],
                     ),
                   ],
                 ),
               ],
             ),
             Center(
               child: Text(
                 num.toString(),
                 style: TextStyle(fontSize: 120.0, color: Colors.blue),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(
                 onPressed: () {
                   setState(() {
                     num = Random().nextInt(100) + 1;
                   });
                 },
                 child: Text(
                   'RANDOM',
                   style: TextStyle(fontSize: 40.0),
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }









