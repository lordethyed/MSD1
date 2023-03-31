import 'package:flutter/cupertino.dart';
import 'package:msd1/routing/routing_const.dart';
import '../presentation/screens/auth_screen.dart';
import '../presentation/screens/bottom_navigation.dart';
import '../presentation/screens/download_screen.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/magazine_screen.dart';
import '../presentation/screens/user_screen.dart';

class RouterProject {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final parts = routeSettings.name!.split('?');
    switch (parts[0]) {
      case HomeRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => const HomeScreen(),
        );
      case BottomRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => const BottomScreen(),
        );
      case AuthRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => const AuthScreen(),
        );
      case DownloadRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => const DownloadScreen(),
        );
      case MagazineRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => const MagazineScreen(),
        );
      case UserRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => const UserScreen(),
        );

      default:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => CupertinoPageScaffold(
            child: Center(
              child: Text(
                'Ошибка, роут для ${routeSettings.name} не найден',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
    }
  }
}
