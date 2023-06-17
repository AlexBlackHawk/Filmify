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
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 5,
              right: 5
            ),
            child: TextField(
              controller: inputtedFilm,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(

                  onPressed: backButtonWork ? () {

                  } : null,
                  icon: const Icon(Icons.arrow_back_ios_new)
                ),
                IconButton(

                  onPressed: forwardButtonWork ? () {

                  } : null,
                  icon: const Icon(Icons.arrow_forward_ios)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}