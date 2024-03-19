import 'package:bloc/bloc.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_is_bookmarked_location_usecase.dart';
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
    required this.bookmarkLocationUsecase,
    required this.deleteBookmarkUsecase,
    required this.getIsBookmarkedLocationUsecase,
  }) : super(const DetailState(status: DetailStatus.initial)) {
    on<_Started>(
      (event, emit) async {
        emit(
          DetailState(
            status: DetailStatus.success,
            locationTotalInfo: state.locationTotalInfo ??
                await getLocalAirInfoUsecase.call(
                  locationCode: event.locationCode.code,
                ),
            isBookmarkedLocation: await getIsBookmarkedLocationUsecase.call(
              locationCode: event.locationCode,
            ),
          ),
        );
      },
    );

    on<_OnPressBookmarked>(
      (event, emit) async {
        if (state.isBookmarkedLocation == true) {
          await deleteBookmarkUsecase.call(locationCode: event.locationCode);
        } else {
          await bookmarkLocationUsecase.call(locationCode: event.locationCode);
        }

        emit(
          state.copyWith(
            status: DetailStatus.success,
            locationTotalInfo: state.locationTotalInfo ??
                await getLocalAirInfoUsecase.call(
                  locationCode: event.locationCode.code,
                ),
            isBookmarkedLocation: await getIsBookmarkedLocationUsecase.call(
              locationCode: event.locationCode,
            ),
          ),
        );
      },
    );
  }

  final GetLocalAirInfoUsecase getLocalAirInfoUsecase;
  final BookmarkLocationUsecase bookmarkLocationUsecase;
  final DeleteBookmarkUsecase deleteBookmarkUsecase;
  final GetIsBookmarkedLocationUsecase getIsBookmarkedLocationUsecase;
}
