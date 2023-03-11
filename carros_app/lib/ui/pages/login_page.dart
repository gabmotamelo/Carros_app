import 'package:carros_app/ui/validators/login_validator.dart';
import 'package:carros_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginValidator{
  final _loginController = TextEditingController();
  final _senhaController = TextEditingController();
  final FocusNode _focusSenha = FocusNode();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(height: 20.0),
            CustomTextFormField(
              controller: _loginController,
              keyboardType: TextInputType.text,
              requestFocus: _focusSenha,
              labeltext: "Login",
              hintText: "example@email.com",
              validator: validateLogin,
            ),
            SizedBox(height: 10.0,),
            CustomTextFormField(
              controller: _senhaController,
              focusNode: _focusSenha,
              keyboardType: TextInputType.text,
              labeltext: "Senha",
              hintText: "Letras, números e caracteres",
              obscureText: true,
              validator: validateSenha,
            ),
            SizedBox(height: 40.0),
            SizedBox(
              height: 45,
              child: RaisedButton(
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    print("Validou com sucesso.");
                  }else{
                    print("Não validado.");
                  }
                },
                color: Colors.indigo,
                textColor: Colors.white,
                child: Text("Entrar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

