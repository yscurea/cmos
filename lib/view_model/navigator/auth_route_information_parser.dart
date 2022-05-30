import 'package:cmos/view_model/navigator/route_path.dart';
import 'package:flutter/cupertino.dart';

class AuthRouteInformationParser extends RouteInformationParser<MyRoutePath> {
  @override
  Future<MyRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    return MyRoutePath();
  }

  @override
  RouteInformation? restoreRouteInformation(MyRoutePath configuration) {
    return const RouteInformation(location: "/");
  }
}
