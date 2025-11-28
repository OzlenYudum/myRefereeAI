import 'package:flutter/foundation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myrefereeai/presenter/pages/home/home.dart';
import 'package:myrefereeai/presenter/pages/items/items.dart';
import 'package:myrefereeai/presenter/pages/pokedex/pokedex.dart';
import 'package:myrefereeai/presenter/pages/pokemon_info/pokemon_info.dart';
import 'package:myrefereeai/presenter/pages/splash/splash.dart';
import 'package:myrefereeai/presenter/pages/types/types.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/pokemons', page: PokedexRoute.page),
        AutoRoute(path: '/pokemons/:id', page: PokemonInfoRoute.page),
        AutoRoute(path: '/types', page: TypeEffectRoute.page),
        AutoRoute(path: '/items', page: ItemsRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
}
