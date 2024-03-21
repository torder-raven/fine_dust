import 'package:bloc/bloc.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_is_bookmarked_location_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/location_code.dart';
import '../../../../domain/entity/location_total_info.dart';
import '../../../../domain/usecase/dustInfo/get_local_air_info_usecase.dart';

part 'air_quality_detail_bloc.freezed.dart';

part 'air_quality_detail_event.dart';

part 'air_quality_detail_state.dart';

class AirQualityDetailBloc
    extends Bloc<AirQualityDetailEvent, AirQualityDetailState> {
  AirQualityDetailBloc({
    required this.getLocalAirInfoUsecase,
    required this.bookmarkLocationUsecase,
    required this.deleteBookmarkUsecase,
    required this.getIsBookmarkedLocationUsecase,
  }) : super(const AirQualityDetailInitial()) {
    on<AirQualityDetailStarted>(
      (event, emit) async {
        try {
          LocationTotalInfo locationTotalInfo = await getLocalAirInfoUsecase
              .call(locationCode: event.locationCode.code);

          if(locationTotalInfo.fineDustList.isEmpty || locationTotalInfo.ultraFineDustList.isEmpty || locationTotalInfo.ozoneList.isEmpty) {
            throw Exception("List is Empty!");
          }

          bool isBookmarkedLocation = await getIsBookmarkedLocationUsecase(
              locationCode: event.locationCode);
          emit(AirQualityDetailSuccess(
            locationTotalInfo: locationTotalInfo,
            isBookmarkedLocation: isBookmarkedLocation,
          ));
        } catch (e) {
          emit(const AirQualityDetailFailure());
        }
      },
    );

    on<AirQualityDetailBookmarked>(
      (event, emit) async {
        try {
          if (state is! AirQualityDetailSuccess) return;
          AirQualityDetailSuccess airQualityDetailSuccess =
              (state as AirQualityDetailSuccess);

          if (airQualityDetailSuccess.isBookmarkedLocation) {
            await deleteBookmarkUsecase(
              locationCode: event.locationCode,
            );
          } else {
            await bookmarkLocationUsecase(
              locationCode: event.locationCode,
            );
          }

          emit(
            airQualityDetailSuccess.copyWith(
              locationTotalInfo: airQualityDetailSuccess.locationTotalInfo,
              isBookmarkedLocation: await getIsBookmarkedLocationUsecase(
                locationCode: event.locationCode,
              ),
            ),
          );
        } catch (e) {
          emit(const AirQualityDetailFailure());
        }
      },
    );
  }

  final GetLocalAirInfoUsecase getLocalAirInfoUsecase;
  final BookmarkLocationUsecase bookmarkLocationUsecase;
  final DeleteBookmarkUsecase deleteBookmarkUsecase;
  final GetIsBookmarkedLocationUsecase getIsBookmarkedLocationUsecase;
}
