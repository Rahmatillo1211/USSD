import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/beeline_constants.dart';
import 'package:flutter_application_1/widgets/ussdButtunWidget.dart';

class BeeUssdCodes extends StatelessWidget {
  const BeeUssdCodes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        appBar: AppBar(
          title: const Center(
            child: Text(
              "USSD kodlar",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          elevation: 0,
          backgroundColor: const  Color(0xFFFFBE00),
          leading: GestureDetector(
             onTap: () {
              Navigator.pop(context);
            },
            child: const SizedBox(
              height: 24,
              width: 24,
              child: Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 6,
          ),
          _buildUssdsGrid(beeUssdButtonList),
        ],
      ),
    );
  }

  _buildUssdsGrid(List<Map<String, dynamic>> data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = data[index];
        return UssdCodeButtonWidget(
          codeTitle: item["codeTitle"] ?? "",
          ussdCode: item["ussdCode"] ?? "", 
          textColor: item["textColor"] ?? "",
        );
      },
    );
  }
}