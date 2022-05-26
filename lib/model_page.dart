import 'package:flutter/material.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('ModelPage'),
      ),
      body: const Center(
        child: Text('ModelPage'),
      ),
    );
  }
}
