

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final argument = (ModalRoute.of(context)!.settings.arguments??<String, dynamic>{}) as Map;
    print(argument["MovieId"]);
    return Scaffold(

      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                  width:size.width,
                  height: 230,
                  child: Image.network("https://img.attacker.tv/resize/1284x773/b7/67/b7672c148127d5f9041a1dc9feb33f15/b7672c148127d5f9041a1dc9feb33f15.jpg")),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Icon(
                         Icons.play_arrow,
                        size: 50, color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: IconButton(
                  onPressed: () {
                    // TODO: Handle download button pressed
                  },
                  icon: const Icon(Icons.download),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 40,
                child: IconButton(
                  onPressed: () {
                    // TODO: Handle share button pressed
                  },
                  icon: Icon(Icons.share),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("${argument["MovieId"]}",textAlign: TextAlign.justify,style: TextStyle(
              fontSize: 18,
              color: Color(0xff0C090A),
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto',

            ),),
          ),
        ],
      ),
    );
  }
}
