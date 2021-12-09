import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {



  static String tag = 'login_page';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
  @override
  Widget build(BuildContext context) {
    final logo = Hero(tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48,
          child: Image.asset('assets/hawk.jpg'),
        )
    );

    final email = TextFormField(
      style: TextStyle(color: Colors.black38),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,

      decoration: InputDecoration(
        labelText: 'Enter Your E-mail Here',
        focusedBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black38, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final password = TextFormField(

      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Your Password Here',
        focusedBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black38, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final loginbutton =OutlineButton(onPressed: (){
        Navigator.pushNamed(context, '/Second');
    },
    child: Text('Login',
    style: GoogleFonts.poiretOne(
      textStyle: Theme.of(context).textTheme.headline4,
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.italic,
    ),
    ),
    );

     final forgetlabel = TextButton(
      onPressed: () {

      },
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: [
            logo,
            SizedBox(height: 5,),
            Center(
              child: Text(
                'Hawks',
                style: GoogleFonts.poiretOne(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 48),
            email,
            SizedBox(height: 15,),
            password,
            SizedBox(height: 15,),
            loginbutton,
            SizedBox(height: 5,),
            forgetlabel,
          ],
        ),
      ),
    );
  }
}