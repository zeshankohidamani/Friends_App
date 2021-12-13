import 'package:flutter/material.dart';
import 'package:friends_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height - 45;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: myHeight,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    // height: myHeight / 3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Vector.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPaddingHorizontal,
                        vertical: kPaddingVertical,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('images/Vector.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset('images/FRIEND.svg'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Connecting",
                            style: kNormalSPD,
                          ),
                          Text(
                            "Social Communities\n"
                            "around the World",
                            style: kNormalBoldSPD,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    width: double.infinity,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(kPaddingHorizontal),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LOGIN",
                            style: kNormalBoldSPD.copyWith(
                              color: Colors.black,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttonWidget(
                                title: "Login with\nGoogle",
                                clue: true,
                                imglink: "google.svg",
                              ),
                              buttonWidget(
                                title: "Login with\nFacebook",
                                clue: false,
                                imglink: "facebook.svg",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(color: kPrimaryColor),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: kPrimaryColor,
                              ),
                              onPressed: () {},
                              child: Text("Login"),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account?',style: TextStyle(
                                color: kgreyColor,
                              ),),
                              SizedBox(width: 2,),
                              Text('Signup', style: TextStyle(
                                color: kLinkColor,
                                decoration: TextDecoration.underline,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class buttonWidget extends StatelessWidget {
  buttonWidget(
      {required this.title, required this.clue, required this.imglink});

  String imglink;
  String title;
  bool clue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: clue == true ? Colors.red : Colors.blue,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10,
        ),
        child: Row(
          children: [
            SvgPicture.asset('images/$imglink'),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: kNormalSPD.copyWith(
                fontSize: 15,
                color: clue == true ? Colors.red : Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
