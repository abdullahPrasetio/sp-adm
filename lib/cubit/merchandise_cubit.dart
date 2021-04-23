import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'merchandise_state.dart';

class MerchandiseCubit extends Cubit<MerchandiseState> {
  MerchandiseCubit() : super(MerchandiseInitial());
  Future<void> getMerchandise() async {
    ApiReturnValue<List<Merchandise>> result =
        await MerchandiseService.getMerchandise();

    if (result.value != null) {
      emit(MerchandiseLoaded(result.value));
    } else {
      emit(MerchandiseLoadingFailed(result.message));
    }
  }
}
