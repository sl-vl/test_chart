import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_chart/features/instrument_details/ui/screens/instrument_detail_page.dart';
import 'package:test_chart/features/instruments/ui/screens/instruments_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<bool>(page: InstrumentsPage, initial: true),
    AutoRoute<bool>(page: InstrumentDetailPage),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter() : super();
}
