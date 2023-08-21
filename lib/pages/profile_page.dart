import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.person,
                  color: Colors.brown,
                  size: 45.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ))
          ]),
    ));
  }
}
