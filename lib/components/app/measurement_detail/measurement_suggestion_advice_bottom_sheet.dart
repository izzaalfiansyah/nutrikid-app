import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MeasurementSuggestionAdviceBottomSheet extends StatefulWidget {
  const MeasurementSuggestionAdviceBottomSheet({
    super.key,
    required this.suggestions,
    this.onSelected,
  });

  final List<String> suggestions;
  final void Function(String advice)? onSelected;

  @override
  State<MeasurementSuggestionAdviceBottomSheet> createState() =>
      _MeasurementSuggestionAdviceBottomSheetState();
}

class _MeasurementSuggestionAdviceBottomSheetState
    extends State<MeasurementSuggestionAdviceBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            Text(
              "Pilihan Saran",
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 6,
              children:
                  widget.suggestions.map((advice) {
                    return ListTile(
                      title: Text(advice),
                      onTap: () {
                        if (widget.onSelected != null) {
                          widget.onSelected!(advice);
                        }
                      },
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
