import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'forkom_state.dart';

class ForkomCubit extends Cubit<ForkomState> {
  ForkomCubit() : super(ForkomInitial());
  Future<void> getForkom() async {
    ApiReturnValue<List<Forkom>> result = await ForkomService.getForkom();

    if (result.value != null) {
      emit(ForkomLoaded(result.value));
    } else {
      emit(ForkomLoadingFailed(result.message));
    }
  }
}
