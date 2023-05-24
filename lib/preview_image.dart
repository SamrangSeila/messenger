import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class previewImage extends StatelessWidget {
  const previewImage({super.key,required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhotoView(
        imageProvider: NetworkImage(imageUrl),
      ),
      Positioned(
        top: 40,
        left: 10,
        child: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),
        color: Colors.white,
      ))
        ],
      ),
    );
  }
}