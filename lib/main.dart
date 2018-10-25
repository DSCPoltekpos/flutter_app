import 'package:flutter/material.dart';

//fungsi yang pertama kali di jalankan oleh flutter
void main() {
  //new mengartikan pemanggilan sebuah widget,
  //yang berarti MaterialApp adalah sebuah widget yang dipanggil
  //runApp mengartikan aplikasi yang akan di run
  runApp(new MaterialApp(
    //ini berfungsi ketika aplikasi kita minimize, maka nama title akan muncul
    title: "Latihan Flutter",
    home: new HallHallo(),
  ));
}

//membuat class
class HallHallo extends StatelessWidget{
  @override
  //setiap membuat widget, harus memberikan hasil / memberikan nilai balik
  Widget build(BuildContext context) {
    //Scaffold ini jika di native android mengartikan sebuah activity
    //dimana didalam activity terdapat beberapa view yang akan kita buat
    return new Scaffold(
      //membuat warna background scaffold
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        //ini berfungsi untuk memberikan warna background pada AppBar Layout
        backgroundColor: Colors.red,
        //leading mengartikan tampilan disebelah kiri pada bagian AppBar Layout
        leading: new Icon(Icons.home),
        //ini berfungsi untuk membuat text/title berada ditengah pada AppBar Layout
        title: new Center(
          child: new Text("Latihan Flutter"),
        ),
        //ini berfungsi untuk membuat sebuah aksi pada appbar
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      //Center disini membuat posisi kota berada ditengah aplikasi
      body: new Center(
        child: new Container(//sebuah widget Kotak
          //color disini mempunyai sebuah nilai yaitu 200
          color: Colors.blue[200],
          width: 200.0,
          height: 100.0,
          //child mengartikan bahwa widget Center adalah anak dari widget Container
          //atau widget Container adalah induk dari widget Center
          //Center disini bukan untuk membuat kotak ditengah aplikasi,
          //melainkan membuat text berada di tengah kota
          child: new Center(
              child: new Text(
                  "Hello World",
                  style: new TextStyle(color: Colors.white,
                      fontFamily: "Serif",
                      fontSize: 20.0))
          ),
        ),
      )
    );
  }
}