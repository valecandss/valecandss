import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RegisterSmoothIndicator extends StatelessWidget {
  final int? count;
  final PageController controller;
  const RegisterSmoothIndicator({
    super.key,
    this.count,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SmoothPageIndicator(
        controller: controller,
        count: count ?? 9,
        effect: WormEffect(
          dotWidth: 8,
          dotHeight: 8,
          dotColor: colors.secondaryContainer,
          activeDotColor: colors.primary,
        ),
      ),
    );
  }
}
