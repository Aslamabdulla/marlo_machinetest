// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marlo/view/common/common.dart';

class SubHeadTitleWidget extends StatelessWidget {
  final String leading;
  final String trailing;
  final VoidCallback onTap;
  const SubHeadTitleWidget({
    Key? key,
    required this.leading,
    required this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leading,
            style: textStyleRowSubHead(kGrey),
          ),
          Text(
            "See all",
            style: textStyleRowSubHead(kBlue),
          )
        ],
      ),
    );
  }
}
