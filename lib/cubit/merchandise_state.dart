part of 'merchandise_cubit.dart';

abstract class MerchandiseState extends Equatable {
  const MerchandiseState();

  @override
  List<Object> get props => [];
}

class MerchandiseInitial extends MerchandiseState {}

class MerchandiseLoaded extends MerchandiseState {
  final List<Merchandise> merchandises;
  MerchandiseLoaded(this.merchandises);

  @override
  List<Object> get props => [merchandises];
}

class MerchandiseLoadingFailed extends MerchandiseState {
  final String message;

  MerchandiseLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
