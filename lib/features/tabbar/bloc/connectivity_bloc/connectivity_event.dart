part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.connectedEvent() = ConnectedEvent;

  const factory ConnectivityEvent.notConnectedEvent() = NotConnectedEvent;

  const factory ConnectivityEvent.fetchEngineInfo() = FetchEngineInfoEvent;
}
