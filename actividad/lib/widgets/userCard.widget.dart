import 'package:actividad/models/user_model.dart';
import 'package:flutter/material.dart';

class CardPrueba extends StatelessWidget {
  const CardPrueba({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(user.name),
          Text(user.age.toString()),
          Text(user.category),
        ],
      ),
    );
  }
}
