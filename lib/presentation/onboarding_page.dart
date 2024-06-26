import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rental_car_app/core/core.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantsColors.onboardingBackgroundColor,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/onboarding.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenSize(context, 'width', 1) * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Premium cars.\nEnjoy the luxury',
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Premium and prestige car daily rental.\nExperience the thrill at lower price.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 320,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20)),
                          onPressed: () {
                            context.go('/carListPage');
                          },
                          child: const Text('Let\'s go'),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
