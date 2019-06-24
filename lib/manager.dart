import 'package:flutter/material.dart';

import 'dialog.dart';
import 'helper/consts.dart';

class DialogManager {
  /// Must be required [title],[type],[context] item.
  /// This statement return starforce ui design.
  static void showSingle({
    String description,
    @required String title,
    @required DialogType type,
    bool barrierDismissible,
    @required BuildContext context,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible ?? true,
      context: context,
      builder: (BuildContext context) =>
          StarforceDialog(title: title, description: description, type: type),
    );
  }
}
