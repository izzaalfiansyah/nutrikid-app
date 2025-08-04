import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/variant.dart';

class MeasurementDetail extends StatelessWidget {
  const MeasurementDetail({super.key, this.measurement});

  final Measurement? measurement;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Detail Pengukuran",
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(),
        Row(
          children: [
            Expanded(
              child: Text('Umur', style: TextStyle(color: VariantColor.muted)),
            ),
            Text(':'),
            Expanded(
              child: Text(
                (measurement?.studentAge ?? 0).toString(),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Tinggi (cm)',
                style: TextStyle(color: VariantColor.muted),
              ),
            ),
            Text(':'),
            Expanded(
              child: Text(
                (measurement?.studentHeight ?? 0).toStringAsFixed(1),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Berat (kg)',
                style: TextStyle(color: VariantColor.muted),
              ),
            ),
            Text(':'),
            Expanded(
              child: Text(
                (measurement?.studentWeight ?? 0).toStringAsFixed(1),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text('BMI', style: TextStyle(color: VariantColor.muted)),
            ),
            Text(':'),
            Expanded(
              child: Text(
                (measurement?.studentBmi ?? 0).toStringAsFixed(1),
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Z-Score',
                style: TextStyle(color: VariantColor.muted),
              ),
            ),
            Text(':'),
            Expanded(
              child: Text(
                (measurement?.zScore ?? 0).toStringAsFixed(1),
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Status',
                style: TextStyle(color: VariantColor.muted),
              ),
            ),
            Text(':'),
            Expanded(
              child: Text(
                measurement?.statusName ?? 'Belum diukur',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: measurement?.statusColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Tanggal',
                style: TextStyle(color: VariantColor.muted),
              ),
            ),
            Text(':'),
            Expanded(
              child: Text(
                measurement?.createdAt != null
                    ? formatDate(measurement!.createdAt!)
                    : "-",
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text('Jam', style: TextStyle(color: VariantColor.muted)),
            ),
            Text(':'),
            Expanded(
              child: Text(
                measurement?.createdAt != null
                    ? DateFormat('HH:mm').format(measurement!.createdAt!)
                    : "-",
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Button(
          onPressed:
              measurement == null
                  ? null
                  : () {
                    print('download');
                  },
          full: true,
          child:
              measurement == null
                  ? Text('Belum ada pengukuran')
                  : Row(
                    spacing: 14,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(LucideIcons.downloadCloud),
                      Text('Download'),
                    ],
                  ),
        ),
      ],
    );
  }
}
