// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:dark_magicians/helper/constant.dart';
import 'package:dark_magicians/model/response_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListUserState();
  }
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: [
            Card(
                margin: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Daftar User Ter-registrasi',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Divider(),
                      FutureBuilder(
                          future: APIAmbilSemuaUser(),
                          builder: (context, snapshot) {
                            print(snapshot.hasData);

                            if (snapshot.hasData) {
                              ResponseAPI? resp = snapshot.data as ResponseAPI?;
                              print(resp);
                              print(resp!.data);
                              if(resp.data == null){
                                return Center(
                                  child: Text('Tidak ada data'),
                                );
                              }
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: resp.data.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: Column(
                                      children: [
                                        Text(resp.data[index]['username'].toUpperCase(),
                                        style: Theme.of(context).textTheme.headline2),

                                        Text(resp.data[index]['email'].toUpperCase(),
                                        style: Theme.of(context).textTheme.headline2),
                                      ],
                                    )
                                  );
                                },
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          })
                    ],
                  ),
                ))
          ],
        ));
  }

  Future APIAmbilSemuaUser() async {
    try {
      var response = await http
          .get(Uri.parse(URL_SEMUA_USER))
          .timeout(Duration(seconds: 10));
      var hasil = ResponseAPI(sukses: null, data: null);
      if (response.statusCode == 200) {
        hasil = ResponseAPI.fromJson(json.decode(response.body));
      }
      return hasil;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
