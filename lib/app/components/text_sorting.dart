import 'package:flutter/material.dart';
import 'package:nft_art/app/components/clip_triangle.dart';
import 'package:nft_art/app/utils/colors.dart';

class TextSorting extends StatelessWidget {
  const TextSorting(
      {Key? key, this.initialValue, this.listValue, this.onChanged})
      : super(key: key);
  final String? initialValue;
  final List<String>? listValue;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Flexible(
          child: Stack(
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                margin: EdgeInsets.only(top: 10),
                width: 164,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                    color: AppColor.inputBG,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                      listValue?.length ?? 0,
                      (index) => GestureDetector(
                        onTap: () => onChanged!(listValue?[index]??""),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Text(
                                listValue?[index] ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                        color: listValue?[index] == initialValue
                                            ? AppColor.body
                                            : AppColor.placeHolder),
                              ),
                        ),
                      )),
                ),
              ),
              Positioned(
                right: 12,
                top: 0,
                child: CustomPaint(
                  painter: CustomTriangleClipper(
                      paintingStyle: PaintingStyle.fill,
                      strokeColor: AppColor.inputBG),
                  child: Container(
                    height: 20,
                    width: 33,
                    // color: AppColor.inputBG,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
