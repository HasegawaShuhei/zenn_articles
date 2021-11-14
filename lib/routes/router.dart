import 'package:auto_route/auto_route.dart';
import 'package:zenn_articles/auto_route/page_1.dart';
import 'package:zenn_articles/auto_route/page_2.dart';
import 'package:zenn_articles/dynamic_dialog/dynamic_dialog_page.dart';
import 'package:zenn_articles/home_page.dart';
import 'package:zenn_articles/options_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path: 'optionsPage',
        name: 'optionsPageRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: OptionsPage,
          ),
        ],
      ),
      AutoRoute(
        path: 'dynamicDialogPage',
        name: 'DynamicDialogPageRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: 'dynamicDialogPage',
            page: DynamicDialogPage,
          ),
        ],
      ),
      AutoRoute(
        path: 'page1',
        name: 'Page1Router',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: Page1,
          ),
          AutoRoute(
            path: ':text',
            page: Page2,
          )
        ],
      ),
    ]),
  ],
)
class $AppRouter {}

// flutter pub run build_runner build --delete-conflicting-outputs

// ネストさせないとき
// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[
//     AutoRoute(path: '/', page: OptionsPage, initial: true),
//     AutoRoute(path: '/dynamicDialogPage', page: DynamicDialogPage),
//     RedirectRoute(path: '*', redirectTo: '/')
//   ],
// )
// class $AppRouter {}