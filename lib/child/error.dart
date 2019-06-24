import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  ErrorDialog({
    Key key,
    @required this.title,
    this.description,
    this.icon,
  }) : super(key: key);
  final String title;
  final String description;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _infoIcon,
        _title,
        _space,
        _description,
      ],
    );
  }

  Widget get _title => Text(
        this.title,
        style: UIHelper.titleTextStyle,
      );
  Widget get _description => Text(
        this.description ?? "",
        textAlign: TextAlign.center,
        style: UIHelper.descriptionTextStyle,
      );
  Widget get _infoIcon => this.icon ?? Icon(Icons.close, color: Colors.red);
  Widget get _space => UIHelper.verticalSpace(height: 10);
}
