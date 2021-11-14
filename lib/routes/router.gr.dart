// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../auto_route/page_1.dart' as _i5;
import '../auto_route/page_2.dart' as _i6;
import '../dynamic_dialog/dynamic_dialog_page.dart' as _i4;
import '../home_page.dart' as _i1;
import '../options_page.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    OptionsPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    DynamicDialogPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Page1Router.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    OptionsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OptionsPage());
    },
    DynamicDialogRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DynamicDialogPage());
    },
    Route1.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Page1());
    },
    Route2.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<Route2Args>(
          orElse: () => Route2Args(text: pathParams.getString('text')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.Page2(key: args.key, text: args.text));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(OptionsPageRouter.name,
              path: 'optionsPage',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(OptionsRoute.name,
                    path: '', parent: OptionsPageRouter.name)
              ]),
          _i2.RouteConfig(DynamicDialogPageRouter.name,
              path: 'dynamicDialogPage',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(DynamicDialogRoute.name,
                    path: 'dynamicDialogPage',
                    parent: DynamicDialogPageRouter.name)
              ]),
          _i2.RouteConfig(Page1Router.name,
              path: 'page1',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(Route1.name,
                    path: '', parent: Page1Router.name),
                _i2.RouteConfig(Route2.name,
                    path: ':text', parent: Page1Router.name)
              ])
        ])
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.EmptyRouterPage]
class OptionsPageRouter extends _i2.PageRouteInfo<void> {
  const OptionsPageRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'optionsPage', initialChildren: children);

  static const String name = 'OptionsPageRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class DynamicDialogPageRouter extends _i2.PageRouteInfo<void> {
  const DynamicDialogPageRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'dynamicDialogPage', initialChildren: children);

  static const String name = 'DynamicDialogPageRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class Page1Router extends _i2.PageRouteInfo<void> {
  const Page1Router({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'page1', initialChildren: children);

  static const String name = 'Page1Router';
}

/// generated route for [_i3.OptionsPage]
class OptionsRoute extends _i2.PageRouteInfo<void> {
  const OptionsRoute() : super(name, path: '');

  static const String name = 'OptionsRoute';
}

/// generated route for [_i4.DynamicDialogPage]
class DynamicDialogRoute extends _i2.PageRouteInfo<void> {
  const DynamicDialogRoute() : super(name, path: 'dynamicDialogPage');

  static const String name = 'DynamicDialogRoute';
}

/// generated route for [_i5.Page1]
class Route1 extends _i2.PageRouteInfo<void> {
  const Route1() : super(name, path: '');

  static const String name = 'Route1';
}

/// generated route for [_i6.Page2]
class Route2 extends _i2.PageRouteInfo<Route2Args> {
  Route2({_i7.Key? key, required String text})
      : super(name,
            path: ':text',
            args: Route2Args(key: key, text: text),
            rawPathParams: {'text': text});

  static const String name = 'Route2';
}

class Route2Args {
  const Route2Args({this.key, required this.text});

  final _i7.Key? key;

  final String text;

  @override
  String toString() {
    return 'Route2Args{key: $key, text: $text}';
  }
}
