import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      actions: [
        OutlinedButton(
          onPressed: () {},
          child: const Text('English'),
        ),
      ],
    );
  }
}
