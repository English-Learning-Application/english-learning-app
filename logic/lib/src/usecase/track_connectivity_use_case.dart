import '../../logic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'track_connectivity_use_case.freezed.dart';

@Injectable()
class TrackConnectivityUseCase
    extends BaseStreamUseCase<TrackConnectivityInput, TrackConnectivityOutput> {
  final AppRepository _appRepository;

  TrackConnectivityUseCase(this._appRepository);

  @override
  Stream<TrackConnectivityOutput> buildUseCase(TrackConnectivityInput input) {
    return _appRepository.onConnectivityChanged.map(
      (isConnected) {
        return TrackConnectivityOutput(isConnected: isConnected);
      },
    );
  }
}

@freezed
class TrackConnectivityInput extends BaseInput with _$TrackConnectivityInput {
  const factory TrackConnectivityInput() = _TrackConnectivityInput;
}

@freezed
class TrackConnectivityOutput extends BaseOutput
    with _$TrackConnectivityOutput {
  const factory TrackConnectivityOutput({
    required bool isConnected,
  }) = _TrackConnectivityOutput;
}
