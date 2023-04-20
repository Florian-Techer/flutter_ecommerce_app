import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 30,
                elevation: 0
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            body: SafeArea(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                    ),
                    // padding: EdgeInsets.all(10.0),
                    child: Column(
                        children: [
                            SizedBox(height: 30),
                        ]
                    )
                )
            )
        );
    }
}