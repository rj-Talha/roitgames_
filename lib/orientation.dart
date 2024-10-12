import 'package:flutter/material.dart';

class CustomOrientationBuilder extends StatelessWidget {
  const CustomOrientationBuilder({
    super.key,
    required this.builder,
  });

  final OrientationWidgetBuilder builder;

  Widget _buildWithConstraints(BuildContext context) =>
      builder(context, MediaQuery.of(context).orientation);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: _buildWithConstraints);
  }
}
