import 'package:flutter/material.dart';

class SearchMovieCamera extends StatefulWidget {
  const SearchMovieCamera({super.key});

  @override
  State<SearchMovieCamera> createState() => _SearchMovieCameraState();
}

class _SearchMovieCameraState extends State<SearchMovieCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(

              onPressed: () {

              },
              icon: const Icon(

                Icons.arrow_back_ios_new,
                size: 100,
              )
          ),
          IconButton(


              onPressed: () {

              },
              icon: const Icon(

                Icons.arrow_forward_ios,
                size: 100,
              )
          )
        ],
      )*/
       Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text(
               "TAP TO FIND MOVIE",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 60
               ),
             ),
             SizedBox(
               height: 40,
             ),
             SizedBox(
               height: 350,
               width: 350,
               child: FloatingActionButton(
                 elevation: 70,
                 // backgroundColor: Colors.amberAccent,
                 onPressed: () {

                 },
                 child: Image.asset(
                   "assets/logo/filmify_logo_search_by_camera_screen.png",
                   width: 350,
                   height: 350,
                   fit: BoxFit.cover,
                 ),
               ),
             ),
             // ClipOval(
             //   child: Image.asset(
             //     "assets/logo/filmify_logo_search_by_camera_screen.png",
             //     width: 350,
             //     height: 350,
             //     fit: BoxFit.cover,
             //   ),
             // )
           ],
         ),
      ),
    );
  }
}