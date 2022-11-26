import 'package:flutter/cupertino.dart';
import 'package:job4all/utils/constants.dart';

class SliderIndicator extends StatelessWidget {
  bool isActive;
  SliderIndicator({super.key, required this.isActive});

  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 20 : 5,
      height: 5,
      decoration: BoxDecoration(
          color: isActive
              ? constants.appIndicatorActive
              : constants.appIndicatorInactive,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
