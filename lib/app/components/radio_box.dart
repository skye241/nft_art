import 'package:flutter/material.dart';
import 'package:nft_art/app/utils/colors.dart';

class AppRadioBox<T> extends StatelessWidget {
  const AppRadioBox({Key? key, this.value, this.groupValue, this.onChanged})
      : super(key: key);

  final T? value;
  final T? groupValue;
  final VoidCallback? onChanged;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onChanged== null? 0.4 : 1,
      child: InkWell(
        onTap: onChanged,
        child: Container(
          // duration: const Duration(milliseconds: 200),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value == groupValue
                ? AppColor.primary
                : Theme.of(context).disabledColor,
          ),
          child: value == groupValue
              ? const Center(
                  child: Icon(
                    Icons.check,
                    color: AppColor.offWhite,
                    size: 16,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
