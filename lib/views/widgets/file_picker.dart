import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PickFile extends StatefulWidget {
  const PickFile({
    Key? key,
  }) : super(key: key);

  @override
  State<PickFile> createState() => _PickFileState();
}

class _PickFileState extends State<PickFile> {
  int currentStep = 0;

  get currentState => currentStep;
  void pick() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final file = result.files.first;
      setState(() => currentStep++);
      print(file.name);
      print('Index courant: $currentStep');
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
