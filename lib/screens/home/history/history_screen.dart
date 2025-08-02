import 'package:flutter/material.dart';
import 'package:nutrikid_app/components/panel.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          spacing: 16,
          children: List.generate(
            14,
            (index) =>
                Panel(child: SizedBox(height: 150, width: double.infinity)),
          ),
        ),
      ),
    );
  }
}
