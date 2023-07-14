import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'movie_news_delegate.dart';

class MovieNews extends StatefulWidget {
  const MovieNews({super.key});

  @override
  State<MovieNews> createState() => _MovieNewsState();
}

class _MovieNewsState extends State<MovieNews> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  List<Widget> newsSliders = <Widget>[];

  List<Widget> createNewsSliders(List<String> imageList) {
    return imageList.map((item) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(item, fit: BoxFit.cover, width: 1000.0)),
    ))
        .toList();
  }

  @override
  void initState() {
    newsSliders = createNewsSliders(imgList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.only(top: 70),
            sliver: SliverPersistentHeader(
              pinned: false,
              floating: true,
              delegate: MovieNewsPhotosDelegate(
                maxExtent: 350.0,
                minExtent: 100.0,
                newsPhotos: newsSliders,
              ),
            ),
          ),
          // --------------------------------------------
          // SliverPadding(
          //   padding: const EdgeInsets.only(top: 70),
          //   sliver: SliverToBoxAdapter(
          //     child: Column(
          //       children: [
          //         CarouselSlider(
          //           options: CarouselOptions(
          //             autoPlay: false,
          //             aspectRatio: 2.0,
          //             enlargeCenterPage: true,
          //           ),
          //           items: newsSliders,
          //         ),
          //         const SizedBox(
          //           height: 20,
          //         ),
          //         const Divider(
          //           color: Colors.white,
          //           height: 1.5,
          //         ),
          //         const SizedBox(
          //           height: 10,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // ------------------------------------------------
          const SliverPadding(
            padding: EdgeInsets.only(left: 15, right: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                      "\"We’re Going To Crush Top Gun\": MI 7 Director's Ambitious Goal For New Tom Cruise Movie"
                  ),
                  Text(
                      "Mission: Impossible - Dead Reckoning Part One director Christopher McQuarrie reveals his hopes that the upcoming movie will surpass the success of Top Gun: Maverick. The Mission: Impossible film series has been running since the original movie in 1996, with Tom Cruise in the lead role as IMF agent Ethan Hunt. The six movies to date have grossed more than \$3.5 billion globally, making the franchise one of the highest-grossing of all time. McQuarrie joined the franchise when he wrote and directed the fifth movie in the series, Mission: Impossible - Rogue Nation, and he will helm movies seven and eight."
                          "During an interview with Total Film (via Games Radar), McQuarrie shares his hopes for Mission: Impossible - Dead Reckoning Part One, and explains how the creative forces behind the movie don't view themselves as competing with other franchises, so much as competing with themselves. He even hopes to surpass Cruise's most recent film."
                          "A star of one of Tom Hanks’ biggest 1980s hits explains why the movie never got a sequel. He’s still a big box office name to this day, as proven by 2023’s sleeper hit A Man Called Otto, but in the '80s and '90s Hanks was on the top of the heap when it came to Hollywood bankability. Hanks’ great run as a box office monster may have reached its zenith with a string of blockbusters including Sleepless in Seattle, Philadelphia, Forrest Gump, Apollo 13 and Toy Story, but it actually began back in 1988 with his first-ever \$100+ million hit, a coming-of-age fantasy that took full advantage of his combination of winning charm, comedic chops and budding dramatic skills."
                          "1988’s Big indeed lived up to its title at the box office, grossing \$151 million worldwide, but in an era where nearly every hit film seemed to get a sequel, Big never received a follow-up. Just why Big never got the sequel it may have deserved was addressed recently by one of the film’s stars, Elizabeth Perkins, who was asked by ComicBook.com if there ever was discussion about Big 2."
                  ),
                ],
              ),
            ),
          )
          // SliverToBoxAdapter(
          //   child: Column(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(top: 70),
          //         child: CarouselSlider(
          //           options: CarouselOptions(
          //             autoPlay: false,
          //             aspectRatio: 2.0,
          //             enlargeCenterPage: true,
          //           ),
          //           items: newsSliders,
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 20,
          //       ),
          //       const Divider(
          //         color: Colors.white,
          //         height: 1.5,
          //       ),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       const Text(
          //           "\"We’re Going To Crush Top Gun\": MI 7 Director's Ambitious Goal For New Tom Cruise Movie"
          //       ),
          //       const Text(
          //           "Mission: Impossible - Dead Reckoning Part One director Christopher McQuarrie reveals his hopes that the upcoming movie will surpass the success of Top Gun: Maverick. The Mission: Impossible film series has been running since the original movie in 1996, with Tom Cruise in the lead role as IMF agent Ethan Hunt. The six movies to date have grossed more than \$3.5 billion globally, making the franchise one of the highest-grossing of all time. McQuarrie joined the franchise when he wrote and directed the fifth movie in the series, Mission: Impossible - Rogue Nation, and he will helm movies seven and eight."
          //               "During an interview with Total Film (via Games Radar), McQuarrie shares his hopes for Mission: Impossible - Dead Reckoning Part One, and explains how the creative forces behind the movie don't view themselves as competing with other franchises, so much as competing with themselves. He even hopes to surpass Cruise's most recent film."
          //               "A star of one of Tom Hanks’ biggest 1980s hits explains why the movie never got a sequel. He’s still a big box office name to this day, as proven by 2023’s sleeper hit A Man Called Otto, but in the '80s and '90s Hanks was on the top of the heap when it came to Hollywood bankability. Hanks’ great run as a box office monster may have reached its zenith with a string of blockbusters including Sleepless in Seattle, Philadelphia, Forrest Gump, Apollo 13 and Toy Story, but it actually began back in 1988 with his first-ever \$100+ million hit, a coming-of-age fantasy that took full advantage of his combination of winning charm, comedic chops and budding dramatic skills."
          //           "1988’s Big indeed lived up to its title at the box office, grossing \$151 million worldwide, but in an era where nearly every hit film seemed to get a sequel, Big never received a follow-up. Just why Big never got the sequel it may have deserved was addressed recently by one of the film’s stars, Elizabeth Perkins, who was asked by ComicBook.com if there ever was discussion about Big 2."
          //       ),
          //     ],
          //   ),
          // ),
        ],
      )
    );
  }
}

