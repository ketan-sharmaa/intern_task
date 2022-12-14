import 'package:flutter/material.dart';
import 'package:intern_task/util/course_choice_chip.dart';
import 'package:intern_task/widget/label_checkbox.dart';

class CourseSelectionScreen extends StatelessWidget {
  const CourseSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_sharp))),
        body: Center(
          child: Column(
            children: [
              Text(
                'Learning App',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Image.asset(
                  'intro.png',
                  scale: 5,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Select your course level',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 30),
              const CourseChoiceChip(),
              const SizedBox(height: 20),
              const LabelCheckBox(checkboxLabel: 'Are you sure?'),
              const SizedBox(height: 15),
              ElevatedButton(onPressed: () {}, child: const Text('Continue'))
            ],
          ),
        ),
      ),
    );
  }
}
