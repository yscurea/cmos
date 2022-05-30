abstract class MyRoutePath {
  final Uri uri;
  MyRoutePath(String path) : uri = Uri(path: path);
}

class AuthRoutePath extends MyRoutePath {
  AuthRoutePath.loginPath() : super("/login");
  AuthRoutePath.signupPath() : super("/signup");
}

class MainAppRoutePath extends MyRoutePath {
  final int tabIndex;
  MainAppRoutePath.home()
      : tabIndex = 0,
        super("/home");
  MainAppRoutePath.task()
      : tabIndex = 1,
        super("/task");
  MainAppRoutePath.schedule()
      : tabIndex = 2,
        super("/schedule");
  MainAppRoutePath.setting()
      : tabIndex = 3,
        super("/setting");
}
