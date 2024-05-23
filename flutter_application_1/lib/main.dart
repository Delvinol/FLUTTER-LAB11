import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartelera Cineplanet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cartelera"),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: MovieList.length, // COUNT LIST
          itemBuilder: (context, index) {
            return MovieCard(event: MovieList[index]);
          }
        )
      )
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie event;

  MovieCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 15),
      elevation: 5,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(150.0),
    ),
      child: Container(
        color: Color(0xffFFDA78),
        width: 300,
        height: 200,
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Image.network(
                event.image,
                width: 150.0,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    event.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Fecha: ${event.date}"),
                  SizedBox(height: 5),
                  Text("Duración: ${event.duration}"),
                  SizedBox(height: 5),
                  Text("Género: ${event.gender}"),
                  SizedBox(height: 5),
                  Text("Categoría: ${event.category}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Movie {
  final String title;
  final String date;
  final String image;
  final String duration;
  final String gender;
  final String category;

  Movie({
    required this.title,
    required this.image,
    required this.date,
    required this.duration,
    required this.gender,
    required this.category,
  });
}

List<Movie> MovieList = [
  Movie(
    title: "Furiosa: de la Saga Mad Max",
    image: "https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001927?referenceScheme=HeadOffice&allowPlaceHolder=true",
    date: "23/08/2024",
    duration: "2h 30min",
    gender: "Acción",
    category: "+14",
  ),
  Movie(
    title: "Los Extraños: Capitulo 1",
    image: "https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002019?referenceScheme=HeadOffice&allowPlaceHolder=true",
    date: "23/08/2024",
    duration: "1h 40min",
    gender: "Terror",
    category: "+14",
  ),
  Movie(
    title: "The Chosen - 4ta Temporada, EP 7 Y 8",
    image: "https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002047?referenceScheme=HeadOffice&allowPlaceHolder=true",
    date: "23/08/2024",
    duration: "2h 30min",
    gender: "Drama",
    category: "+14",
  ),
  Movie(
    title: "Viejas Amigas",
    image: "https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001978?referenceScheme=HeadOffice&allowPlaceHolder=true",
    date: "23/08/2024",
    duration: "1h 20min",
    gender: "Comedia",
    category: "+14",
  ),
  Movie(
    title: "Amigos Imaginarios",
    image: "https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002004?referenceScheme=HeadOffice&allowPlaceHolder=true",
    date: "23/08/2024",
    duration: "1h 50min",
    gender: "Familiar",
    category: "APT",
  ),
  Movie(
    title: "Desafiantes",
    image: "https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001926?referenceScheme=HeadOffice&allowPlaceHolder=true",
    date: "23/08/2024",
    duration: "2h 10min",
    gender: "Drama",
    category: "+14",
  ),
];
