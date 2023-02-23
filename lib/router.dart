import 'package:flutter/material.dart';

import 'models/job.dart';
import 'models/notification.dart';
import 'screens/auth/login/login_screen.dart';
import 'screens/auth/register/register_screen.dart';
import 'screens/main/app.dart';
import 'screens/main/application/application_screen.dart';
import 'screens/main/apply_job/apply_job_screen.dart';
import 'screens/main/bookmarks/bookmarks_screen.dart';
import 'screens/main/home/home_screen.dart';
import 'screens/main/job_detail/job_detail_screen.dart';
import 'screens/main/notification/notification_screen.dart';
import 'screens/main/notification_detail/notification_detail_screen.dart';
import 'screens/main/profile/change_birth_date/change_birth_date_screen.dart';
import 'screens/main/profile/change_email/change_email_screen.dart';
import 'screens/main/profile/change_name/change_name_screen.dart';
import 'screens/main/profile/change_password/change_password_screen.dart';
import 'screens/main/profile/profile_screen.dart';
import 'screens/main/success/success_screen.dart';
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
      case ChangePasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case NotificationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case NotificationDetailScreen.routeName:
        NotificationModel argument = settings.arguments as NotificationModel;
        return MaterialPageRoute(
          builder: (_) => NotificationDetailScreen(argument: argument),
        );
      case JobDetailScreen.routeName:
        Job argument = settings.arguments as Job;
        return MaterialPageRoute(builder: (_) => JobDetailScreen(argument: argument));
      case ApplyJobScreen.routeName:
        Job argument = settings.arguments as Job;
        return MaterialPageRoute(builder: (_) => ApplyJobScreen(argument: argument));
      case SuccessScreen.routeName:
        Job argument = settings.arguments as Job;
        return MaterialPageRoute(builder: (_) => SuccessScreen(argument: argument));
      case ChangeBirthDateScreen.routeName:
        DateTime argument = settings.arguments as DateTime;
        return MaterialPageRoute(
          builder: (_) => ChangeBirthDateScreen(argument: argument),
        );
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
