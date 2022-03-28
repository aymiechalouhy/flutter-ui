import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlue, Colors.pink])),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Let's Sing",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("“Words make you think. \n Music makes you feel.”",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                  height: size.height / 2.8,
                  child: const Image(image: AssetImage("assets/sing.png"))),
            ),
            ElevatedButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play("song.mp3");
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    primary: Colors.white,
                    elevation: 5),
                child: const Text("Sing",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )))
          ]),
        ),
      ),
    );
  }
}
