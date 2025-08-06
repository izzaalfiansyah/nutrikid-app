import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/measurement_suggestion_bloc/measurement_suggestion_bloc.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class MeasurementSuggestionsWidget extends StatefulWidget {
  const MeasurementSuggestionsWidget({super.key, required this.measurement});

  final Measurement measurement;

  @override
  State<MeasurementSuggestionsWidget> createState() =>
      _MeasurementSuggestionsWidgetState();
}

class _MeasurementSuggestionsWidgetState
    extends State<MeasurementSuggestionsWidget> {
  final suggestionBloc = Modular.get<MeasurementSuggestionBloc>();

  @override
  void initState() {
    suggestionBloc.add(
      MeasurementSuggestionEvent.load(measurementId: widget.measurement.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: SizeConfig.screenHeight! * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: VariantColor.background,
      ),
      child: BlocBuilder<MeasurementSuggestionBloc, MeasurementSuggestionState>(
        bloc: suggestionBloc,
        builder: (context, state) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 30,
              children: [
                Text(
                  "Saran Terkait Pengukuran",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (state.isLoading)
                  Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: VariantColor.primary,
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children:
                                state.suggestions.map((suggestion) {
                                  return Panel(
                                    child: Column(
                                      spacing: 10,
                                      children: [Text(suggestion.advice)],
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
