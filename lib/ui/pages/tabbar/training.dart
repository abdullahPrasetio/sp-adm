part of '../pages.dart';

class Training extends StatefulWidget {
  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<TrainingCubit, TrainingState>(
          builder: (_, state) => (state is TrainingLoaded)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.trainings
                      .map((e) => Container(
                            child: Column(
                              children: [
                                Text(e.name),
                                Text(e.date),
                                Text(e.place),
                                SizedBox(height: 20),
                              ],
                            ),
                          ))
                      .toList(),
                )
              : SizedBox(
                  height: 30,
                ),
        )
      ],
    );
  }
}
