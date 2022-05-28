import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nav2_go_router/colors.dart';
import 'package:nav2_go_router/places_details_page.dart';

import 'coffee_detail_page.dart';
import 'detail_page.dart';
import 'error_screen.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'model_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'dotenv');
  final LoginInfo loginInfo = LoginInfo();
  final _router = GoRouter(
    redirect: (state) {
      final isLoggin = state.subloc == '/login';
      final isLoggedIn = loginInfo.isLoggedIn;

      if (!isLoggedIn && !isLoggin) return '/login?from=${state.location}';
      if (isLoggedIn && isLoggin) return '/';

      return null;
    },
    refreshListenable: loginInfo,
    // debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: '/',
        name: 'intial',
        redirect: (_) => '/beverage/coffee',
      ),
      GoRoute(
        name: 'home',
        path: '/beverage/:title',
        builder: (context, state) {
          final title = state.params['title']!;
          return HomePage(
            key: state.pageKey,
            title: title,
          );
        },
        routes: [
          GoRoute(
            path: ':slug',
            name: 'beverage-details',
            builder: (context, state) {
              final slug = state.params['slug']!;
              return CoffeeDetailPage(slug: slug);
            },
          ),
          GoRoute(
            path: 'place/:id',
            name: 'place-detail',
            builder: (context, state) {
              final id = state.params['id'];
              return PlaceDetailPage(key: state.pageKey, placeId: id);
            },
          )
        ],
      ),
      GoRoute(
        name: 'detail',
        path: '/detail',
        builder: (context, state) => DetailPage(key: state.pageKey),
      ),
      GoRoute(
        name: 'model',
        path: '/model',
        builder: (context, state) => ModelPage(key: state.pageKey),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => LoginPage(
          loginInfo: loginInfo,
          key: state.pageKey,
          from: state.queryParams['from'],
        ),
      )
    ],
    errorBuilder: (context, state) => const ErrorScreen(),
  );
  runApp(MyApp(
    router: _router,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required GoRouter router})
      : _router = router,
        super(key: key);
  final GoRouter _router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Navigator 2.0',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.balsamiqSansTextTheme().copyWith(
          titleLarge: GoogleFonts.balsamiqSans(color: kColor5),
        ),
        appBarTheme: AppBarTheme.of(context).copyWith(
          centerTitle: true,
          color: kColor1,
          titleTextStyle: GoogleFonts.balsamiqSans(color: kColor5),
        ),
        scaffoldBackgroundColor: kColor2,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
