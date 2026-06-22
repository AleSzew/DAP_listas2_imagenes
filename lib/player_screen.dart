import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../entities/player.dart';

class PlayerScreen extends StatelessWidget {

  PlayerScreen({super.key});

  List<Player> players = [

    Player(
      name: "Lionel Messi",
      description: "Campeón del mundo con Argentina.",
      image: "https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg",
    ),

    Player(
      name: "Lautaro Martinez",
      description: "Capitan y 10 del Inter, ex jugador de Racing.",
      image: "https://assets.goal.com/images/v3/blt909c98575cff6814/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-07-13T191231.216.jpg?auto=webp&format=pjpg&width=3840&quality=60",
    ),

    Player(
      name: "Lisandro Lopez",
      description: "EX jugador de Racing, autor del golazo de chilena a Independiente en 2016",
      image: "https://media.ambito.com/p/211a5e74849cb90bc796e70304d351e0/adjuntos/239/imagenes/036/347/0036347985/lisandro-lopez.jpg",
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Jugadores"),
      ),

      body: ListView.builder(

        itemCount: players.length,

        itemBuilder: (context, index) {

          return Card(

            child: ListTile(

              leading: Image.network(
                players[index].image,
                width: 50,
              ),

              title: Text(
                players[index].name,
              ),

              subtitle: Text(
                players[index].description,
              ),

              trailing: Icon(
                Icons.arrow_forward,
              ),

              onTap: () {

                context.go(
                  '/detail',
                  extra: players[index],
                );

              },

            ),

          );

        },

      ),

    );
  }
}
