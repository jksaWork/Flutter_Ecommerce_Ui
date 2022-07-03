import 'dart:async';
import 'dart:io';

import 'package:e_commerce/Helpers/HandelHttp.dart';
import 'package:e_commerce/models/JsnoPlaceholder.dart';
import 'package:e_commerce/screens/E1/screens/APis/components/cardModel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AppNoteHome extends StatelessWidget with HandelHttp {
  static String routeName = '/api_note';

  const AppNoteHome({Key? key}) : super(key: key);
  Future GetPostFormAPi() async {
    String url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await getRequest(url);
    print(response);
    return response;
  }

  @override
  void initState() {
    GetPostFormAPi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => BottomContainer());
                        },
                        child: Text('Chose Your Image'))),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: FutureBuilder(
                    future: GetPostFormAPi(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            Map img = snapshot.data[index];
                            return ProductCard(
                              jsonPlaceHolderModel:
                                  JsonPlaceHolderModel.fromJson(img),
                            );
                          },
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  BottomContainer() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      child: Column(
        children: [
          Text('Chose Image  ..'),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      child: Icon(Icons.camera, size: 100),
                      onTap: () async {
                        try {
                          print('gallary');
                          var choosedimage = await ImagePicker()
                              .pickImage(source: ImageSource.camera);
                        } catch (e) {
                          print('$e');
                        }
                      }),
                  InkWell(
                    child: Icon(Icons.gavel_outlined, size: 100),
                    onTap: () {
                      print('gellary');
                    },
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
