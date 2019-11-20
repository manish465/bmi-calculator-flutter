import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Bottom_container_Height = 80.0;
const Upper_Cardcolor = Color(0xFF1D1E33);
const BottomContainercolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Upper_Cardcolor,
                    Card_child: Info_Wiget(
                      Gender_icon: FontAwesomeIcons.mars,
                      Text_gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Upper_Cardcolor,
                    Card_child: Info_Wiget(
                      Gender_icon: FontAwesomeIcons.venus,
                      Text_gender: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Upper_Cardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Upper_Cardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Upper_Cardcolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: BottomContainercolor,
            margin: EdgeInsets.only(top: 10),
            height: Bottom_container_Height,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Info_Wiget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Info_Wiget({@required this.Gender_icon, this.Text_gender});
  // ignore: non_constant_identifier_names
  final IconData Gender_icon;
  // ignore: non_constant_identifier_names
  final String Text_gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Gender_icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          Text_gender,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableCard({@required this.color, this.Card_child});
  final Color color;
  // ignore: non_constant_identifier_names
  final Widget Card_child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card_child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
