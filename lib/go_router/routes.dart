import 'package:go_router/go_router.dart';
import '/login_screen.dart';
import '/player_screen.dart';
import '/detail_screen.dart';
import '/entities/player.dart';

final appRouter = GoRouter(

  initialLocation: '/login',

  routes: [

    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),

    GoRoute(
      path: '/players',
      builder: (context, state) => PlayerScreen(),
    ),

    GoRoute(
      path: '/detail',
      builder: (context, state) {

        Player player = state.extra as Player;

        return DetailScreen(
          player: player,
        );

      },
    ),

  ],

);
