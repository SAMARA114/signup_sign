import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class  Loginpage extends StatefulWidget
{
  @override
  State<Loginpage> createState() => _LoginPageState();
       
  
  
}

class _LoginPageState extends State<Loginpage>{

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
   return Container(
     decoration: const BoxDecoration(
       gradient: LinearGradient(
         begin: Alignment.topRight,
           end: Alignment.bottomLeft,
           colors: [
         Colors.blue,
         Colors.red,
       ])
     ),
     child: Scaffold(
       
       backgroundColor: Colors.transparent,
       body: _page(),
     ),
   );
  }
  
  Widget _page()
  {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(),
          const SizedBox(height: 50),
          _inputField("username",usernameController),
          const SizedBox(height: 50),
          _inputField("password",usernameController, ispassword: false),
          const SizedBox(height: 50),
          _loginbtn(),
          const SizedBox(height: 50),
          _extraText(),
        ],
      ),
    );
  }
  
Widget _icon(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 2),
        shape: BoxShape.circle),
      child: const Icon(Icons.person, color: Colors.white,size: 120),
    );
}

Widget _inputField(String hintText,TextEditingController controller,
    {ispassword =false}){
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: Colors.white));
    return TextField(

      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: ispassword,
    );
}

Widget _loginbtn(){
    return ElevatedButton(onPressed: () {

      debugPrint("username :"+ usernameController.text);
      debugPrint("password :"+ passwordController.text);
    },
        child: const SizedBox(
          width: double.infinity,
          child: Text("Sign in",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255,228, 226, 226),
        onPrimary: Colors.blue,

      ),
    );
}


Widget _extraText(){
    return const Text("'can't access to your account",textAlign: TextAlign.center,
    style: TextStyle(fontSize: 16,color: Colors.white),
    );
}

}