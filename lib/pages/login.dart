import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/homePages/home.dart';
import '../pages/forgotPassword.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Widget backArrow = SvgPicture.asset(
    'assets/images/svg/left-arrow.svg',
    // semanticsLabel: 'Retour en arrière',
    width: 25,
    height: 25,
  );

  final Widget redRightArrow = SvgPicture.asset(
    'assets/images/svg/red-right-arrow.svg',
    width: 15,
    fit: BoxFit.scaleDown,
  );

  final Widget googleAsset = SvgPicture.asset(
    'assets/images/svg/google.svg',
    width: 25,
    fit: BoxFit.scaleDown,
  );
  final Widget facebookAsset = SvgPicture.asset(
    'assets/images/svg/facebook.svg',
    width: 25,
    fit: BoxFit.scaleDown,
  );

  Widget build(BuildContext context) {
    const mainBgColor = Color(0xfff9f9f9);
    const white = Color(0xffffffff);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainBgColor,
          toolbarHeight: 30,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: Container(
          decoration: const BoxDecoration(
            color: mainBgColor,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 80.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: backArrow,
                          onTap: () => {Navigator.pop(context)},
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text('Login',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold)),
                        ),
                      ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                child: const Column(children: [
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Email',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Password',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: const Text(
                      "Forgot your password ? ",
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      )
                    },
                  ),
                  redRightArrow
                ],
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: FilledButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      )
                    },
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                  )),
            ],
          ),
        )),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Or login with social account",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10),
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: facebookAsset,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10),
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: googleAsset,
                )
              ],
            ),
            const SizedBox(height: 50)
          ],
        ));
  }
}
