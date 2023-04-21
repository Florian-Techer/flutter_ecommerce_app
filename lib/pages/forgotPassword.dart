import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final Widget backArrow = Image.asset(
    'assets/images/png/left-arrow.png',
    // semanticsLabel: 'Retour en arrière',
    width: 20,
    fit: BoxFit.scaleDown,
  );

  Widget build(BuildContext context) {
    const mainBgColor = Color(0xfff9f9f9);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainBgColor,
        toolbarHeight: 30,
        elevation: 0,
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: mainBgColor,
          ),
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              backArrow,
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 25),
                child: const Text(
                  "Forgot Password",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              )
            ]),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    "Please enter your email address. You will receive a link to create a new password via email",
                  ),
                )
              ],
            ),
            const Card(
              margin: EdgeInsets.only(top: 20, bottom: 80),
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
            Container(
                width: double.infinity,
                child: FilledButton(
                    onPressed: null,
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.red)),
                    child: Container(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: const Text(
                        "SEND",
                        style: TextStyle(color: Colors.white, letterSpacing: 1),
                      ),
                    ))),
          ]),
        ),
      )),
    );
  }
}
