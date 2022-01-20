import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_art/app/utils/colors.dart';
import 'package:nft_art/app/utils/style.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, this.image, @required this.name, this.isActive})
      : super(key: key);
  final String? image;
  final String? name;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(1.5, 1.5, 3, 1.5),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                gradient: AppColor.secondaryGradient,
                shape: BoxShape.circle,
                image: image != null
                    ? DecorationImage(
                        image: NetworkImage(image ?? ''), fit: BoxFit.fitHeight)
                    : null),
            child: image == null
                ? Center(
                    child: Text(
                      name?.substring(0, 1).toUpperCase() ?? '',
                      style: textThemeBold.headline2
                          ?.copyWith(color: AppColor.offWhite),
                    ),
                  )
                : null,
          ),
        if (isActive ?? false)
          Positioned(
          top: 6,
          right: 0,
          child: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                color: AppColor.success,
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColor.offWhite,
                    width: 1,
                    style: BorderStyle.solid)),
          ),
        ),
      ],
    );
  }
}
