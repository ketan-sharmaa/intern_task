import 'package:flutter/material.dart';
import 'package:intern_task/util/widget/card/card_items.dart';
import 'package:intern_task/util/classes.dart';

class CourseTiles extends StatelessWidget {
  CourseTiles({super.key});
  final _courseIds = MyCourses();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CourseClass.items.length,
      itemBuilder: ((context, index) =>
          CardTile(item: CourseClass.items[index])),
    );
  }
}

// ignore: non_constant_identifier_names
Widget CardTile({required CardItem item}) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 120,
      child: Card(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Expanded(flex: 2, child: SizedBox()),
                      Text(
                        item.subtitle,
                        style: const TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const Expanded(flex: 2, child: SizedBox()),
                      AddButton(course: item)
                    ]),
              ),
            )
          ],
        ),
      ),
    );

class AddButton extends StatefulWidget {
  final CardItem course;
  const AddButton({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  final _courseIds = MyCourses();

  @override
  Widget build(BuildContext context) {
    bool isAdded = _courseIds.courses.contains(widget.course) ? true : false;

    return TextButton(
        onPressed: () {
          isAdded = !isAdded;
          final _course = CourseClass();
          _courseIds.course = _course;
          _courseIds.addCourse(widget.course);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepPurpleAccent)),
        child: isAdded
            ? const Text(
                'Added',
                style: TextStyle(color: Colors.white70),
              )
            : const Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ));
  }
}