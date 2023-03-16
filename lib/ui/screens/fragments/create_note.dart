import 'package:flutter/material.dart';
import 'package:personal_finance/ui/utils/spacing.dart';

import '../../widgets/app_elevated_button.dart';
import '../../widgets/app_text_field.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppTextField(hint: 'Title', controller: TextEditingController(),),
            Spacing.verticalSpacing(8.0),
            AppTextField(hint: "Description", controller: TextEditingController(), maxLines: 5,),
            Spacing.verticalSpacing(8.0),
            AppElevatedButton(
              buttonText: 'Add Note',
              onPressed: () {

              },
            )
          ],
        ),
      ),
    );
  }
}
