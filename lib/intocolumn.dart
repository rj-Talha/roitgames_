import 'package:flutter/material.dart';
import 'package:roitgames_/orientation.dart';

typedef OrientedChildrenBuilder = List<Widget> Function(
  BuildContext,
  Orientation,
);

class OrientedMultiChild extends StatelessWidget {
  const OrientedMultiChild({
    required this.childrenBuilder,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    super.key,
  });

  final OrientedChildrenBuilder childrenBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return CustomOrientationBuilder(
      builder: (_, orientation) => IntrinsicHeight(
        child: switch (orientation) {
          Orientation.portrait => Column(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: childrenBuilder(context, orientation),
            ),
          Orientation.landscape => Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: childrenBuilder(context, orientation),
            ),
        },
      ),
    );
  }
}
