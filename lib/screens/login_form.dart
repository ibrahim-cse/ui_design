import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_form.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  int _value = 1;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/loginFormIMG.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 50.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/loginLogo.jpg'),
                        ),
                      ),
                      height: 150.0,
                      width: 150.0,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/spectrumLogo.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      height: 80.0,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        controller: username,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: "Username",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.white),
                          // hintText: "Enter your email",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        controller: username,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: "Password",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.white),
                          // hintText: "Enter your password",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        height: 50.0,
                        child: FlatButton(
                          color: Colors.blue,
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DrawerForm()),
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                            value: 1,
                            activeColor: Colors.white,
                            groupValue: false,
                            onChanged: (value) {
                              setState(() {
                                // _value = value as int;
                              });
                            }),
                        const Text(
                          'Remember Password',
                          style: TextStyle(fontSize: 17.0, color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RichText(
                        text: const TextSpan(
                          text:
                              'By downloading and using the application, you aggree to the ',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'Terms of the (EULA) agreement Privacy Policy.',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
