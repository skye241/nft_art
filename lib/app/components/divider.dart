import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({Key? key, @required this.thin, @required this.padded})
      : super(key: key);

  final bool? thin;
  final bool? padded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padded ?? false ? 24 : 0),
      child: Divider(
        thickness: thin ?? false ? 1 : 8,
      ),
    );
  }
}
