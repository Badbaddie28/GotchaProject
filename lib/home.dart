import 'package:flutter/material.dart';
import 'package:gotchaproject/players.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.only(left: 69, right: 70, top: 122, bottom: 158, ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              // photo
              Image.asset('assets/images/spy.png'),

              // gotcha text
              const SizedBox(height: 10,),
              const Text(
                'Gotcha!',
                style: TextStyle(
                  fontFamily: 'League Spartan',
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),

              const SizedBox(height: 40,),

              // play game button
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.black,
                  shape: const StadiumBorder(),
                  side: const BorderSide(
                      color: Colors.white,
                      width: 2
                  ),
                ),

                // function of play button
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const PlayersPage()));
                },

                child: const Text(
                  'Play Game',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'League Spartan',
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
