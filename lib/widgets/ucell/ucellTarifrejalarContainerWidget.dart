import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ucell/tarif_rejalar2.dart';
import 'package:flutter_application_1/utils/ucell_constants.dart';
import 'package:flutter_application_1/widgets/tarifrejalarCardWidget.dart';

class UcelltarifRejalarWidget extends StatelessWidget {
  const UcelltarifRejalarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 16,
      ),
      child: Container(
        height: 311,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UcellTarifRejalarScreen2(),
                    ),
                  );
                },
                child: const Text(
                  "Doimiy 25",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xFF652D86),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(
                height: 1,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            _buildDoimiyGrid(ucellDoimiyList),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Divider(
                height: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Abonenet to'lovi",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF858585),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "22 000 so'm/oy",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildDoimiyGrid(List<Map<String, String>> data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = data[index];
        return TarifRejalarWidget(
          barakali_icon: item["image"] ?? "",
          barakali_text: item["name"] ?? "",
          barakali_text2: item["name2"] ?? "",
        );
      },
    );
  }
}
