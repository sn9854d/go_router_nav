import 'package:flutter/material.dart';
import 'package:nav2_go_router/model/coffee.dart';

class CoffeeDetailPage extends StatelessWidget {
  const CoffeeDetailPage({Key? key, required this.slug}) : super(key: key);
  final String slug;
  @override
  Widget build(BuildContext context) {
    final coffee = coffees.where((element) => element.slug == slug).first;
    return Scaffold(
      appBar: AppBar(
        title: Text(coffee.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                  tag: 'coffee-image-${coffee.slug}',
                  child: Image.asset('assets/coffee.jpeg')),
              Text(
                coffee.name,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Text('How to Make ${coffee.name.toLowerCase()}?'),

              //! need
              const SizedBox(height: 50),
              const Text(
                'ALL YOU NEED',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              coffee.needs != null && coffee.needs!.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) => Text(
                        coffee.needs![i],
                        textAlign: TextAlign.center,
                      ),
                      itemCount: coffee.needs!.length,
                    )
                  : const Text('Nothing'),

              //! steps
              const SizedBox(height: 50),
              coffee.steps != null && coffee.steps!.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Steps $i',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(coffee.steps![i])
                        ],
                      ),
                      itemCount: coffee.steps!.length,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
