import 'package:bmi/bmi_calculator.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../components/constant.dart';
import '../components/custom_button.dart';
import '../components/custom_container.dart';
import '../components/custom_container_button.dart';

enum Gender { male, female }

Gender selectedGender = Gender.male;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double height = 160.0;
  int weight = 70;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  icon: FontAwesomeIcons.cog,
                ),
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                      color: Color(0xFF697184),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300),
                ),
                CustomButton(
                  icon: FontAwesomeIcons.user,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainerButton(
                  text: Text(
                    'Male',
                    style: TextStyle(
                        color: selectedGender == Gender.male
                            ? kActiveTextColor
                            : kInactiveTextColor),
                  ),
                  onSelected: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? kActiveColor
                      : kInactiveColor,
                ),
                CustomContainerButton(
                  onSelected: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? kActiveColor
                      : kInactiveColor,
                  text: Text(
                    'Female',
                    style: TextStyle(
                      color: selectedGender == Gender.female
                          ? kActiveTextColor
                          : kInactiveTextColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(
                            child: Text(
                          'Height',
                          style: kMediumTextStyle,
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 30.0),
                            child: SfSlider.vertical(
                              activeColor: Color(0xFF5BCFDA),
                              inactiveColor: Color(0xFFDDDDDD),
                              value: height,
                              max: 220.0,
                              min: 120.0,
                              interval: 10,
                              showLabels: true,
                              showTicks: true,
                              minorTicksPerInterval: 4,
                              onChanged: (newValue) {
                                setState(() {
                                  height = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomContainer(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: kMediumTextStyle,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                '$weight',
                                style: kLargeTextStyle,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomButton(
                                      icon: FontAwesomeIcons.plus,
                                      onTap: () {
                                        setState(() {
                                          weight < 130
                                              ? weight++
                                              : weight = 130;
                                        });
                                      },
                                    ),
                                    CustomButton(
                                      icon: FontAwesomeIcons.minus,
                                      onTap: () {
                                        setState(() {
                                          weight > 1 ? weight-- : weight = 1;
                                        });
                                      },
                                    )
                                  ])
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: CustomContainer(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: kMediumTextStyle,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                '$age',
                                style: kLargeTextStyle,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomButton(
                                    icon: FontAwesomeIcons.plus,
                                    onTap: () {
                                      setState(() {
                                        age < 100 ? age++ : age = 100;
                                      });
                                    },
                                  ),
                                  CustomButton(
                                    icon: FontAwesomeIcons.minus,
                                    onTap: () {
                                      setState(() {
                                        age > 1 ? age-- : age = 1;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: CustomContainerButton(
                color: kActiveColor,
                onSelected: () {
                  Calculator calculator =
                      Calculator(weight: weight, height: height);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                message: calculator.getMessage(),
                                bmi: calculator.getBMI(),
                              )));
                },
                text: Text(
                  'Let\'s Begin',
                  style: TextStyle(color: kActiveTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
