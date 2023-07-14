import 'package:flutter/material.dart';
import 'movie_news.dart';
import 'search_movie_camera.dart';
import 'search_movie_typing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FilmifyApp());
}

class FilmifyApp extends StatelessWidget {
  const FilmifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmify',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const FilmifyScreen(),
    );
  }
}

class FilmifyScreen extends StatefulWidget {
  const FilmifyScreen({super.key});

  @override
  State<FilmifyScreen> createState() => _FilmifyScreenState();
}

class _FilmifyScreenState extends State<FilmifyScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    SearchMovieCamera(),
    MovieNews(),
    SearchMovieTyping()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Find',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors,
        onTap: _onItemTapped,
      ),
    );
  }
}

