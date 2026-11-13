
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hobbies(),
    ),
  );
}

class Hobbies extends StatelessWidget {
  const Hobbies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("My Hobbies"),
        backgroundColor: Colors.white,
      ),

      body: Container(
        color: Colors.grey[400],

        child: Padding(
          padding: EdgeInsets.all(40),

          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 155,

                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Center(
                  child: Row(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 20,
                        ),

                        child: Icon(
                          Icons.travel_explore,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),

                      Text(
                        "Travelling",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),

                      
                      

                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Container(
                width: double.infinity,
                height: 155,

                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Center(
                  child: Row(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 20,
                        ),

                        child: Icon(
                          Icons.skateboarding,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),

                      Text(
                        "Skating",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


