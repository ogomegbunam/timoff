import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timoff/const.dart';
//import 'package:email_validator/email_validator.dart';

class InputPassword extends StatefulWidget {
  const InputPassword({Key? key}) : super(key: key);

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

var _hidePassword = true;
TextEditingController emailController = new TextEditingController();


class _InputPasswordState extends State<InputPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        cursorColor: kgrey,
        keyboardType: TextInputType.emailAddress,
        obscureText: _hidePassword,
        //validator:(value) => EmailValidator.validate(value) ? null : "Please enter a valid email",
        decoration: InputDecoration(
            labelStyle: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: kgrey),
            focusColor: Colors.grey,
            labelText: 'Password',
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: kgrey)),
            border: UnderlineInputBorder(borderSide: BorderSide(color: kgrey)),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: kgrey)),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _hidePassword = !_hidePassword;
                  print(_hidePassword);
                });
              },
              child: _hidePassword
                  ? Icon(Icons.remove_red_eye_rounded)
                  : Icon(Icons.visibility_off),
            )),
      ),
    );
  }
}

class FormInputField extends StatelessWidget {
  String label;
  TextEditingController controller;

  String? Function(String?) validate;

  // Function(String) usernameValidator = (String username){
  //   if(username.isEmpty){
  //     return 'Username empty';
  //   }else if(username.length < 3){
  //     return 'Username short';
  //   }
  //
  //   return null;
  // };
  //
  // //password validator possible structure
  // passwordValidator(String password){
  //   if(password.isEmpty){
  //     return 'Password empty';
  //   }else if(password.length < 3){
  //     return 'PasswordShort';
  //   }
  //   return null;
  // }

  FormInputField(this.label, this.controller, this.validate);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: kgrey,
        controller: controller,
        keyboardType:
            label == "Email" ? TextInputType.emailAddress : TextInputType.text,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelStyle:
              TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: kgrey),
          focusColor: Colors.grey,
          labelText: label,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kgrey)),
          border: UnderlineInputBorder(borderSide: BorderSide(color: kgrey)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kgrey)),
        ),
        validator: validate,
      ),
    );
  }
}
