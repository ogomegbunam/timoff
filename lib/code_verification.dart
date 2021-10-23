import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timoff/button.dart';
import 'package:timoff/input_field.dart';
import 'package:timoff/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'const.dart';

class CodeVerification extends StatelessWidget {
  const CodeVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.keyboard_arrow_left,color: Colors.black87,),
        backgroundColor: kwhite,
        //: Text('Reset Password',style: TextStyle(color: Colors.black87),),
        elevation: 0,
      ),
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
                          'We have sent an OTP code to either your \n   email ,input the code to recover your \n                       password.',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black87),
                        ),
                        FormInputField("OTP", emailController, validateEmail),

                        SizedBox(
                          height: 30,
                        ),
                        ButtonComponent(
                          label: 'RESET',
                          onTap: () {},
                        ),

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
