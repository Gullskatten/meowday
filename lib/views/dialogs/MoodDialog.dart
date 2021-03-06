import 'package:app/components/text/StyledText.dart';
import 'package:app/constants/colors/boxes.dart';
import 'package:app/constants/spacing/spacing.dart';
import 'package:app/locale/Loc.dart';
import 'package:app/models/text/FontFamily.dart';
import 'package:app/models/text/TextColor.dart';
import 'package:app/models/text/TextType.dart';
import 'package:app/views/MoodSelect.dart';
import 'package:flutter/material.dart';

const k_mood_dialog_title = 'mood.dialog.title';

class MoodDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kPrimaryNormal,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          StyledText(
            Loc.of(context).t(k_mood_dialog_title),
            fontFamily: FontFamily.alternative,
            type: TextType.subtitle,
          ),
          SizedBox(
            height: kSpacingNormal,
          ),
          MoodSelect(),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: StyledText(
            Loc.of(context).t(k_common_button_cancel),
            fontWeight: FontWeight.bold,
            color: TextColor.primary60,
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: StyledText(
            Loc.of(context).t(k_common_button_confirm),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
