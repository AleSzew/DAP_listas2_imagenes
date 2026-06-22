import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../entities/player.dart';

class DetailScreen extends StatelessWidget {

  final Player player;

  const DetailScreen({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(player.name),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Image.network(
              player.image,
              width: 250,
            ),

            SizedBox(height: 20),

            Text(
              player.name,
              style: TextStyle(fontSize: 25),
            ),

            SizedBox(height: 20),

            Text(
              player.description,
            ),

          ],

        ),

      ),

    );
  }
}
