part of 'company_history_cubit.dart';

abstract class CompanyHistoryState extends Equatable {
  const CompanyHistoryState();

  @override
  List<Object> get props => [];
}

class CompanyHistoryInitial extends CompanyHistoryState {}

class CompanyHistoryLoaded extends CompanyHistoryState {
  final CompanyHistory companyHistorys;
  CompanyHistoryLoaded(this.companyHistorys);

  @override
  List<Object> get props => [companyHistorys];
}

class CompanyHistoryLoadingFailed extends CompanyHistoryState {
  final String message;

  CompanyHistoryLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
