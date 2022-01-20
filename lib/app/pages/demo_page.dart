import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nft_art/app/components/avatar.dart';
import 'package:nft_art/app/components/avatar_name.dart';
import 'package:nft_art/app/components/check_box.dart';
import 'package:nft_art/app/components/divider.dart';
import 'package:nft_art/app/components/drop_down.dart';
import 'package:nft_art/app/components/radio_box.dart';
import 'package:nft_art/app/components/tag.dart';
import 'package:nft_art/app/components/toggle.dart';
import 'package:nft_art/app/models/enum.dart';
import 'package:nft_art/app/utils/theme/app_themes.dart';
import 'package:nft_art/app/utils/theme/theme_bloc.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  bool value = true;
  String dropDown = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(
                    appTheme: Theme.of(context).brightness == Brightness.dark
                        ? AppTheme.Light
                        : AppTheme.Dark));
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Column(
        children: [
          Avatar(
            name: 'VÂN',
            isActive: true,
            image:
                "https://scontent.fhan2-2.fna.fbcdn.net/v/t1.6435-9/117715943_3038181346304005_1987127693604897768_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=DbNEqT7s2ucAX9NcEZf&_nc_ht=scontent.fhan2-2.fna&oh=543989e5e64992439c0e7afd3bfec6bf&oe=6188E9A9",
          ),
          AvatarWithName(
            firstName: 'VAN',
            lastName: 'DAM',
            status: 'Active',
            isActive: true,
            // image:
            //     "https://scontent.fhan2-2.fna.fbcdn.net/v/t1.6435-9/117715943_3038181346304005_1987127693604897768_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=DbNEqT7s2ucAX9NcEZf&_nc_ht=scontent.fhan2-2.fna&oh=543989e5e64992439c0e7afd3bfec6bf&oe=6188E9A9",
          ),
          Tag(
            'Success',
            status: Status.success,
          ),
          Tag(
            'Success',
            status: Status.warning,
          ),
          Tag(
            'Success',
            status: Status.info,
          ),
          Tag(
            'Success',
            status: Status.alert,
          ),
          AppCheckBox(
            value: true,
            onChanged: null,
          ),
          AppCheckBox(
            value: false,
            onChanged: null,
          ),
          AppCheckBox(
            value: value,
            onChanged: () {
              setState(() {
                value = !value;
              });
            },
          ),

         Expanded(
           child: AppDropDown(
             initialValue: dropDown,
             listValue: <String>[
               'Hi',
               'Hello',
             ],
             onChanged: (String value){
               setState(() {
                 dropDown = value;
               });
             },
           ),
         ),
          AppToggle(
            value: value,
            onChanged: (bool newVal){
              setState(() {
                value = newVal;
              });
            },
          ),
          AppRadioBox(
            value: 'Hello',
            groupValue: 'Hi',
            onChanged: (){},
          ),

          AppDivider(thin: true, padded: true),
          AppDivider(thin: false, padded: true),
          AppDivider(thin: true, padded: false),
          AppDivider(thin: false, padded: false),
          // AppCheckBox(
          //   value: true,
          //   onChanged: null,
          // ),
        ],
      ),
    );
  }
}
