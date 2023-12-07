import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/uzmobile_constants.dart';
import 'package:flutter_application_1/widgets/internetPaketlarWidget.dart';

class UzmobileInternetPaketlarScreen extends StatefulWidget {
  const UzmobileInternetPaketlarScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InternetPaketlarScreenState createState() => _InternetPaketlarScreenState();
}

class _InternetPaketlarScreenState extends State<UzmobileInternetPaketlarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text(
            "Internet paketlar",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF01B4FF),
        leading: GestureDetector(
          // onTap: () {
          //   Navigator.pop(context);
          // },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 11,
            ),
            _buildInternetPaketGrid(uzmobileInternetPaketlarList),
          ],
        ),
      ),
    );
  }

  Widget _buildInternetPaketGrid(List<Map<String, dynamic>> data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = data[index];
        return InternetPaketlarCardWidget(
          onTap2: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => item["page2"],
              ),
            );
          },
          textgb: item["textgb"] ?? "",
          textsum: item["textsum"] ?? "",
          textkun: item["textkun"] ?? "",
          gbColor: const Color(0xFF01B4FF),
        );
      },
    );
  }
}