/*
CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 0.w,
              horizontal: 0.w,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: newsSliders,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 1.5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "\"We’re Going To Crush Top Gun\": MI 7 Director's Ambitious Goal For New Tom Cruise Movie"
                  ),
                  const Text(
                      "Mission: Impossible - Dead Reckoning Part One director Christopher McQuarrie reveals his hopes that the upcoming movie will surpass the success of Top Gun: Maverick. The Mission: Impossible film series has been running since the original movie in 1996, with Tom Cruise in the lead role as IMF agent Ethan Hunt. The six movies to date have grossed more than \$3.5 billion globally, making the franchise one of the highest-grossing of all time. McQuarrie joined the franchise when he wrote and directed the fifth movie in the series, Mission: Impossible - Rogue Nation, and he will helm movies seven and eight."
                          "During an interview with Total Film (via Games Radar), McQuarrie shares his hopes for Mission: Impossible - Dead Reckoning Part One, and explains how the creative forces behind the movie don't view themselves as competing with other franchises, so much as competing with themselves. He even hopes to surpass Cruise's most recent film."

                  ),
                ],
              ),
            ),
          )
        ],
      )
 */

/*
SliverPadding(
            padding: const EdgeInsets.only(top: 70),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: newsSliders,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 1.5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 15, right: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                      "\"We’re Going To Crush Top Gun\": MI 7 Director's Ambitious Goal For New Tom Cruise Movie"
                  ),
                  Text(
                      "Mission: Impossible - Dead Reckoning Part One director Christopher McQuarrie reveals his hopes that the upcoming movie will surpass the success of Top Gun: Maverick. The Mission: Impossible film series has been running since the original movie in 1996, with Tom Cruise in the lead role as IMF agent Ethan Hunt. The six movies to date have grossed more than \$3.5 billion globally, making the franchise one of the highest-grossing of all time. McQuarrie joined the franchise when he wrote and directed the fifth movie in the series, Mission: Impossible - Rogue Nation, and he will helm movies seven and eight."
                          "During an interview with Total Film (via Games Radar), McQuarrie shares his hopes for Mission: Impossible - Dead Reckoning Part One, and explains how the creative forces behind the movie don't view themselves as competing with other franchises, so much as competing with themselves. He even hopes to surpass Cruise's most recent film."
                          "A star of one of Tom Hanks’ biggest 1980s hits explains why the movie never got a sequel. He’s still a big box office name to this day, as proven by 2023’s sleeper hit A Man Called Otto, but in the '80s and '90s Hanks was on the top of the heap when it came to Hollywood bankability. Hanks’ great run as a box office monster may have reached its zenith with a string of blockbusters including Sleepless in Seattle, Philadelphia, Forrest Gump, Apollo 13 and Toy Story, but it actually began back in 1988 with his first-ever \$100+ million hit, a coming-of-age fantasy that took full advantage of his combination of winning charm, comedic chops and budding dramatic skills."
                          "1988’s Big indeed lived up to its title at the box office, grossing \$151 million worldwide, but in an era where nearly every hit film seemed to get a sequel, Big never received a follow-up. Just why Big never got the sequel it may have deserved was addressed recently by one of the film’s stars, Elizabeth Perkins, who was asked by ComicBook.com if there ever was discussion about Big 2."
                  ),
                ],
              ),
            ),
          )
 */
