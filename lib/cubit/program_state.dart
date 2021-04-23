part of 'program_cubit.dart';

abstract class ProgramState extends Equatable {
  const ProgramState();

  @override
  List<Object> get props => [];
}

class ProgramInitial extends ProgramState {}

class ProgramLoaded extends ProgramState {
  final List<Program> program;
  ProgramLoaded(this.program);
  @override
  List<Object> get props => [program];
}

class ProgramLoadingFailed extends ProgramState {
  final String message;

  ProgramLoadingFailed(this.message);
  @override
  List<Object> get props => [message];
}
