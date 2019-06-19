import 'package:dialog_app/child/single.dart';
import 'package:dialog_app/helper/consts.dart';
import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class StarforceDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StarforceDialogState();
  final String description;
  final String title;
  final DialogType type;
  final TextField field;
  final List<RaisedButton> buttons;

  StarforceDialog(
      {Key key,
      @required this.title,
      this.field,
      this.description,
      @required this.type,
      this.buttons})
      : super(key: key);
}

class StarforceDialogState extends State<StarforceDialog>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    controllerInit();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UIHelper.padding),
      ),
      backgroundColor: Colors.transparent,
      child: _dialogContent,
    );
  }

  Widget get _dialogContent {
    return BackdropFilter(
      filter: UIHelper.backgroundFilter,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          padding: EdgeInsets.all(UIHelper.padding),
          decoration: UIHelper.dialogBoxDecoration,
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              _dialogCloseButton,
              SingleDialog(
                title: widget.title,
                description: widget.description,
                type: widget.type,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _dialogCloseButton {
    return widget.type == DialogType.loading
        ? UIHelper.verticalSpace()
        : Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.close),
            ),
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void controllerInit() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _scaleAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _controller.forward(from: 0.5);
  }
}
