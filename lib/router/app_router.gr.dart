// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    InstrumentsRoute.name: (routeData) {
      return AdaptivePage<bool>(
        routeData: routeData,
        child: const InstrumentsPage(),
      );
    },
    InstrumentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<InstrumentDetailRouteArgs>();
      return AdaptivePage<bool>(
        routeData: routeData,
        child: InstrumentDetailPage(
          key: args.key,
          isin: args.isin,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          InstrumentsRoute.name,
          path: '/',
        ),
        RouteConfig(
          InstrumentDetailRoute.name,
          path: '/instrument-detail-page',
        ),
      ];
}

/// generated route for
/// [InstrumentsPage]
class InstrumentsRoute extends PageRouteInfo<void> {
  const InstrumentsRoute()
      : super(
          InstrumentsRoute.name,
          path: '/',
        );

  static const String name = 'InstrumentsRoute';
}

/// generated route for
/// [InstrumentDetailPage]
class InstrumentDetailRoute extends PageRouteInfo<InstrumentDetailRouteArgs> {
  InstrumentDetailRoute({
    Key? key,
    required String isin,
  }) : super(
          InstrumentDetailRoute.name,
          path: '/instrument-detail-page',
          args: InstrumentDetailRouteArgs(
            key: key,
            isin: isin,
          ),
        );

  static const String name = 'InstrumentDetailRoute';
}

class InstrumentDetailRouteArgs {
  const InstrumentDetailRouteArgs({
    this.key,
    required this.isin,
  });

  final Key? key;

  final String isin;

  @override
  String toString() {
    return 'InstrumentDetailRouteArgs{key: $key, isin: $isin}';
  }
}
