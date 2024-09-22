
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:itech_eventify_app/screens/home_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: '/',
      routes: [
        GoRoute(path: "/", builder: (context , state) => const HomeScreen())
      ]
  );
});