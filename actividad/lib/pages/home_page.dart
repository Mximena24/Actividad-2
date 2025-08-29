import 'package:actividad/models/user_model.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage ({super.key ,required this.title});

  final List<UserModel> _users = [
    UserModel(image: "https://i.pravatar.cc/300", name: "Carlos", age: 15, category: "Menor de edad"),
    UserModel(image: "https://i.pravatar.cc/300", name: "Pedro", age: 22, category: "Mayor de edad"),
    UserModel(image: "https://i.pravatar.cc/300", name: "Sofia", age: 25, category: "Mayor de edad"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Home"),
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return Column(
            children: [
              Text("Nombre: ${user.name}"),
              Text("Edad: ${user.age}"),
              Text("Categoría: ${user.category}"),
              ElevatedButton(
                child: const Text("Ver Perfil"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(user: user),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
