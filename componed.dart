
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextdefultFildform({
  required String labelText,
  required IconData prefixIcon,
  required dynamic controllers,
  required TextInputType tybe,
  bool obscureText = false,
  IconData? suffixIcon,


})=>TextFormField(
  keyboardType: tybe,
  controller: controllers,
  obscureText: obscureText,
  validator: (String? value){
    if(value!.isEmpty){
      return 'you must put your your email';
    }
    return null ;
  },
  decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.deepPurple),
        borderRadius: BorderRadius.circular(20),
      ),

      labelText: labelText,
      labelStyle: TextStyle(
          color: Colors.deepPurple

      ),
      prefixIcon: Icon(prefixIcon,
      color: Colors.deepPurple,
      ),
      suffixIcon: suffixIcon != null?
      IconButton(onPressed: (){},
          icon: Icon(suffixIcon,),
      ):null,
      border:  OutlineInputBorder(
        borderSide: BorderSide(color: Colors.deepPurple),
        borderRadius: BorderRadius.circular(20),
      )
  ),
);