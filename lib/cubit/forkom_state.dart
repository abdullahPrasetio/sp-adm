part of 'forkom_cubit.dart';

abstract class ForkomState extends Equatable {
  const ForkomState();

  @override
  List<Object> get props => [];
}

class ForkomInitial extends ForkomState {}

class ForkomLoaded extends ForkomState {
  final List<Forkom> forkoms;
  ForkomLoaded(this.forkoms);

  @override
  List<Object> get props => [forkoms];
}

class ForkomLoadingFailed extends ForkomState {
  final String message;

  ForkomLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
