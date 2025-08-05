import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/add_measurement_cubit/add_measurement_cubit.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/input.dart';
import 'package:nutrikid_app/shared/variant.dart';

class AddMeasurementDialog extends StatefulWidget {
  const AddMeasurementDialog({super.key});

  @override
  State<AddMeasurementDialog> createState() => _AddMeasurementDialogState();
}

class _AddMeasurementDialogState extends State<AddMeasurementDialog> {
  final addMeasurementCubit = AddMeasurementCubit();
  final homeBloc = Modular.get<HomeBloc>();

  late double studentHeight =
      homeBloc.state.student.measurement?.studentHeight ?? 0.0;
  late double studentWeight =
      homeBloc.state.student.measurement?.studentWeight ?? 0.0;

  late final heightController = TextEditingController(
    text: studentHeight.toString(),
  );
  late final weightController = TextEditingController(
    text: studentWeight.toString(),
  );

  @override
  void initState() {
    heightController.addListener(() {
      addMeasurementCubit.changeState(
        addMeasurementCubit.state.copyWith(
          height: double.parse(heightController.text),
        ),
      );
    });

    weightController.addListener(() {
      addMeasurementCubit.changeState(
        addMeasurementCubit.state.copyWith(
          weight: double.parse(weightController.text),
        ),
      );
    });

    addMeasurementCubit.changeState(
      addMeasurementCubit.state.copyWith(
        height: studentHeight,
        weight: studentWeight,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();

    super.dispose();
  }

  handleSubmit() async {
    await addMeasurementCubit.store(
      callback: () {
        Navigator.pop(context);
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddMeasurementCubit, AddMeasurementState>(
      bloc: addMeasurementCubit,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
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
                      controller: heightController,
                    ),
                    Input(
                      placeholder: "Berat Badan",
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('kg')],
                      ),
                      controller: weightController,
                    ),
                    if (state.errorMessage.isNotEmpty)
                      Center(
                        child: Text(
                          state.errorMessage,
                          style: TextStyle(color: VariantColor.destructive),
                        ),
                      ),
                  ],
                ),
                Button(
                  onPressed: state.isLoading ? null : handleSubmit,
                  full: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Icon(LucideIcons.save),
                      Text(
                        'Simpan Pengukuran',
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge!.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
