import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Numberaudio.dart';
import 'dart:ui';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AudioCache audioplayer = AudioCache();
  //int r=0;
  List<Numberaudio> array = [
    //Numberaudio("one.wav", Colors.blue, "one"),
    Numberaudio("one.wav", Colors.blue, "one"),
    Numberaudio("two.wav", Colors.purple, "two"),
    Numberaudio("three.wav", Colors.pink, "three"),
    Numberaudio("four.wav", Colors.yellow, "four"),
    Numberaudio("five.wav", Colors.indigo, "five"),
    Numberaudio("six.wav", Colors.green, "six"),
    Numberaudio("seven.wav", Colors.orange, "seven"),
    Numberaudio("eight.wav", Colors.red, "eight"),
    Numberaudio("nine.wav", Colors.blueGrey, "nine"),
    Numberaudio("ten.wav", Colors.teal, "ten"),
  ];

  play(String uri) {
    audioplayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish numbers"),
        toolbarHeight: 25,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image(image: AssetImage("images/logo.png")),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(25),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: array.length,
                  itemBuilder: (context, i) => SizedBox(
                    height: 80,
                    width: 40,
                    child: RaisedButton(
                      onPressed: () {
                        play(array[i].audiouri);
                      },
                      color: array[i].buttoncolor,
                      child: Text(
                        array[i].buttontext,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Spanish numbers"),
//         toolbarHeight: 40,
//       ),
//       body: Container(
//         margin: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image(
//               image: AssetImage("images/logo.png"),
//             ),
//             Container(
//               margin: EdgeInsets.fromLTRB(100, 50, 0, 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Row(
//                     //RcrossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[1].audiouri);
//                         },
//                         color: array[1].buttoncolor,
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           array[1].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[2].audiouri);
//                         },
//                         color: array[2].buttoncolor,
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           array[2].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[3].audiouri);
//                         },
//                         color: array[3].buttoncolor,
//                         child: Text(
//                           array[3].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[4].audiouri);
//                         },
//                         color: array[4].buttoncolor,
//                         child: Text(
//                           array[4].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[5].audiouri);
//                         },
//                         color: array[5].buttoncolor,
//                         child: Text(
//                           array[5].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[6].audiouri);
//                         },
//                         color: array[6].buttoncolor,
//                         child: Text(
//                           array[6].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[7].audiouri);
//                         },
//                         color: array[7].buttoncolor,
//                         child: Text(
//                           array[7].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[8].audiouri);
//                         },
//                         color: array[8].buttoncolor,
//                         child: Text(
//                           array[8].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[9].audiouri);
//                         },
//                         color: array[9].buttoncolor,
//                         child: Text(
//                           array[9].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//                           play(array[10].audiouri);
//                         },
//                         color: array[10].buttoncolor,
//                         child: Text(
//                           array[10].buttontext,
//                           style: TextStyle(fontSize: 15, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
