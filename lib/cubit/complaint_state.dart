part of 'complaint_cubit.dart';

abstract class ComplaintState extends Equatable {
  const ComplaintState();

  @override
  List<Object> get props => [];
}

class ComplaintInitial extends ComplaintState {}

class ComplaintLoaded extends ComplaintState {
  final List<Complaint> complaints;
  ComplaintLoaded(this.complaints);

  @override
  List<Object> get props => [complaints];
}

class ComplaintLoadingFailed extends ComplaintState {
  final String message;

  ComplaintLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
