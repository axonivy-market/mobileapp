part of 'connectivity_bloc.dart';

@freezed
abstract class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = InitialState;

  const factory ConnectivityState.connectedState() = ConnectedState;

  const factory ConnectivityState.notConnectedState() = NotConnectedState;
}
