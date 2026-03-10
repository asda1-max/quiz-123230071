import 'package:flutter/material.dart';
import 'package:latihan_kuis_a/screen/moviel_list_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    /*
      buatlah tampilan login sederhana dengan menggunakan widget TextField untuk input username dan password, serta ElevatedButton untuk tombol login.
      - TextField untuk username dengan hint text "Username"
      - TextField untuk password dengan hint text "Password" dan obscureText true
      - ElevatedButton dengan text "Login" yang ketika ditekan akan menampilkan snackbar dengan pesan
        "Login berhasil" jika username dan password tidak kosong, atau "Login gagal" jika salah satu atau kedua field kosong.
      - jika login berhasil, navigasikan ke halaman MovieListPage (buat halaman MovieListPage 
    
     */
    
  final TextEditingController _usrcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight(800)),),backgroundColor: Colors.blueAccent,),
        backgroundColor: Color.fromARGB(210, 250, 250, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text('Login disini', style: TextStyle(fontSize: 20, fontWeight: FontWeight(800)),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text('Masukan Detail Kalian Disini : ', style: TextStyle(fontSize: 20, fontWeight: FontWeight(300)),),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: TextField(
                controller: _usrcontroller,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username',
                label: Text('Username :')
              ),
                
              )
            ),
            Container(
              width: 350,
              padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
              
              child: TextField(
                controller: _pwcontroller,
                obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                label: Text('Password :'),
              ),
                
              )
            ),
            Container(
              width: 350,
              padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
              child: ElevatedButton(onPressed: (){
                if(_usrcontroller.text == "user" && _pwcontroller.text == "user"){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieListPage()));
                }
              }
              , child: Text('Login'))
            ),
            
          ],
        ),

      ),
    );
  }
}