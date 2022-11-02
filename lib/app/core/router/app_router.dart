// ignore_for_file: avoid_print

import 'package:blocarchitecture/app/core/router/app_routes.dart';
import 'package:flutter/material.dart';

import '../handlers/exceptions/route_exception.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print("[APP] GOING TO ROUTE: ${settings.name}");
    switch (settings.name) {
      case Routes.LOGIN:
        return MaterialPageRoute(builder: (_) => Container());
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => Container());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
