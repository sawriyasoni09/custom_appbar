import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar {
  static PreferredSizeWidget appBar({
    String title = '',
    String message = '',
    List<Widget>? widgets,
    Widget? leading,
    double? leadingWidth,
    TextStyle? titleStyle,
    double? elevation = 0,
    double toolbarHeight = 56,
    Color color = Colors.transparent,
    SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark,
    bool centerTitle = true,
    Color? titleColor,
  }) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      automaticallyImplyLeading: false,
      systemOverlayStyle: systemOverlayStyle,
      backgroundColor: color,
      elevation: elevation,
      scrolledUnderElevation: 0,
      leadingWidth: leadingWidth,
      surfaceTintColor: Colors.transparent,
      leading: leading != null
          ? Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 6),
        child: leading,
      )
          : null,
      title: Text(
        title,
        style: titleStyle ??
            TextStyle(
              color: titleColor ?? Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
      ),
      centerTitle: centerTitle,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      actionsPadding: const EdgeInsets.only(right: 16.0),
      actions: widgets,
    );
  }
}
