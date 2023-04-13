import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDart extends StatefulWidget {
  const HomeDart({Key? key}) : super(key: key);

  @override
  State<HomeDart> createState() => _HomeDartState();
}

class _HomeDartState extends State<HomeDart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WillPopScope(
        onWillPop: () async {
          Navigator.pop(context);
          return true;
        },
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(230, 233, 241, 1),
          body: Center(child: _bodyUI()),
        ),
      ),
    );
  }

  Widget _bodyUI() {
    return Container(
      width: MediaQuery.of(context).size.width - 25,
      height: MediaQuery.of(context).size.height > 700
          ? MediaQuery.of(context).size.height - 130
          : MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        //color: const Color.fromRGBO(232, 224, 232, 0.5),
        color: const Color.fromRGBO(241, 240, 248, 1),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 3.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Container(
            width: 360,
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage('assets/img.png'),
                  fit: BoxFit.cover,
                  isAntiAlias: true),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Discover Your\n',
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Dream job Here',
                  style: GoogleFonts.roboto(
                      fontSize: 27.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          _button()
        ],
      ),
    );
  }

  Widget _button()
  {
    return Container(
      width: 300,
      height: 70,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white,
          width: 2.0
        )
      ),
      child: Row(
        children: [
         Container(
           width: 150,
           color: Colors.white,
         )
        ],
      ),
    );
  }

}
