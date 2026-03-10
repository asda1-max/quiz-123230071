import 'package:flutter/material.dart';
import 'package:latihan_kuis_a/models/movie_model.dart';
import 'package:latihan_kuis_a/screen/details_page.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    /*
      implementasikan widget untuk menampilkan list movie yang sudah diambil dari dummy data
        - gunakan ListView.builder untuk menampilkan list movie
        - setiap item movie ditampilkan menggunakan Card widget yang berisi judul movie dan poster movie
        - ketika item movie ditekan, navigasikan ke halaman MovieDetailPage dengan membawa data movie yang dipilih
        
    
     */

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(title: Text('Movie List',style: TextStyle(fontSize: 20,fontWeight: FontWeight(800)),),),
        body: ListView.builder(
          itemCount: movieList.length ,
          itemBuilder: (BuildContext context, int index) {
            final  movie = movieList[index];
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(18, 111, 111, 111),
                borderRadius: BorderRadius.circular(4)
              ),
              padding: EdgeInsetsGeometry.fromLTRB(5,5,0,5),
              margin: EdgeInsets.fromLTRB(10,8,10,0),
              child: ListTile(
              leading: Image.network(movie.imgUrl),
              title: Text(movie.title + " (" + movie.year.toString() + ")"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.genre),
                  Text(movie.rating.toString() + "/10 ⭐", style: TextStyle(fontSize: 10),)
                ],
              ),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(movie: movie)));
              }, icon: Icon(Icons.arrow_forward_ios)),
              ),
            );
          },
        ),
        drawer: Drawer(
          child: Column(
            
          children: [
            Container
            (
              width: 350,
              margin: EdgeInsets.all(30),
              child: Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight(800)),),
            ),
            Container
            (
              width: 350,
              margin: EdgeInsets.all(30),
              child: ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Logout'))
            )
          ],
          )
        ),
      ),
    );
  }
}
