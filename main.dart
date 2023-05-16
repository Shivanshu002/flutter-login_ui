import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // best solution of bottom overflow (xyz) pixales
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/bnny.jpg'),
                fit: BoxFit.fill,
              )),
              child: Stack(children: <Widget>[
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 350),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(242, 39, 146, 233),
                              blurRadius: 20.0,
                              offset: Offset(1, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey))),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email or Phone Number",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400]))),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          // decoration: BoxDecoration(
                          // ),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400]))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(143, 42, 82, 156),
                          Color.fromARGB(143, 64, 26, 170)
                        ])),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Forget password",
                    style: TextStyle(color: Color.fromARGB(143, 34, 23, 138)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
