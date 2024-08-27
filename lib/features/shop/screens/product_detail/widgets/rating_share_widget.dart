import 'package:flutter/material.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class RatingShareWidget extends StatelessWidget {
  const RatingShareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(
                Iconsax.star5,
                size: 24,
                color: Colors.amber,
              ),
              const SizedBox(
                width: MySizes.spaceBtwItems / 2,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '5.0',
                      style:
                          Theme.of(context).textTheme.bodyLarge,
                    ),
                    const TextSpan(text: '(199)')
                  ],
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: MySizes.iconMd,
          ),
        ),
      ],
    );
  }
}
