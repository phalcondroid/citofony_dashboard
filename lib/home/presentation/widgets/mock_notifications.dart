import 'package:citofony_dashboard/home/presentation/widgets/notification_center_screen.dart';
import 'package:flutter/material.dart';

List<AppNotification> mockNotifications = [
  // 🔌 Utility bills
  AppNotification(
    type: NotificationType.electricity,
    title: "Recibo de la luz",
    body: "Tu factura de enel ha llegado!",
    timestamp: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  AppNotification(
    type: NotificationType.water,
    title: "Recibo del acueducto",
    body: "Tu factura del Acueducto Bogotá ha llegado.",
    timestamp: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
  ),

  // 📦 Package deliveries
  AppNotification(
    type: NotificationType.package,
    title: "Paquete de amazon",
    body: "Ha llegado un paquete de amazon",
    timestamp: DateTime.now().subtract(const Duration(hours: 3)),
    data: {
      "carrier": "Amazon Logistics",
      "guard": "Carlos Gómez",
      "time": "3:00 PM",
      "images": [
        "https://www.adslzone.net/app/uploads-adslzone.net/2024/01/paquetes-amazon.jpg",
        "https://previews.123rf.com/images/scanrail/scanrail1503/scanrail150300001/37439219-creativo-abstracto-env%C3%ADo-log%C3%ADstica-y-productos-en-paquetes-al-por-menor-entrega-concepto-de-negocio.jpg",
      ],
    },
  ),
  AppNotification(
    type: NotificationType.internet,
    title: "Recibo del internet",
    body: "Tu factura de internet ha llegado.",
    timestamp: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
  ),
  AppNotification(
    type: NotificationType.gas,
    title: "Recibo del gas",
    body: "Tu factura de vanti ha llegado",
    timestamp: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
  ),
  AppNotification(
    type: NotificationType.package,
    title: "Paquete de mercado Libre",
    body: "Llego una caja de mercado libre",
    timestamp: DateTime.now().subtract(const Duration(days: 2)),
    data: {
      "carrier": "Mercado Envíos",
      "guard": "Diana López",
      "time": "9:15 AM",
      "images": [
        "https://i.blogs.es/5a7fec/rastrear-paquete-de-mercado-libre/1200_800.webp",
        "https://static.wixstatic.com/media/961673_b44c9aaadc164c119e85d2d33464c8ed~mv2.png/v1/fill/w_804,h_498,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/mercado%20libre_2x.png",
      ],
    },
  ),

  // 📅 Reservations
  AppNotification(
    type: NotificationType.reservation,
    title: "Recordatorio de reserva: Pisicna",
    body: "Tu reservación es hoy a las 5:00 PM.",
    timestamp: DateTime.now().subtract(const Duration(minutes: 45)),
    data: {
      "service": "Pisicina",
      "date": DateTime.now(),
      "time": const TimeOfDay(hour: 17, minute: 0),
    },
  ),

  // 🛡️ Reception/Security messages
  AppNotification(
    type: NotificationType.food,
    title: "Domicilio de comida",
    body: "Rappi.",
    timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
    data: {
      "type": "Delivery",
      "message": "Rappi courier wearing blue, order under your name.",
      "time": "12:40 PM",
      "image": [
        "https://i0.wp.com/goula.lat/wp-content/uploads/2022/05/entrega-de-comida.jpg",
        "https://www.las2orillas.co/wp-content/uploads/2023/06/Rappi-y-Carulla.jpeg",
      ],
    },
  ),
  AppNotification(
    type: NotificationType.securityMessage,
    title: "Visitor en recepción",
    body: "Tu invitado Andrés está esperando en recepción",
    timestamp: DateTime.now().subtract(const Duration(hours: 2)),
    data: {
      "type": "Visitor",
      "message":
          "Datos personales, dice que viene de visita, parentesco: hermanos.",
      "time": "10:15 AM",
      "image": null,
    },
  ),
];
