import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: const Text('Nombre de ruta'),
                leading: const Icon(Icons.access_time_outlined),
                onTap: () {
                  //final route = MaterialPageRoute(
                  //builder: (context) => const ListView1Screen(),
                  //);
                  //Navigator.push(context, route);
                  Navigator.pushNamed(context, 'alert');
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 10),
    );
  }
}
