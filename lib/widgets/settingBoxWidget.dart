import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 378,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildRow(
              Icons.translate,
              'First Row',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
                height: 1,
              ),
            ),
            buildRow(
              Icons.mode_night_outlined,
              'Second Row',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
                height: 1,
              ),
            ),
            buildSwitchRow(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
                height: 1,
              ),
            ),
            buildRow(
              Icons.sd_card_alert_outlined,
              'Third Row',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
                height: 1,
              ),
            ),
            buildRow(
              Icons.comment,
              'Fourth Row',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
                height: 1,
              ),
            ),
            buildRow(
              Icons.screen_share_outlined,
              'Fifth Row',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(
    IconData startIcon,
    String text,
  ) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            color: Colors.grey.withOpacity(.2),
          ),
          child: Icon(startIcon),
        ),
        const SizedBox(width: 8.0),
        Text(text),
        const Spacer(),
        const Icon(Icons.keyboard_arrow_right),
      ],
    );
  }

  Widget buildRow2(
    IconData startIcon,
    String text,
    String text2,
  ) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            color: Colors.grey.withOpacity(.2),
          ),
          child: Icon(startIcon),
        ),
        const SizedBox(width: 8.0),
        Text(text),
        const Spacer(),
        Text(text2)
      ],
    );
  }

  Widget buildSwitchRow() {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(.2),
          ),
          child: const Icon(
            Icons.notifications,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Text("Bildishnomalar"),
        const Spacer(),
        Switch(
          value: switchValue,
          onChanged: (value) {
            setState(() {
              switchValue = value;
            });
          },
          activeTrackColor: const Color.fromARGB(255, 120, 224, 0),
          activeColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ],
    );
  }
}
