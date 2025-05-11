import 'package:flutter/material.dart';
import '../controller/controller.dart';
import '../model/model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final UserController _controller = UserController();

  @override
  Widget build(BuildContext context) {

    final List<Picture> pictures = _controller.getAllPictures();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: GridView.builder(
        itemCount: pictures.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          final pic = pictures[index];
          return Image.asset(
            pic.url,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}