import 'package:actividad/models/user_model.dart';
import 'package:actividad/pages/profile_page.dart';
import 'package:actividad/widgets/userCard.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Usuario seleccionado actualmente, por defecto vacío
  UserModel Usuario = UserModel(image: '', name: '', age: 0, category: '');

  final List<UserModel> _users = [
    UserModel(image: "", name: "Carlos", age: 15, category: "Menor de edad"),
    UserModel(image: "", name: "Pedro", age: 22, category: "Mayor de edad"),
    UserModel(image: "", name: "Sofia", age: 25, category: "Mayor de edad"),
  ];

  ListView _getUsers() {
    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return CardPrueba(user: user);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre: ${Usuario.name}"),
            Text("Edad: ${Usuario.age}"),
            Text("Categoría: ${Usuario.category}"),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Ver Perfil"),
              onPressed: () {
                // Navega al perfil del usuario seleccionado
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(usuario: Usuario),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  final user = _users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text('Edad: ${user.age} - ${user.category}'),
                    onTap: () {
                      // Cuando toque un usuario, actualiza el usuario seleccionado
                      setState(() {
                        Usuario = user;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
