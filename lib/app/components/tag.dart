import 'package:flutter/material.dart';
import 'package:nft_art/app/main.dart';
import 'package:nft_art/app/models/enum.dart';
import 'package:nft_art/app/utils/colors.dart';
import 'package:nft_art/app/utils/style.dart';

class Tag extends StatelessWidget {
  const Tag(this.content, {this.status = Status.success, Key? key})
      : super(key: key);
  final String? content;
  final int status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: status == Status.info
              ? isDark
                  ? AppColor.accentGradient
                  : AppColor.primaryGradient
              : null,
          color: status == Status.info
              ? null
              : _colorByStatusAndTheme(status, isDark)),
      child: Text(
        content ?? '',
        style: textThemeBold.bodyText1?.copyWith(color: AppColor.offWhite),
      ),
    );
  }

  Color _colorByStatusAndTheme(int status, bool isDark) {
    switch (status) {
      case Status.success:
        if (isDark) {
          return AppColor.successDark;
        }
        return AppColor.success;
      case Status.alert:
        if (isDark) {
          return AppColor.errorDark;
        }
        return AppColor.error;
      case Status.warning:
        if (isDark) {
          return AppColor.warningDark;
        }
        return AppColor.warning;
      default:
        return AppColor.success;
    }
  }
}
