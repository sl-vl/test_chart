import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:test_chart/injection.dart';
import 'package:test_chart/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [
          SentryNavigatorObserver(),
        ],
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
