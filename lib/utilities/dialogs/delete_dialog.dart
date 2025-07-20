import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Delete',
    content: 'Are you sure you want to Delete?',
    optionsBuilder: () => {'Cancel': false, 'Yes': true}, // Fixed: return bool, not function
  ).then((value)=> value ??  false);
}