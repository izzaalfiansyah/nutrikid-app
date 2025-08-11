import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/measurement_suggestion_bloc/measurement_suggestion_bloc.dart';
import 'package:nutrikid_app/components/app/measurement_detail/measurement_suggestion_advice_bottom_sheet.dart';
import 'package:nutrikid_app/components/input.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/utils/letter_name.dart';

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

  final adviceController = TextEditingController();
  bool isCanSubmit = false;

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
      height: SizeConfig.screenHeight! * .8,
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
                else if (state.suggestions.isEmpty)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 14,
                      children: [
                        Icon(
                          LucideIcons.inbox,
                          size: 80,
                          color: VariantColor.border,
                        ),
                        Text(
                          'Tidak ada saran',
                          style: TextStyle(color: VariantColor.muted),
                        ),
                      ],
                    ),
                  )
                else
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 10,
                        children:
                            state.suggestions.map((suggestion) {
                              return Panel(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 10,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      spacing: 8,
                                      children: [
                                        CircleAvatar(
                                          radius: 16,
                                          backgroundColor: VariantColor.muted
                                              .withAlpha(25),
                                          child: Text(
                                            letterName(
                                              suggestion.creator?.name ?? "",
                                            ),
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.titleMedium!,
                                          ),
                                        ),
                                        Text(suggestion.creator?.name ?? ""),
                                      ],
                                    ),
                                    SizedBox(height: .5),
                                    Divider(
                                      height: 1,
                                      color: VariantColor.border,
                                    ),
                                    SizedBox(height: .5),
                                    Text(
                                      suggestion.advice,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: VariantColor.muted),
                                    ),
                                    SizedBox(height: 3),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          formatDate(suggestion.createdAt!),
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                      ),
                    ),
                  ),
                BlocBuilder<AppBloc, AppState>(
                  bloc: Modular.get<AppBloc>(),
                  builder: (context, state) {
                    if (state.profile != null) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: panelShadow,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.all(14),
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Input(
                                placeholder: "Berikan saran...",
                                controller: adviceController,
                                onChanged: (value) {
                                  setState(() {
                                    isCanSubmit = value.isNotEmpty;
                                  });
                                },
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return MeasurementSuggestionAdviceBottomSheet(
                                      suggestions:
                                          widget.measurement.suggestionAdvices,
                                      onSelected: (advice) {
                                        setState(() {
                                          adviceController.text = advice;
                                        });

                                        Navigator.pop(context);
                                      },
                                    );
                                  },
                                );
                              },
                              icon: Icon(LucideIcons.textQuote),
                            ),
                            BlocBuilder<
                              MeasurementSuggestionBloc,
                              MeasurementSuggestionState
                            >(
                              bloc: suggestionBloc,
                              builder: (context, state) {
                                return IconButton(
                                  onPressed:
                                      adviceController.text.isEmpty ||
                                              state.isSubmitting
                                          ? null
                                          : () {
                                            suggestionBloc.add(
                                              MeasurementSuggestionEvent.store(
                                                measurementId:
                                                    widget.measurement.id,
                                                advice: adviceController.text,
                                                callback: () {
                                                  setState(() {
                                                    isCanSubmit = false;
                                                    adviceController.text = "";
                                                  });
                                                },
                                              ),
                                            );
                                          },
                                  style: IconButton.styleFrom(
                                    backgroundColor: VariantColor.primary,
                                    foregroundColor: Colors.white,
                                  ),
                                  icon: Icon(Icons.send),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    }

                    return SizedBox();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
