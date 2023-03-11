class LoginValidator{

  String validateLogin(String value){
    if(value.isEmpty){
      return "Campo vazio.";
    }
    return null;}
  }

  String validateSenha(String value){
    if(value.isEmpty){
      return "Campo vazio.";
    } if (value.length<8){
      return "Campo deve conter no minimo, 8 caracteres.";
    }
    return null;
  }