import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/team_bloc/team_bloc.dart';
import 'package:nutrikid_app/entities/team/team.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/utils/letter_name.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final teamBloc = Modular.get<TeamBloc>();

  @override
  void initState() {
    teamBloc.add(TeamEvent.load());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tentang Kami",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: VariantColor.primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 15,
              children: [
                Column(
                  children: [
                    Assets.favicon.image(width: 70),
                    Text(
                      Env.APP_NAME,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: VariantColor.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(Env.APP_DESCRIPTION, textAlign: TextAlign.center),
                Assets.polijeCopyright.image(height: 22),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Tim Kami",
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: BlocBuilder<TeamBloc, TeamState>(
                bloc: teamBloc,
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: VariantColor.primary,
                      ),
                    );
                  }

                  if (state.teams.isEmpty) {
                    return ListTile(title: Text("Belum ada data tim."));
                  }

                  return Column(
                    children: [
                      if (state.leader != null)
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(14),
                              child: Text("Ketua"),
                            ),
                            teamList(state.leader!),
                          ],
                        ),
                      Padding(
                        padding: EdgeInsets.all(14),
                        child: Text("Anggota"),
                      ),
                      Column(
                        children:
                            state.teams.map((team) {
                              return teamList(team);
                            }).toList(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget teamList(Team team) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(team.image),
        onBackgroundImageError:
            (e, _) => Text(
              letterName(team.image),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: VariantColor.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
      ),
      title: Text(team.name),
      subtitle: Text(
        "Jurusan Kesehatan",
        style: TextStyle(color: VariantColor.border.withAlpha(150)),
      ),
    );
  }
}
