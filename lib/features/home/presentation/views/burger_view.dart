import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/burger_view_body.dart';

class BurgerView extends StatelessWidget {
  const BurgerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: BurgerViewBody(),
    );
  }
}
