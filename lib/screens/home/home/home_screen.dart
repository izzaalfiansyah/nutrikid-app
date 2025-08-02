import 'package:flutter/material.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // color: VariantColor.primary,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    boxShadow: panelShadow,
                  ),
                  height: SizeConfig.blockSizeVertical! * 25,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: SizedBox(height: 140, width: double.infinity),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(14),
              child: Row(
                spacing: 14,
                children: [
                  Expanded(
                    child: Panel(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SizedBox(height: 100),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Panel(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SizedBox(height: 100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Panel(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SizedBox(height: 300, width: double.infinity),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
