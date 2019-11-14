import 'package:enqueue/screens/DoctorScreen.dart';
import 'package:enqueue/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class Router {
  static const String HOME_ROUTE = '/';
  static const String DOCTOR_ROUTE = '/doctor';

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME_ROUTE:
        return EnqueuePageRoute(builder: (_) => HomeScreen());
      case DOCTOR_ROUTE:
        return EnqueuePageRoute(builder: (_) => DoctorScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

class EnqueuePageRoute extends MaterialPageRoute {
  EnqueuePageRoute({
    @required builder,
    RouteSettings settings,
    maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            settings: settings,
            fullscreenDialog: fullscreenDialog,
            builder: builder,
            maintainState: maintainState);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
