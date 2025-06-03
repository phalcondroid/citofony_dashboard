import 'package:citofony_dashboard/common/config/ui/helpers/pagination_utils.dart';
import 'package:citofony_dashboard/home/presentation/widgets/booking_screen.dart';
import 'package:flutter/material.dart';

class Service {
  final String nombre;
  final IconData icono;
  final Color color;

  Service({required this.nombre, required this.icono, required this.color});
}

final List<Service> services = [
  Service(nombre: 'Piscina', icono: Icons.pool, color: Colors.cyan),
  Service(nombre: 'Sauna', icono: Icons.spa, color: Colors.orange),
  Service(
    nombre: 'Sala de Juegos',
    icono: Icons.sports_esports,
    color: Colors.purple,
  ),
  Service(
    nombre: 'Zona BBQ',
    icono: Icons.outdoor_grill,
    color: Colors.redAccent,
  ),
  Service(nombre: 'Cancha', icono: Icons.sports_soccer, color: Colors.green),
  Service(nombre: 'Coworking', icono: Icons.laptop_mac, color: Colors.blueGrey),
];

class ServicesList extends StatelessWidget {
  const ServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: services.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Cambia a 3 si lo prefieres
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4 / 3,
        ),
        itemBuilder: (context, index) {
          final serviceName = services[index];
          return InkWell(
            onTap: () {
              goPage(
                context: context,
                destination: BookingScreen(serviceName: serviceName.nombre),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Reservar ${serviceName.nombre}')),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: serviceName.color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: serviceName.color, width: 1.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(serviceName.icono, size: 42, color: serviceName.color),
                  const SizedBox(height: 12),
                  Text(
                    serviceName.nombre,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: serviceName.color,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
