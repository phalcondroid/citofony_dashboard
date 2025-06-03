import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header con avatar
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF9C27B0), Color(0xFF607D8B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=12', // Puedes cambiar por una imagen del usuario
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Julián Molina',
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                  const Text(
                    'julian@email.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Opciones del drawer
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Términos y Condiciones'),
              onTap: () {
                // Navegar a pantalla de términos
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text('Quejas y Reclamos'),
              onTap: () {
                // Navegar a formulario o soporte
              },
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text(
                'Cerrar Sesión',
                style: TextStyle(color: Colors.redAccent),
              ),
              onTap: () {
                // Acción de cerrar sesión
              },
            ),
          ],
        ),
      ),
    );
  }
}
