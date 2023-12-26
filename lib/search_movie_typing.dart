import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SearchMovieTyping extends StatefulWidget {
  const SearchMovieTyping({super.key});

  @override
  State<SearchMovieTyping> createState() => _SearchMovieTypingState();
}

class _SearchMovieTypingState extends State<SearchMovieTyping> {
  final TextEditingController inputtedFilm = TextEditingController();
  final PageController foundedFilms = PageController();

  bool backButtonWork = false;
  bool forwardButtonWork = true;

  final List<String> postersList = [
    'http://www.impawards.com/2023/breakwater_xlg.html',
    'http://www.impawards.com/2024/civil_war_xlg.html',
    'http://www.impawards.com/intl/mexico/2023/totem_ver2_xlg.html',
    'http://www.impawards.com/2024/underdoggs_xlg.html',
    'http://www.impawards.com/2023/good_grief_xlg.html',
    'http://www.impawards.com/2024/destroy_all_neighbors_xlg.html'
  ];

  List<Widget> postersSliders = <Widget>[];

  List<Widget> createNewsSliders(List<String> imageList) {
    return imageList.map((item) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(item, fit: BoxFit.cover, height: 500.0, width: 250.0,)),
    ))
        .toList();
  }

  @override
  void initState() {
    postersSliders = createNewsSliders(postersList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Padding(
         padding: const EdgeInsets.only(
           top: 75,
           bottom: 10,
         ),
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(
                 left: 18,
                 right: 15
               ),
               child: TextField(
                 controller: inputtedFilm,
                 decoration: InputDecoration(
                   hintText: "Input film title",
                   suffixIcon: IconButton(
                     icon: const Icon(Icons.search),
                     onPressed: () {},
                   )
                 ),
               ),
             ),
             const SizedBox(
               height: 35,
             ),
             Row(
               // crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 IconButton(

                     onPressed: backButtonWork ? () {

                     } : null,
                     icon: const Icon(
                       Icons.arrow_back_ios,
                       size: 100,
                     )
                 ),
                 CarouselSlider(
                   options: CarouselOptions(
                     autoPlay: false,
                     aspectRatio: 2.0,
                     enlargeCenterPage: true,
                   ),
                   items: postersSliders,
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
             ),
           ],
         ),
       ),
    );
  }
}