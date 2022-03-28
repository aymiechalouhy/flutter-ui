import 'package:flutter/material.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children:  [
            const Text("let's sing", style: TextStyle(fontWeight: FontWeight.bold, fontSize:40 ),
            ),
            
          const   SizedBox(
               height: 20,
             ),
           const    Text("“Words make you think. \n Music makes you feel.”",
              style: TextStyle(fontWeight: FontWeight.bold)
              ),
              SizedBox(
               height: size.height /2.8,
               child: const Image(image: AssetImage("assets/sing.png")))
          ]),
        ),
      ),
    );
  }
}