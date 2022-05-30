import 'package:cmos/view_model/navigator/route_path.dart';
import 'package:flutter/material.dart';

class AuthRouterDelegate extends RouterDelegate<MyRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;
  AuthRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  MyRoutePath? get currentConfiguration {
    return AuthRoutePath.loginPath();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: const [
        MaterialPage(
            child: Scaffold(
          body: Center(child: Text("Test")),
        )),
        MaterialPage(
            child: Scaffold(
          body: Center(child: Text("Test")),
        ))
      ],
      onPopPage: (route, res) {
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MyRoutePath configuration) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}
