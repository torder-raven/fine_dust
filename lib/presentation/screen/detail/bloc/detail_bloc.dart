import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/location_code.dart';
import '../../../../domain/entity/location_total_info.dart';
import '../../../../domain/usecase/dustInfo/get_local_air_info_usecase.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc({
    required this.getLocalAirInfoUsecase,
  }) : super(const DetailState(status: DetailStatus.initial)) {
    on<_Started>(
      (event, emit) async {
        emit(
          DetailState(
            status: DetailStatus.success,
            locationTotalInfo: await getLocalAirInfoUsecase.call(
              locationCode: event.locationCode.code,
            ),
          ),
        );
      },
    );
  }

  final GetLocalAirInfoUsecase getLocalAirInfoUsecase;
}
