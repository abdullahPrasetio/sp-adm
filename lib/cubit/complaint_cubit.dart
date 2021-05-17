import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'complaint_state.dart';

class ComplaintCubit extends Cubit<ComplaintState> {
  ComplaintCubit() : super(ComplaintInitial());
  Future<void> getComplaint() async {
    ApiReturnValue<List<Complaint>> result =
        await ComplaintService.getComplaint();

    if (result.value != null) {
      emit(ComplaintLoaded(result.value));
    } else {
      emit(ComplaintLoadingFailed(result.message));
    }
  }
}
