import 'package:flutter/material.dart';
import 'package:flutter_submission_dart/screens/calendar_page.dart';
import 'package:flutter_submission_dart/screens/edit_profile.dart';
import 'package:flutter_submission_dart/screens/home_scool_page.dart';
import 'package:flutter_submission_dart/style/light_colors.dart';
import 'package:flutter_submission_dart/widget/active_projects_card.dart';
import 'package:flutter_submission_dart/widget/task_column.dart';
import 'package:flutter_submission_dart/widget/top_container.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: const TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return const CircleAvatar(
      radius: 25.0,
      backgroundColor: LightColors.kGreen,
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
          child: Column(
        children: [
          TopContainer(
            height: 200.0,
            width: width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePageScool()));
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: LightColors.kDarkBlue,
                        size: 30.0,
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: LightColors.kDarkBlue,
                      size: 25.0,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 0.75,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: LightColors.kDarkBlue,
                        backgroundColor: LightColors.kDarkYellow,
                        center: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()));
                          },
                          child: const CircleAvatar(
                            backgroundColor: LightColors.kDarkBlue,
                            radius: 35.0,
                            backgroundImage: AssetImage(
                              'assets/images/avatar.png',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Submission Dart",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 22.0,
                              color: LightColors.kDarkBlue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'App Developer',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          subheading('My Task'),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CalendarPage()));
                              print('can aya');
                            },
                            child: calendarIcon(),
                          )
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeScreenHttp()));
                        },
                        child: const TaskColumn(
                          icon: Icons.alarm,
                          iconBackgroundColor: LightColors.kRed,
                          title: 'To Do',
                          subtitle: '5 task now. 1 started',
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const TaskColumn(
                        icon: Icons.alarm,
                        iconBackgroundColor: LightColors.kRed,
                        title: 'Done',
                        subtitle: '18 task now. 13 started',
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    children: [
                      subheading('Active Projects'),
                      const SizedBox(height: 5.0),
                      Row(
                        children: const <Widget>[
                          ActivePeojectsCard(
                              cardColor: LightColors.kGreen,
                              loadingPercent: 0.25,
                              title: 'Medical App',
                              subtitle: '9 hours progress')
                        ],
                      ),
                      const SizedBox(width: 20.0),
                      Row(
                        children: const <Widget>[
                          ActivePeojectsCard(
                              cardColor: LightColors.kGreen,
                              loadingPercent: 0.6,
                              title: 'Masking History Notes',
                              subtitle: '20 hours progress')
                        ],
                      ),
                      const SizedBox(width: 20.0),
                      Row(
                        children: const <Widget>[
                          ActivePeojectsCard(
                              cardColor: LightColors.kGreen,
                              loadingPercent: 0.45,
                              title: 'Sport App',
                              subtitle: '20 hours progress')
                        ],
                      ),
                      const SizedBox(width: 20.0),
                      Row(
                        children: const <Widget>[
                          ActivePeojectsCard(
                              cardColor: LightColors.kGreen,
                              loadingPercent: 0.9,
                              title: 'Online Flutter Course',
                              subtitle: '23 hours progress')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
