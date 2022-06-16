import 'package:flutter/material.dart';
import 'package:flutter_application/resources/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;

  const RoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40.h,
        width: 200.w,
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: loading ? const CircularProgressIndicator(color: Colors.white,) :  Text(
          title,
          style:const TextStyle(color: AppColors.whiteColor),
        )),
        // decoration:,
      ),
    );
  }
}
