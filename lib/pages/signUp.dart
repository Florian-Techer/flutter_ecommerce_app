import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final Widget backArrow = Image.asset(
    'assets/images/png/left-arrow.png',
    // semanticsLabel: 'Retour en arrière',
    width: 20,
    fit: BoxFit.scaleDown,
  );

  final Widget arrowRightRed = Image.asset(
    'assets/images/png/arrow.png',
    width: 15,
    fit: BoxFit.scaleDown,
  );

  final Widget googleAsset = Image.asset(
    'assets/images/png/google.png',
    width: 25,
    fit: BoxFit.scaleDown,
  );
  final Widget facebookAsset = Image.asset(
    'assets/images/png/facebook.png',
    width: 25,
    fit: BoxFit.scaleDown,
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 30,
        elevation: 0,
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  backArrow,
                  const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ))
                ]),
              ),
              const SizedBox(height: 70),
              const Card(
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
              const SizedBox(height: 5),
              const Card(
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
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerRight,
                // child: Container(
                //   child: Row(
                //     children: [
                //       Text(
                //         'Forgot your password?',
                //         style: TextStyle(fontSize: 15.0, color: Colors.black),
                //       ),
                //       SizedBox(
                //         width: 5,
                //       ),
                //       arrowRightRed,
                //     ],
                //     mainAxisAlignment: MainAxisAlignment.end,
                //   ),
                // ),
              ),
              const SizedBox(height: 40),
              Container(
                  width: double.infinity,
                  child: FilledButton(
                      onPressed: null,
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red)),
                      child: Container(
                        child: Text(
                          "SIGN UP",
                          style:
                              TextStyle(color: Colors.white, letterSpacing: 1),
                        ),
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                      ))),
              //const Spacer(),
              Column(children: [
                const Text("Or login with social account"),
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: googleAsset,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: facebookAsset,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(Radius.circular(30))),
                  ),
                ]),
                const SizedBox(
                  height: 30,
                )
              ])
            ],
          ),
        ),
      )),
    );
  }
}
