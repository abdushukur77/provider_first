
import 'package:flutter/material.dart';
import 'package:flutter_nt_ten/screens/country_screen/country_screen.dart';
import 'package:flutter_nt_ten/screens/user_screen/user_screen.dart';

class HelperScreen extends StatelessWidget {
  const HelperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return CountryScreen();
          }));
        }, child: Text("Countries")),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return UserScreen();
          }));
        }, child: Text("Users")),
      ],
      ),),
    );
  }
}
