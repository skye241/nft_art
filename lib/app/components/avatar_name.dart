import 'package:flutter/material.dart';
import 'package:nft_art/app/components/avatar.dart';
import 'package:nft_art/app/utils/colors.dart';
import 'package:nft_art/app/utils/style.dart';

class AvatarWithName extends StatelessWidget {
  const AvatarWithName(
      {Key? key,
      this.firstName,
      this.lastName,
      this.status,
      this.image,
      this.isActive})
      : super(key: key);

  final String? firstName;
  final String? lastName;
  final String? status;
  final String? image;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    final String fullName = (firstName ?? '') + ' ' + (lastName??'');
    if (lastName != null) {
      return Row(
        children: <Widget>[
          Avatar(
            name: firstName,
            image: image,
            isActive: isActive,
          ),
          Container(
            width: 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                fullName,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              if (status != null)
                Text(
                  status ?? 'Active',
                  style: Theme.of(context).textTheme.bodyText2
                      ?.copyWith(color: AppColor.placeHolder),
                ),
            ],
          )
        ],
      );
    }

    return Column(
      children: <Widget>[
        Avatar(
          name: firstName,
          image: image,
          isActive: isActive,
        ),
        Container(
          height: 4,
        ),
        Text(
          firstName ?? '',
          style: textThemeBold.subtitle2,
        ),
      ],
    );
  }
}
