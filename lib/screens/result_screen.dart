import 'package:bmi/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({this.bmi, this.message});

  final bmi;
  final message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  icon: FontAwesomeIcons.angleLeft,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'BMI Results',
                  style: TextStyle(
                      color: Color(0xFF697184),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300),
                ),
                CustomButton(icon: FontAwesomeIcons.user)
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 260.0,
                  height: 260.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFAFC8D8),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            2.0,
                            2.0,
                          ), // shadow direction: bottom right
                        ),
                        BoxShadow(
                          color: Color(0xFFF4F8F9),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            -2.0,
                            -2.0,
                          ), // shadow direction: bottom right
                        )
                      ],
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(200.0)),
                ),
                Container(
                  width: 230.0,
                  height: 230.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF5DCFD9),
                    borderRadius: BorderRadius.circular(200.0),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      bmi,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 60.0,
                        color: Color(0xFF6C7284),
                      ),
                    ),
                  ),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(200.0),
                  ),
                )
              ],
            ),
            Text(
              message,
              style: TextStyle(
                  color: Color(0xFF6C7284),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300),
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
                child: Text(
                  'Details',
                  style: TextStyle(
                      letterSpacing: 0.5,
                      color: Color(0xFF6C7284),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                backgroundColor: MaterialStateProperty.all(Color(0xFFEEEEEE)),
                elevation: MaterialStateProperty.all(6.0),
              ),
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
