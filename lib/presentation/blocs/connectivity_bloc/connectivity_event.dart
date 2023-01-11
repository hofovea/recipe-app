part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.listenToConnectionState() = _ListenToConnectionState;
  const factory ConnectivityEvent.gotConnectionStateResult(bool isConnected) = _GotConnectionStateResult;
}
