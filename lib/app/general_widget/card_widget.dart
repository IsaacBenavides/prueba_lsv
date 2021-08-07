import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
  final EdgeInsets externalPadding;

  const CardWidget(
      {Key? key,
      required this.child,
      this.height,
      this.width,
      this.externalPadding = EdgeInsets.zero})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: externalPadding,
      child: Card(
        elevation: 4,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          height: height ?? 250,
          width: width ?? 300,
          child: child,
        ),
      ),
    );
  }
}
