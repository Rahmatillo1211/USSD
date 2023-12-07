import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/mobiuz_constants.dart';
import 'package:flutter_application_1/widgets/xizmatlarButtonWidget.dart';

class MobiXizmatlarScreen extends StatelessWidget {
  const MobiXizmatlarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Xizmatlar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 179, 0, 12),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Column(
      children: [_buildbutton(mobiXizmatlarButtonList)],
    );
  }

  _buildbutton(List<Map<String, dynamic>> data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) {
        final item = data[index];
        return XizmatlarButtonWidget(
          text: item["name"],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => item["page"],
              ),
            );
          },
        );
      }),
    );
  }
}
