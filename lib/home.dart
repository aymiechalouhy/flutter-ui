import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // context: give the full size of any device
    final size = MediaQuery.of(context).size;
    //SafeArea top space
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlue, Colors.pink])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Text("let's sing", style: TextStyle(fontWeight: FontWeight.bold, fontSize:40 ),),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("“Words make you think. \n Music makes you feel.” "),
            ),
            
           Image(image: AssetImage("assets/sing.png"))
          ]),
        ),
      ),
    );
  }
}
