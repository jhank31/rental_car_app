import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rental_car_app/core/colors/colors.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';

class TabMap extends StatefulWidget {
  const TabMap({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  State<TabMap> createState() => _TabMapState();
}

class _TabMapState extends State<TabMap> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });

    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => context.push('/mapDetailPage', extra: widget.car),
        child: Container(
            height: 170,
            decoration: BoxDecoration(
              color: ConstantsColors.carCardBackgroundColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 10, spreadRadius: 5)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Transform.scale(
                scale: _animation!.value,
                child: Image.asset(
                  'assets/icons/maps.png',
                  fit: BoxFit.cover,
                ),
              ),
            )),
      ),
    );
  }
}
