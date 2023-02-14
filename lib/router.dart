import 'package:flutter/material.dart';

import 'screens/auth/login/login_screen.dart';
import 'screens/auth/register/register_screen.dart';
import 'screens/main/app.dart';
import 'screens/main/application/application_screen.dart';
import 'screens/main/bookmarks/bookmarks_screen.dart';
import 'screens/main/home/home_screen.dart';
import 'screens/main/profile/change_email/change_email_screen.dart';
import 'screens/main/profile/change_name/change_name_screen.dart';
import 'screens/main/profile/profile_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/welcome/welcome_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RegisterScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case App.routeName:
        return MaterialPageRoute(builder: (_) => const App());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case BookmarksScreen.routeName:
        return MaterialPageRoute(builder: (_) => const BookmarksScreen());
      case ApplicationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ApplicationScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case ChangeNameScreen.routeName:
        String argument = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => ChangeNameScreen(argument: argument));
      case ChangeEmailScreen.routeName:
        String argument = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => ChangeEmailScreen(argument: argument));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        );
    }
  }
}
