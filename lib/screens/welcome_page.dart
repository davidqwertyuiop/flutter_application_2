import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/classes/language_constants.dart';
import 'package:flutter_application_2/dart_files/constants.dart';
import 'package:flutter_application_2/screens/screen.dart';
import 'package:flutter_application_2/widgets/widgets.dart';



class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key, });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children:[Flexible(
          child: Column(
            children: [ Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: const Image(image: AssetImage('assets/images/team_illustration.png'),
              ),
            ),
          ),
          const SizedBox(height:15),
          Text(translation(context).multilingualsmartIrrigationapplication,
          style: kHeadline,
          textAlign: TextAlign.center,
          ),
          const SizedBox(height:10),
          SizedBox(
          width: MediaQuery.of(context).size.width*0.8,
          child: const Text("Supervisor: DR O.K Ogidan \n Project By : Fadeyibi Oluwasijibomi",
          style: kBodyText,
          textAlign: TextAlign.center,
          ),)
        
            ],
         ),
        ),
        Container(height: 50, decoration: BoxDecoration(color: Colors.grey[850], borderRadius: BorderRadius.circular(18),),
        child: Row( 
          children:[ 
            Expanded(child: 
            MyTextButton(
              bgColor: Colors.white,
              buttonName: translation(context).register,
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>const RegisterPage())
            );},
              textColor: Colors.black87, onTap: () {  },
            ),),
            Expanded(child: 
            MyTextButton(
              bgColor: Colors.transparent,
              buttonName: translation(context).signin,
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>   const SignInPage(),
                )); 
              },
              textColor: Colors.white, onTap: () {  },
            ),)
            ],),),
            
      ],),),),);
  }
}
