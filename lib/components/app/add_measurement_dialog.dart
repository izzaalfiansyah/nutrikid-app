import 'package:flutter/material.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/input.dart';

class AddMeasurementDialog extends StatefulWidget {
  const AddMeasurementDialog({super.key});

  @override
  State<AddMeasurementDialog> createState() => _AddMeasurementDialogState();
}

class _AddMeasurementDialogState extends State<AddMeasurementDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 30,
          children: [
            Text(
              'Tambah Pengukuran',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Column(
              spacing: 14,
              children: [
                Input(
                  placeholder: "Tinggi Badan",
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('cm')],
                  ),
                ),
                Input(
                  placeholder: "Berat Badan",
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('kg')],
                  ),
                ),
              ],
            ),
            Button(
              onPressed: () {
                Navigator.pop(context);
              },
              full: true,
              child: Text('Simpan Pengukuran'),
            ),
          ],
        ),
      ),
    );
  }
}
