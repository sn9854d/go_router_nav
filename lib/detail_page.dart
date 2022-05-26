import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('DetailPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.goNamed('model');
              },
              child: const Text('go /model'),
            ),
            TextButton(
              onPressed: () {
                context.push('/model');
              },
              child: const Text('push /model'),
            )
          ],
        ),
      ),
    );
  }
}
