import 'package:flutter/material.dart';

import 'maps_page.dart';


class AgentsPage extends StatelessWidget {

  List<String> imgList = [
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
    "images/agents/viper.jpg",
  ];

  AgentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            crossAxisCount: 2,
          ),
          itemCount: imgList.length,
          itemBuilder: (context, agentIndex) {
            return GestureDetector(
              onTap: () {
                // map page yönlendir. index ile
                Navigator.push(context, MaterialPageRoute(builder: (context) => MapsPage(agentIndex: agentIndex, imgList: [],)));
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgList[agentIndex]),
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