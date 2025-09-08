import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onSubmit,
    required this.child,
    this.disableButton = false,
    this.minWidth,
  });
  final VoidCallback onSubmit;
  final Widget child;
  final bool disableButton;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // color: MyColors.main,
      // minWidth: minWidth ?? MediaQuery.sizeOf(context).width,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      // height: 50,
      // disabledColor: Colors.grey,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minWidth ?? MediaQuery.sizeOf(context).width, 50),
        backgroundColor: Theme.of(context).colorScheme.primary,
        disabledBackgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
      ),
      onPressed: disableButton ? null : onSubmit,
      child: child,
    );
  }
}
