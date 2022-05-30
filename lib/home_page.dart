import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_place/google_place.dart';
import 'package:nav2_go_router/injection_container.dart';
import 'package:nav2_go_router/login_page.dart';

import 'colors.dart';
import 'model/coffee.dart';

const tabs = [
  {'title': 'coffee', 'page': CoffeeTab()},
  {'title': 'tea', 'page': TeaTab()},
  {'title': 'coffee-tea', 'page': CoffeeTeaTab()},
];

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title})
      : index = tabs.indexWhere((element) => element['title'] == title),
        super(key: key) {
    assert(index != -1);
  }
  final String title;
  final int index;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: tabs.length, vsync: this, initialIndex: widget.index);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              '${(tabs[widget.index]['title']).toString().toUpperCase()} MENU'),
          actions: [
            IconButton(
              onPressed: () async {
                final loginInfo = sl.get<LoginInfo>();
                await loginInfo.toggleLoginState(false);
              },
              icon: const Icon(Icons.logout_outlined),
            )
          ],
          bottom: TabBar(
            controller: controller,
            indicatorColor: kColor4,
            labelColor: kColor5,
            labelStyle: GoogleFonts.balsamiqSans(),
            tabs: const [
              Tab(child: Text('Coffee')),
              Tab(child: Text('Tea')),
              Tab(child: Text('Coffee-Tea')),
            ],
            onTap: (value) {
              context.goNamed('home',
                  params: {'title': tabs[value]['title'] as String});
            },
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            CoffeeTab(),
            TeaTab(),
            CoffeeTeaTab(),
          ],
        ));
  }
}

class CoffeeListTile extends StatelessWidget {
  const CoffeeListTile({Key? key, required this.coffee}) : super(key: key);
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Material(
        color: Colors.transparent,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          decoration: BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                width: 1,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ),
          child: ListTile(
            iconColor: kColor5,
            hoverColor: kColor1,
            onTap: () {
              context.goNamed(
                'beverage-details',
                params: {
                  'slug': coffee.slug,
                  'title': 'coffee',
                },
              );
            },
            leading: Hero(
              tag: 'coffee-image-${coffee.slug}',
              child: Container(
                padding: const EdgeInsets.all(4),
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kColor3,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Image.asset(
                  'assets/coffee.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 5),
              child: Text(coffee.name,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.1,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3b3b3b),
                  )
                  // Theme.of(context).textTheme.headline4
                  // .copyWith(
                  //     color: const Color(0xff3b3b3b), fontWeight: FontWeight.w600),
                  ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                coffee.description,
                style: const TextStyle(
                  height: 1.1,
                  color: Color(0xff3b3b3b),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                context.goNamed(
                  'beverage-details',
                  params: {
                    'slug': coffee.slug,
                    'title': 'coffee',
                  },
                );
              },
              icon: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ),
      );
    });
  }
}

class CoffeeTab extends StatelessWidget {
  const CoffeeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        itemBuilder: (context, i) =>
            Center(child: CoffeeListTile(coffee: coffees[i])),
        separatorBuilder: (context, i) => const SizedBox(
          height: 20,
        ),
        itemCount: coffees.length,
      );
    });
  }
}

class TeaTab extends StatefulWidget {
  const TeaTab({Key? key}) : super(key: key);

  @override
  State<TeaTab> createState() => _TeaTabState();
}

class _TeaTabState extends State<TeaTab> {
  late GooglePlace googlePlace;
  List<AutocompletePrediction> prediction = [];

  @override
  void initState() {
    super.initState();
    String apiKey = dotenv.env['API_KEY']!;
    debugPrint(apiKey);
    googlePlace = GooglePlace(
      apiKey,
      // proxyUrl: 'https://cors-anywhere.herokuapp.com/',
      headers: {
        // 'Access-Control-Allow-Origin': '*',
        //   'Referrer Policy': 'strict-origin-when-cross-origin'
        // 'Origin': 'localhost',
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Search",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2.0,
                  ),
                ),
              ),
              onChanged: (value) async {
                if (value.isNotEmpty) {
                  var result = await googlePlace.autocomplete.get(value);
                  if (result != null && result.predictions != null && mounted) {
                    setState(() {
                      prediction = result.predictions!;
                    });
                  }
                  // else {
                  //   setState(() {
                  //     prediction = [];
                  //   });
                  // }
                }
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) => ListTile(
                  title: Text(prediction[i].description ?? ''),
                  onTap: () async {
                    context.goNamed('place-detail', params: {
                      'id': prediction[i].placeId ?? '',
                      'title': 'tea'
                    });
                  },
                ),
                itemCount: prediction.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeeTeaTab extends StatelessWidget {
  const CoffeeTeaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Coffee Tea Tab '),
    );
  }
}
