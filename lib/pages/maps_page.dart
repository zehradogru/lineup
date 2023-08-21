import 'package:flutter/material.dart';

import '../navigate.dart';


class MapsPage extends StatelessWidget {



  // navigate class çek
  // agentIndex ve mapIndex ile yönlendir


  final List<String> imgList;
  final int agentIndex;

  List<String> mapList = [
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
    "images/maps/ascent.jpg",
  ];
  MapsPage({Key? key, required this.imgList, required this.agentIndex})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        child: ListView.builder(
          itemCount: mapList.length,
          itemBuilder: (context, mapIndex) {
            return GestureDetector(
              onTap: () {
                // navigator page yönlendir. 2 index ile. agentIndex ve mapIndex ile
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Navigate(agentIndex: agentIndex, mapIndex: mapIndex)));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(mapList[mapIndex]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}