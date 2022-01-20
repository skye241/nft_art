import 'package:flutter/material.dart';
import 'package:nft_art/app/components/text_sorting.dart';
import 'package:nft_art/app/utils/colors.dart';

class AppDropDown extends StatefulWidget {
  const AppDropDown(
      {Key? key, this.initialValue, this.listValue, this.onChanged})
      : super(key: key);

  final String? initialValue;
  final List<String>? listValue;
  final ValueChanged<String>? onChanged;

  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  bool openDialog = false;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          InkWell(
            onTap: widget.onChanged != null ? () {
              setState(() {
                openDialog = !openDialog;
              });
            } : null,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: widget.onChanged != null
                      ? Border.all(color: AppColor.primary, width: 1)
                      : null,
                  color: widget.onChanged != null
                      ? Theme.of(context).inputDecorationTheme.fillColor
                      : Theme.of(context).inputDecorationTheme.focusColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.initialValue ?? 'Initial Value',
                    style: Theme.of(context).primaryTextTheme.bodyText1?.copyWith(
                        color: widget.onChanged != null
                            ? AppColor.titleActive
                            : Theme.of(context).unselectedWidgetColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: widget.onChanged == null
                        ? Theme.of(context).unselectedWidgetColor
                        : AppColor.body,
                  )
                ],
              ),
            ),
          ),
            Flexible(
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 100),
                opacity: openDialog? 1:0,
                child: TextSorting(
                  initialValue: widget.initialValue,
                  listValue: widget.listValue,
                  onChanged: widget.onChanged,
                ),
              ),
            )
        ],
      ),
    );
  }
}
