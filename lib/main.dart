import 'package:flutter/material.dart';

import 'core/routes/route_generator.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
    );
  }
}
