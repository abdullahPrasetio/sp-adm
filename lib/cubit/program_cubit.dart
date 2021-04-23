import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'program_state.dart';

class ProgramCubit extends Cubit<ProgramState> {
  ProgramCubit() : super(ProgramInitial());
  Future<void> getPrograms() async {
    ApiReturnValue<List<Program>> result = await ProgramService.getPrograms();

    if (result.value != null) {
      emit(ProgramLoaded(result.value));
    } else {
      emit(ProgramLoadingFailed(result.message));
    }
  }
}
