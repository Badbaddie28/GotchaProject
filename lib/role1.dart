import 'package:flutter/material.dart';
import 'package:gotchaproject/role2.dart';

class RoleOnePage extends StatefulWidget {
  const RoleOnePage({Key? key}) : super(key: key);

  @override
  State<RoleOnePage> createState() => _RoleOnePageState();
}

class _RoleOnePageState extends State<RoleOnePage> {
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
                'PLAYER 1',
                style: TextStyle(
                  fontFamily: 'League Spartan',
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),

              const SizedBox(height: 20,),

              const Text(
                'YOU ARE',
                style: TextStyle(
                  fontFamily: 'League Spartan',
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),

              const Text(
                'A SPY!',
                style: TextStyle(
                  fontFamily: 'League Spartan',
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),

              const SizedBox(height: 20,),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: const Text(
                  'GOODLUCK ON GUESSING THE WORD!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'League Spartan',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(height: 40,),

              // understood button
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
                      context, MaterialPageRoute(builder: (context) => const RoleTwoPage()));
                },

                child: const Text(
                  'Understood!',
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
