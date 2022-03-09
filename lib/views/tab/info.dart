// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _InfoState();
  }
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    var judul = 'Info';
    var subjudul = 'About Us';
    var isi = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl nunc consectetur purus, sed euismod nisi nisl eget eros. Donec euismod, nisl eget consectetur tempor, nisl';
    
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(judul, style: Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
            Text(subjudul, style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.left,),
            Text(isi, style: Theme.of(context).textTheme.bodyText2, textAlign: TextAlign.justify,),
        ],
      ),
      )
    );
    
  }
}
