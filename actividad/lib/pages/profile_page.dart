import 'package:actividad/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final UserModel user;

  const ProfilePage({super.key, required this.user});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String url = "https://i.pravatar.cc/300";
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Perfil"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),  
            const SizedBox(height: 20),
            Text("Nombre: ${widget.user.name}"),
            Text("Edad: ${widget.user.age}"),
            Text("Categoría: ${widget.user.category}"),
            const SizedBox(height: 20),
          ],
        ),     
      ),
    );
  }
}
