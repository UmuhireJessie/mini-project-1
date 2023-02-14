import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Signin.dart';

class SignOutPage extends StatefulWidget {
  @override
  State<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Sign Up',
              style: GoogleFonts.bungee(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [Text('First Name')],
              ),
            ),
            SizedBox(height: 5),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.deepOrange.shade200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '   first Name'),
                    ),
                  ),
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [Text('Second Name')],
              ),
            ),
            SizedBox(height: 5),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.deepOrange.shade200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '   Second Name'),
                    ),
                  ),
                )),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [Text('Email')],
              ),
            ),
            SizedBox(height: 5),

            //Email text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.deepOrange.shade200),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '   Enter your email'),
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [Text('Password')],
              ),
            ),
            SizedBox(height: 5),
            //password textfield

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.deepOrange.shade200),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: '   Password'),
                ),
              ),
            ),

            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [Text('Confirm password')],
              ),
            ),
            SizedBox(height: 5),

            // confirm password text field

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.deepOrange.shade200),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '   Confirm password'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                  Text(
                    'By clicking here, you agree to our Terms. Learn more \n on how we collect, use, and share your data in our\n Privacy Policy. *',
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'DM Sans Med',
                        color: Color(0xff000000)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )),
                )),
            SizedBox(height: 7),
            Text(
              'OR',
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  color: Color(0xff000000)),
            ),
            SizedBox(height: 7),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.deepOrange.shade200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.all(30),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/google.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Text(
                            ' Sign Up with google',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                        ]),
                  )),
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account already?',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'DM Sans',
                      color: Color(0xff000000)),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'DM Sans',
                        color: Color(0xff305489),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20)
          ],
        )),
      ),
    );
  }
}
