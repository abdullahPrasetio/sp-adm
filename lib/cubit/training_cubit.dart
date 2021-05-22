import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'training_state.dart';

class TrainingCubit extends Cubit<TrainingState> {
  TrainingCubit() : super(TrainingInitial());

  Future<void> getTrainings() async {
    ApiReturnValue<List<Training>> result =
        await TrainingService.getTrainings();

    if (result.value != null) {
      emit(TrainingLoaded(result.value));
    } else {
      emit(TrainingLoadingFailed(result.message));
    }
  }
}
