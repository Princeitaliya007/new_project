import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../modals/chat_modal.dart';
import 'package:intl/intl.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  TextStyle mytextstyle = const TextStyle(
    fontSize: 18,
    color: Color(0xff54759E),
  );

  DateTime pickeddate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: (isIOS) ? 100 : 20, left: 15, right: 15, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date",
                style: mytextstyle,
              ),
              Text(
                "$pickeddate",
                style: mytextstyle,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff54759E),
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () async {
             final DateTime? date = await showDatePicker(context: context,
                  initialDate: pickeddate,
                  firstDate: DateTime(2010),
                  lastDate: DateTime(2025),
              );

             if(date != null){
               setState(() {

               });
             }
            },
            child: const Text(
              "Change Date",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Time",
                style: mytextstyle,
              ),
              Text(
                "9:41:55 AM",
                style: mytextstyle,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff54759E),
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {},
            child: const Text(
              "Change Time",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
