import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/beeline_constants.dart';
import 'package:flutter_application_1/widgets/operatorBoglanishWidget.dart';

class MobiOperatorBilanBoglanishScreen extends StatelessWidget {
  const MobiOperatorBilanBoglanishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text(
            "Operator bilan bog’lanish",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: _buildBody(context),
    );
  }

  _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Mobiuz Qo’llab-quvvatlash markazi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              height: 1,
            ),
          ),
          _buildCategoriesGrid(beeoperatorBilanBoglanishList),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid(List<Map<String, String>> data) {
    return ListView.separated(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: Divider(
          height: 1,
        ),
      ),
      itemBuilder: (context, index) {
        final item = data[index];
        return OperatorBilanBoglanishWidget(
          kodText: item["text1"] ?? "",
          yozuvText: item["text2"] ?? "",
          iconPath: item["image"] ?? "",
          textColor: const Color.fromARGB(255, 179, 0, 12),
        );
      },
    );
  }
}
