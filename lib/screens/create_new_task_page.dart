import 'package:flutter/material.dart';
import 'package:flutter_submission_dart/screens/home_page.dart';
import 'package:flutter_submission_dart/style/light_colors.dart';
import 'package:flutter_submission_dart/widget/back_button.dart';
import 'package:flutter_submission_dart/widget/my_text_field.dart';
import 'package:flutter_submission_dart/widget/top_container.dart';

class CreateNewTaskPage extends StatelessWidget {
  const CreateNewTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var downwardIcon =
        const Icon(Icons.keyboard_arrow_down, color: Colors.black54);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TopContainer(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            width: width,
            child: Column(
              children: [
                MyBackButton(),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: const [
                    Text(
                      'Create new task',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextField(label: 'Title'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: MyTextField(
                              label: 'Date',
                              icon: downwardIcon,
                            ),
                          ),
                          HomePage.calendarIcon(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: MyTextField(
                      label: 'Start',
                      icon: downwardIcon,
                    )),
                    const SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: MyTextField(
                        label: 'End Time',
                        icon: downwardIcon,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyTextField(
                  label: 'Description',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        runSpacing: 0,
                        spacing: 10.0,
                        children: const [
                          Chip(
                            label: Text('SPORT APP'),
                            backgroundColor: LightColors.kRed,
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          Chip(
                            label: Text('MEDICAL'),
                          ),
                          Chip(
                            label: Text('RENT APP'),
                          ),
                          Chip(
                            label: Text('NOTES'),
                          ),
                          Chip(
                            label: Text('GAMING PLATFORM APP'),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
          Container(
            height: 80,
            width: width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: const Text(
                    'Create Task',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  width: width - 40,
                  decoration: BoxDecoration(
                      color: LightColors.kDarkBlue,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
