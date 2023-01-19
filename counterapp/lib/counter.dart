import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

  int countnum = 0;


class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.white),onPressed: (){}),
        title: Center(
          child: Text("Counter Application", style: GoogleFonts.sourceSansPro(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,          
          ),),
        ),
        actions: [
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white),onPressed: (){}),
        ]
      ),
      body: Container(
        decoration: BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        colors: [
          Colors.red,
          Colors.blue,
        ]
      ),

        ),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 290,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text("$countnum", style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        letterSpacing: 5
                      ),),
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                Container(
                  width: 110,
                  height: 60,
                  child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
        side: BorderSide(color: Colors.black),
        
    )
  )
),onPressed: (){
                    setState(() {
                      countnum = countnum + 1;
                    });
                  }, child: Text("+",style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),)
                  ),
                ),
                Container(
                  width: 110,
                  height: 60,
                  child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
        side: BorderSide(color: Colors.black),
        
    )
  )
),onPressed: (){
                    setState(() {
                      countnum = countnum - 1;
                    });
                  }, child: Text("-", style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    
                  ),)),
                )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 290,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text("Created By Jibran Abdul Jabbar", style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),),
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