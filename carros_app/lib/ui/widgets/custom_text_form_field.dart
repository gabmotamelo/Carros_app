import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  String labeltext;
  String hintText;
  TextInputType keyboardType;
  bool obscureText;
  TextEditingController controller;
  FocusNode focusNode;
  FocusNode requestFocus;
  FormFieldValidator<String> validator;

  CustomTextFormField({
    @required this.controller,
    @required this.labeltext,
    @required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.focusNode,
    this.requestFocus,
    this.validator,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      keyboardType: this.keyboardType,
      focusNode: this.focusNode,
      onFieldSubmitted: (value){
        if(this.requestFocus != null){
          FocusScope.of(context).requestFocus(requestFocus);
        }
      },
      decoration: InputDecoration(
        labelText: this.labeltext,
        labelStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400
        ),
        hintText: this.hintText,
        hintStyle: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
            color: Colors.grey[600]
        ),
        alignLabelWithHint: true,
        ),
      obscureText: this.obscureText,
      validator: this.validator,
      );
    }
  }
