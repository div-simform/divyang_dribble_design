import 'package:divyang_dribble_design/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DribbleDesign extends StatefulWidget {
  const DribbleDesign({Key? key}) : super(key: key);

  @override
  State<DribbleDesign> createState() => _DribbleDesignState();
}

class _DribbleDesignState extends State<DribbleDesign> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    print(
        "Pixel  : ${MediaQuery.of(context).size.width} : ${MediaQuery.of(context).size.height}");
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: _bodyUI(context: context),
        ),
      ),
      backgroundColor: const Color.fromRGBO(230, 233, 241, 1),
    );
  }

  Widget _bodyUI({BuildContext? context}) {
    return Container(
      width: MediaQuery.of(context!).size.width - 25,
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
        children: <Widget>[
          const SizedBox(height: 60),
          Text(
            'Hello Again!',
            textAlign: TextAlign.center,
            style:
                GoogleFonts.roboto(fontSize: 25.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 70.0),
            child: Text(
              "Welcome back you've been missed!",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  fontSize: 22.0, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          _userNameTextField(),
          const SizedBox(
            height: 30.0,
          ),
          _passwordTextField(),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: 330.0,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(blurRadius: 20.0, color: Colors.white.withOpacity(0.3))
            ]),
            child: Text(
              'Recovery Password',
              //textAlign: TextAlign.right,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, color: Colors.blueGrey),
            ),
          ),
          const SizedBox(height: 40.0),
          _signInButton(),
          const SizedBox(height: 30.0),
          _orContinueWith(),
          const SizedBox(height: 30.0),
          _bottomImage(),
          const SizedBox(
            height: 40.0,
          ),
          _notRegister()
        ],
      ),
    );
  }

  Widget _userNameTextField() {
    return Container(
      width: 330.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(1.0, 1.0),
            blurRadius: 5.0,
            color: Colors.white.withOpacity(0.3),
          )
        ],
      ),
      child: TextField(
        cursorColor: Colors.grey[500],
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          hintText: "Enter username",
          hintStyle: GoogleFonts.roboto(
            color: Colors.grey[500],
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(1.0, 1.0),
              blurRadius: 5.0,
              color: Colors.white.withOpacity(0.3))
        ],
      ),
      child: TextField(
        cursorColor: Colors.grey[500],
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          hintText: "Password",
          hintStyle: GoogleFonts.roboto(
            color: Colors.grey[500],
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              color: Colors.grey[500],
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              icon: Icon(
                  !isSelected ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return Container(
      width: 330,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(252, 107, 104, 1.0),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomeDart(),
            ),
          );
        },
        child: Text(
          'Sign in',
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  Widget _bottomImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2.0, color: Colors.white)),
          child: Image.network(
            "http://pngimg.com/uploads/google/google_PNG19635.png",
          ),
        ),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2.0, color: Colors.white)),
          child: Image.network(
              "https://pngimg.com/uploads/apple_logo/small/apple_logo_PNG19674.png"),
        ),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2.0, color: Colors.white)),
          child: Image.network(
            "https://pngimg.com/uploads/facebook_logos/small/facebook_logos_PNG19754.png",
          ),
        )
      ],
    );
  }

  Widget _orContinueWith() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            indent: 40.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        Text(
          "Or continue with ",
          style: GoogleFonts.roboto(color: Colors.black87, fontSize: 14.0),
        ),
        const Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 40.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _notRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Not a member?",
          style: GoogleFonts.roboto(color: Colors.black, fontSize: 15.0),
        ),
        const SizedBox(width: 3.0),
        Text(
          "Register now",
          style: GoogleFonts.roboto(color: Colors.blue, fontSize: 15.0),
        ),
      ],
    );
  }
}
