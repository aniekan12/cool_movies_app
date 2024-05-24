import 'package:flutter/material.dart';

class CoolMoviesModalBottomSheet {
  CoolMoviesModalBottomSheet._();

  static Future<dynamic> showBottomSheet({
    bool? showDraghandle,
    required BuildContext context,
    required Widget child,
    bool? isScrollControlled,
  }) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => child,
      isScrollControlled: isScrollControlled ?? true,
      showDragHandle: showDraghandle,
    );
  }
}
