import 'package:flutter/material.dart';
import 'package:weather_app/config/routes/app_route_names.dart';
import 'package:weather_app/features/current_weather/views/current_weather.dart';
import 'package:weather_app/features/daily_weather/views/daily_weather.dart';
import 'package:weather_app/features/homepage/views/homepage.dart';

class AppRouter {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.homepage:
        return _materialRoute(const Anasayfa());

      case AppRouteNames.dailyWeather:
        return _materialRoute(const Day());

      case AppRouteNames.currentWeather:
        return _materialRoute(const SonrakiSayfa());

      default:
        return _materialRoute(const Anasayfa());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
