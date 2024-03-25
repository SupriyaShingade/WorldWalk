import 'package:WorldWalk/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function(bool)? onChanged;
  

  RoundedCheckbox({
    required this.isChecked,
    required this.onChanged,
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) {
          onChanged!(!isChecked);
        }
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.transparent,
            width: 2,
          ),
          color: isChecked ? CommonColor.mainColor : CommonColor.deepLightGreyColor,
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                color: CommonColor.whiteColor,
                size: 20,
              )
            : Icon(
                Icons.check,
                color: CommonColor.whiteColor,
                size: 20,
              ),
      ),
    );
  }
}
