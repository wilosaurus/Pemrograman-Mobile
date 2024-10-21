import 'package:flutter/material.dart';
import 'basic_widgets/increment_counter_widget.dart';
import 'basic_widgets/alert_dialog_widget.dart';
import 'basic_widgets/date_picker_widget.dart';
import 'basic_widgets/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello_World',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mochamad Wildani Azizi/2241720171'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(child: IncrementCounterWidget()),
          Expanded(child: AlertDialogWidget()),
          Expanded(child: TextFieldWidget(label: 'Name')),
          Expanded(child: DatePickerWidget()),
        ],
      ),
    );
  }
}
