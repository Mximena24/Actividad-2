import 'package:actividad/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final UserModel usuario;

  const ProfilePage({super.key, required this.usuario});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Perfil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: widget.usuario.image.isNotEmpty
                  ? NetworkImage(widget.usuario.image)
                  : null,
              child: widget.usuario.image.isEmpty
                  ? const Icon(Icons.person, size: 60)
                  : null,
            ),
            const SizedBox(height: 20),
            Text("Nombre: ${widget.usuario.name}"),
            Text("Edad: ${widget.usuario.age}"),
            Text("Categoría: ${widget.usuario.category}"),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Puedes agregar acción aquí si quieres
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
