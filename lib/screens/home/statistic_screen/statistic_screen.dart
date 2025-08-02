import 'package:flutter/material.dart';
import 'package:nutrikid_app/components/panel.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Panel(child: Center(child: Text('Halaman statistik'))),
      ),
    );
  }
}
