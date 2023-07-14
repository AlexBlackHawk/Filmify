import 'package:flutter/material.dart';

class SearchMovieTyping extends StatefulWidget {
  const SearchMovieTyping({super.key});

  @override
  State<SearchMovieTyping> createState() => _SearchMovieTypingState();
}

class _SearchMovieTypingState extends State<SearchMovieTyping> {
  final TextEditingController inputtedFilm = TextEditingController();
  final PageController foundedFilms = PageController();

  bool backButtonWork = true;
  bool forwardButtonWork = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(

              onPressed: backButtonWork ? () {

              } : null,
              icon: const Icon(

                Icons.arrow_back_ios_new,
                size: 100,
              )
          ),
          IconButton(


              onPressed: forwardButtonWork ? () {

              } : null,
              icon: const Icon(

                Icons.arrow_forward_ios,
                size: 100,
              )
          )
        ],
      )
      // Padding(
      //   padding: const EdgeInsets.only(
      //     top: 100,
      //     bottom: 10,
      //   ),
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(
      //           left: 18,
      //           right: 15
      //         ),
      //         child: TextField(
      //           controller: inputtedFilm,
      //           decoration: InputDecoration(
      //             hintText: "Input film title",
      //             suffixIcon: IconButton(
      //               icon: const Icon(Icons.search),
      //               onPressed: () {},
      //             )
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 35,
      //       ),
      //       Row(
      //         // crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           IconButton(
      //
      //               onPressed: backButtonWork ? () {
      //
      //               } : null,
      //               icon: const Icon(
      //                 Icons.arrow_back_ios_new,
      //                 size: 100,
      //               )
      //           ),
      //           IconButton(
      //
      //               onPressed: forwardButtonWork ? () {
      //
      //               } : null,
      //               icon: const Icon(
      //                 Icons.arrow_forward_ios,
      //                 size: 100,
      //               )
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}