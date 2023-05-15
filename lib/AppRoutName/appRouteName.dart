import 'package:flutter/material.dart';
import 'package:mivie_stream/Screen/Home/Home.dart';
import 'package:mivie_stream/Screen/MovieDetails/details.dart';

import '../Screen/getStarted.dart';

class AppRouteName{

static const  String getStarted= "/get-started";
static const  String home= "/home";
static const  String details= "/details";


 static Route<dynamic>? generate(RouteSettings settings){

  switch(settings.name){
    case AppRouteName.getStarted:
      return MaterialPageRoute(builder: (_)=>const GetStarted(),
      settings: settings
      );

    case AppRouteName.home:
      return PageRouteBuilder(

          settings: settings,
          pageBuilder: (_,__,___)=>const Home(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (_, animation, ___, child){

            return SlideTransition(

              position:Tween<Offset>(
              begin: const Offset(1,0),
              end: Offset.zero,

            ).animate(animation),
              child: child,


            );
        }


      );

    case AppRouteName.details:
      return PageRouteBuilder(

          settings: settings,
          pageBuilder: (_,__,___)=>const Details(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, ___, child){

            return SlideTransition(

              position:Tween<Offset>(
                begin: const Offset(1,0),
                end: Offset.zero,

              ).animate(animation),
              child: child,


            );
          }


      );

  }
  return null;


}

}


