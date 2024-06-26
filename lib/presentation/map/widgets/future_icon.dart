import 'package:flutter/material.dart';

class FutureIcons extends StatefulWidget {
  const FutureIcons({super.key});

  @override
  State<FutureIcons> createState() => _FutureIconsState();
}

class _FutureIconsState extends State<FutureIcons> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FutureIcon(
          icon: Icons.local_gas_station,
          title: 'Diesel',
          subtitle: 'Common Rail',
        ),
        FutureIcon(
          icon: Icons.speed,
          title: 'Acceleration',
          subtitle: '0 - 100 km/s',
        ),
        FutureIcon(
          icon: Icons.ac_unit,
          title: 'Cold',
          subtitle: 'Temp Control',
        ),
      ],
    );
  }
}

class FutureIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const FutureIcon({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 28,
          ),
          Text(title),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
