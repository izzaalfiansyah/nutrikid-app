import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/school/school.dart';

class SchoolDropdown extends StatefulWidget {
  const SchoolDropdown({super.key, this.value, this.onChanged});

  final School? value;
  final void Function(School value)? onChanged;

  @override
  State<SchoolDropdown> createState() => _SchoolDropdownState();
}

class _SchoolDropdownState extends State<SchoolDropdown> {
  late School? value = widget.value;

  getSchools() async {
    Modular.get<AppBloc>().add(AppEvent.loadSchool());
  }

  handleChange(School school) {
    setState(() {
      value = school;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(school);
    }
  }

  @override
  void initState() {
    getSchools();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: Modular.get<AppBloc>(),
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton<School>(
            value: value,
            padding: EdgeInsets.symmetric(horizontal: 10),
            hint: Text("Pilih Sekolah"),
            dropdownColor: Colors.white,
            menuMaxHeight: 250,
            items:
                state.schools.map((school) {
                  return DropdownMenuItem(
                    value: school,
                    onTap: () => handleChange(school),
                    child: Text(school.name),
                  );
                }).toList(),
            onChanged: (val) {},
          ),
        );
      },
    );
  }
}
