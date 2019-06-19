import 'package:flutter/material.dart';

import 'dialog.dart';
import 'helper/consts.dart';

class DialogManager {
  static void showSingle(
    String description,
    String title,
    DialogType type,
    BuildContext context,
  ) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) =>
          StarforceDialog(title: title, description: description, type: type),
    );
  }
}
