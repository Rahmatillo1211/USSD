import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/uzmobile/uzmobileTarifRejalarConatinerWidget.dart';

class UzmobileTarifRejalarScreen extends StatefulWidget {
  const UzmobileTarifRejalarScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TarifRejalarScreenState createState() => _TarifRejalarScreenState();
}

class _TarifRejalarScreenState extends State<UzmobileTarifRejalarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: const Color(0xFF01B4FF),
          elevation: 0,
          title: const Center(
            child: Text(
              "Tarif rejalar",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Container(
              color: const Color(0xFFF6F6F6),
              child: const TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Color(0xFF01B4FF),
                    width: 2,
                  ),
                ),
                labelColor: Color(0xFF01B4FF),
                tabs: [
                  Tab(
                    child: Text(
                      'Oylik paketlar',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Haftalik paketlar',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Kunlik paketlar',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return TabBarView(
      children: [
        const SingleChildScrollView(
          child: Column(
            children: [
              UzmobileTarifRejalarWidget(),
              UzmobileTarifRejalarWidget(),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(),
          child: const Center(child: Text("data")),
        ),
        Container(
          decoration: const BoxDecoration(),
          child: const Center(child: Text("data")),
        ),
      ],
    );
  }
}
