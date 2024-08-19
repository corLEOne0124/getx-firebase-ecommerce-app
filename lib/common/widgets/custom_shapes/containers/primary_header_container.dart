import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/my_circular_container.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:getx_ecommerce/constants/colors.dart';

class MyPrimaryHeadContainer extends StatelessWidget {
  const MyPrimaryHeadContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgeWidget(
      child: Container(
        color: MyColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: MyCircularContainer(
                  backgroundColor: MyColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: MyCircularContainer(
                  backgroundColor: MyColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
