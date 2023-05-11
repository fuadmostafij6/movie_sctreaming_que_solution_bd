

import 'package:flutter/material.dart';

import '../AppRoutName/appRouteName.dart';
import '../Const/ColorConst.dart';
class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        backgroundColor: AppColor.scaffoldBg,
      body:

     Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text("BongoFlixBd",
         style: TextStyle(
           color: Colors.white,
           fontSize: 24
         ),
         ),
         SizedBox(height: 10,),
         Padding(
           padding: EdgeInsets.all(8),
           child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
             style: TextStyle(
                 color: Colors.white.withOpacity(0.7),
                 fontSize: 16
             ),
           ),
         ),
         SizedBox(height: 15,),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 50,
             width: size.width,

             child: ElevatedButton(
               onPressed: (){
                 Navigator.pushReplacementNamed(context, AppRouteName.home);
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.black.withOpacity(0.5)
               ),
               child: const Text("Get Started"),
             ),
           ),
         ),
       ],
     )
    );
  }
}
