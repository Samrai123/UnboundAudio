import 'package:eduhub/auth/register.dart';
import 'package:eduhub/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = true;

  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Login Your Account",
              style: kBodyTextB,
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: "Enter Email",
                      hintStyle: kBodyText,
                      labelText: "Email",
                      labelStyle: kBodyText,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black87, width: 1),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: "Enter Password",
                      hintStyle: kBodyText,
                      labelText: "Password",
                      labelStyle: kBodyText,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black87, width: 1),
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          })),
                  obscureText: !_passwordVisible,
                  onChanged: (value) {},
                  validator: (val) =>
                      val!.length < 8 ? 'Password too short.' : null,
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     PageTransition(
                        //         type: PageTransitionType.rightToLeft,
                        //         child: Register()));
                      },
                      child: const Text("Forget your password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 61, 114, 158),
                              fontSize: 15,
                              fontFamily: 'CourierPrime')),
                    )
                  ],
                )),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "Login",
                      style: kBodyText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Doesnt have a account?", style: kBodyText),
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Register()));
                      },
                      child: const Text("Register Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 61, 114, 158),
                              fontSize: 15,
                              fontFamily: 'CourierPrime')),
                    )
                  ],
                )),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
