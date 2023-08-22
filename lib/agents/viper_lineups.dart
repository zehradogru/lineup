import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ViperLineups extends StatelessWidget {
  const ViperLineups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Stack(
          children: [
            PhotoView(
              imageProvider: AssetImage("images/agents/viper.jpg"),
            ),
            Positioned(
              left: 100, // X koordinatı
              top: 200, // Y koordinatı
              child: Container(
                width: 10,
                height: 10,
                child: Icon(
                  Icons.person,
                  size: 45.0,
                )
              ),
            ),
            Positioned(
              left: 200, // X koordinatı
              top: 300, // Y koordinatı
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue, // Marker rengi
              ),
            ),
            // Diğer marker'ları burada ekleyebilirsiniz
          ],
        ),
      ),
    );
  }
}
