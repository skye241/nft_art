import 'package:flutter/material.dart';
import 'package:nft_art/app/utils/colors.dart';

import '../main.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({Key? key, @required this.value, @required this.onChanged})
      : super(key: key);

  final bool? value;
  // final bool? isDefault;
  final VoidCallback? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 24,
        width: 24,
        child: (value ?? false)
            ? Icon(
                Icons.check,
                size: 20,
                color: onChanged == null && isDark
                    ? AppColor.label
                    : AppColor.offWhite,
              )
            : null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: (value ?? false) ? _color(context) : null,
          border: (value ?? false)
              ? null
              : Border.all(color: _color(context), width: 1),
          // color: onChanged== null? App
        ),
        // child:
      ),
    );
  }

  Color _color(BuildContext context) {
    if (onChanged == null) {
      return Theme.of(context).disabledColor;
    } else
      return AppColor.primaryDark;
  }
}
