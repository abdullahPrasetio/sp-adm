part of 'training_cubit.dart';

abstract class TrainingState extends Equatable {
  const TrainingState();

  @override
  List<Object> get props => [];
}

class TrainingInitial extends TrainingState {}

class TrainingLoaded extends TrainingState {
  final List<Training> trainings;

  TrainingLoaded(this.trainings);
  @override
  List<Object> get props => [trainings];
}

class TrainingLoadingFailed extends TrainingState {
  final String message;

  TrainingLoadingFailed(this.message);
  @override
  List<Object> get props => [message];
}
