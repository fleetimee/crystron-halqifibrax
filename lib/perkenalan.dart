import 'package:flutter/material.dart';

var lokasi = "JOGJA";
String nama = "Novian";
var d = 0.123;
int no = 123;
var no2;
// no2 = no + 1; // harus berupa deklasrasi

// Null safety, nullable

int? angka1;
var room;
late int no3;

Widget buatWidget() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("fleetime"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Nama : $nama"),
            Image.network('https://i.4cdn.org/a/1646704287230.jpg'),
            const Icon(Icons.star, size: 100, color: Colors.red),
            Text("Lokasi : $lokasi"),
            Text("D : $d"),
            Text("No : $no"),
            Text("No2 : $no2"),
            Text("No3 : $no3"),
            Text("Angka1 : $angka1"),
            Text("Room : $room"),
          ],
        ),
      ),
    ),
  );
}

void main() {
  print("Hello World");
  print("Hello World " + lokasi);
  debugPrint(nama);
  debugPrint("$d");
  print(d);
  print(angka1);
  print(room);

  no3 = 3;
  print(no3);
  runApp(buatWidget());
}
