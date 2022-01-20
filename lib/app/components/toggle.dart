import 'package:flutter/material.dart';
import 'package:nft_art/app/main.dart';
import 'package:nft_art/app/utils/colors.dart';

class AppToggle extends StatelessWidget {
  const AppToggle({Key? key, this.value = true, this.onChanged})
      : super(key: key);

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    const Duration duration = Duration(milliseconds: 300);
    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(!value) : null,
      child: Opacity(
        opacity: onChanged == null ? 0.4 : 1,
        child: AnimatedContainer(
          duration: duration,
          height: 36,
          width: 64,
          decoration: BoxDecoration(
            color: value ? AppColor.primary : AppColor.placeHolder,
            // gradient: value
            //     ? onChanged != null
            //         ? AppColor.primaryGradient
            //         : AppColor.accentGradient
            //     : null,
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.all(1),
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(

                left: value ? null : 1,
                right: !value ? null : 1,
                child: AnimatedContainer(
                  duration: duration,
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: onChanged == null && isDark
                        ? AppColor.titleActive
                        : AppColor.offWhite,
                    shape: BoxShape.circle
                  ),
                ),
                duration: duration,
              )
            ],
          ),
        ),
      ),
    );
  }
}
