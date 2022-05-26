import 'package:flutter/material.dart';

import 'model/coffee.dart';
import 'package:go_router/go_router.dart';

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
          centerTitle: true,
          bottom: TabBar(
            controller: controller,
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
          child: ListTile(
            leading: Hero(
                tag: 'coffee-image-${coffee.slug}',
                child: Image.asset('assets/coffee.jpeg')),
            title: Text(
              coffee.name,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              coffee.description,
              style: const TextStyle(
                  color: Color(0xff333333), fontWeight: FontWeight.w600),
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
        separatorBuilder: (context, i) => const SizedBox(height: 20),
        itemCount: coffees.length,
      );
    });
  }
}

class TeaTab extends StatelessWidget {
  const TeaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tea Tab '),
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
