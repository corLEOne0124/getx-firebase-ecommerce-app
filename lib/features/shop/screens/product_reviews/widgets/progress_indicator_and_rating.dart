import 'package:flutter/material.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/utils/device/device_utility.dart';

class MyRatingProgressIndicator extends StatelessWidget {
  const MyRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MyDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: MyColors.grey,
              valueColor: const AlwaysStoppedAnimation(
                MyColors.primary,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ],
    );
  }
}
