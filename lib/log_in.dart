import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timoff/button.dart';
import 'package:timoff/input_field.dart';
import 'package:timoff/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'const.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

              SizedBox(height: 50,),
             Container(
               height: 50,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(

               ),
               child: Image(
             image: AssetImage('assets/timeoff.png'),
               ),

             ),
               SizedBox(height: 20,),
               // Image.asset('assets/timeoff.png'),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  shadowColor: kwhite,
                  color: kwhite,
                  child: Container(
                    width: double.infinity,

                    height: 350,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Sign in your account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black87),
                        ),
                        FormInputField("Email", emailController, validateEmail),
                        InputPassword(),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonComponent(
                          label: 'LOGIN',
                          onTap: () {},
                        ),
                        Center(
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                                fontSize: 15),
                          ),
                        ),
                        GestureDetector(
                          child: Center(
                            child: Text(
                              'RESET',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kactive,
                                  fontSize: 15),
                            ),
                          ),
                        )
                      ],
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
