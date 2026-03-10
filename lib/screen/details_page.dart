import 'package:flutter/material.dart';
import 'package:latihan_kuis_a/models/movie_model.dart';

class DetailsPage extends StatelessWidget {
  final MovieModel movie;
const DetailsPage({ Key? key , required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(movie.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight(800)),),),
        body: Container(
          padding: EdgeInsets.fromLTRB(10,30,10,50),
          child: ListView(
          
          children: [
            Image.network(movie.imgUrl),
            Container(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
            child : Text(movie.title + " (" +movie.year.toString() + ")",style: TextStyle(fontSize: 20,fontWeight: FontWeight(800)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,5,0,0),
            child : Text("Directed by " + movie.director,style: TextStyle(fontSize: 14,fontWeight: FontWeight(800)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,5,0,0),
            child : Text(movie.genre,style: TextStyle(fontSize: 14,fontWeight: FontWeight(800)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
            child : Text(movie.rating.toString() + "/10 ⭐",style: TextStyle(fontSize: 14,fontWeight: FontWeight(300)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
            child : Text(movie.synopsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight(300)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
            child : Text("Cast : "+ movie.casts.join(", "),style: TextStyle(fontSize: 18,fontWeight: FontWeight(600)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
              width: 350,
            child : ElevatedButton(onPressed: (){}, child: Text("Add to Favorite"))
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
              width: 350,
            child : ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Back"))
            ),
          ],
        ),
        ),
      ),
    );
  }
}