class MyValidators {
  static String? displayNameValidator(String?displayName){
    if (displayName == null || displayName.isEmpty){
      return "Display name cannot be Empty!";
    }
    if(displayName.length<3 || displayName.length>20){
      return "Display name must be between 3 and 20 characters";
    }
    return null;
  } 
  static String? emailValidator(String?value){
    if (value!.isEmpty){
      return "Please enter an E-mail Address";
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
    .hasMatch(value)) {
      return "Please enter a valid E-mail";
    }
    return null;
  }
  static String? passwordValidator (String?value){
    if (value!.isEmpty){
      return " Please Enter a Password";
    }
    if (value.length<6){
      return "Password must be at least 6 character ";
    }
    return null;
  }
  static String? repeatPasswordValidator ({String?value , String? Password}){
    if (value!=Password){
      return " Password don't match";
    }
    return null;
  }  

}