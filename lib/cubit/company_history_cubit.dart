import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'company_history_state.dart';

class CompanyHistoryCubit extends Cubit<CompanyHistoryState> {
  CompanyHistoryCubit() : super(CompanyHistoryInitial());
  Future<void> getCompanyHistory() async {
    ApiReturnValue result = await CompanyServices.getHistory();
    if (result.value != null) {
      emit(CompanyHistoryLoaded(result.value));
    } else {
      emit(CompanyHistoryLoadingFailed(result.message));
    }
  }
}
