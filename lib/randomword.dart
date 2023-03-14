import 'package:flutter/material.dart';
import 'package:gotchaproject/role1.dart';

class RandomWordPage extends StatefulWidget {
  const RandomWordPage({Key? key}) : super(key: key);

  @override
  State<RandomWordPage> createState() => _RandomWordPageState();
}

class _RandomWordPageState extends State<RandomWordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            left: 69, right: 70, top: 90, bottom: 70,),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/spy.png'),

                      const SizedBox(width: 40,),

                      const Text(
                        'Gotcha!',
                        style: TextStyle(
                          fontFamily: 'League Spartan',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),

                    ]
                ),

                const SizedBox(height: 20,),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Please enter a',
                      style: TextStyle(
                        fontFamily: 'League Spartan',
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Random Word',
                      style: TextStyle(
                        fontFamily: 'League Spartan',
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5,),


                const TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Player Name',
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),

                const SizedBox(height: 280,),

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
                        context, MaterialPageRoute(builder: (context) => const RandomWordPage()));
                  },

                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'League Spartan',
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

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
                        context, MaterialPageRoute(
                        builder: (context) => const RoleOnePage()));
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

              ]
          ),
        ),
      ),
    );
  }
}

