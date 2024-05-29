import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_bloc.freezed.dart';

part 'connectivity_event.dart';

part 'connectivity_state.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  StreamSubscription? _streamSubscription;
  var connectivityResult = ConnectivityResult.wifi;

  ConnectivityBloc() : super(const ConnectivityState.initial()) {
    on<ConnectivityEvent>((event, emit) {
      if (event is ConnectedEvent) {
        emit(const ConnectivityState.connectedState());
      } else if (event is NotConnectedEvent) {
        emit(const ConnectivityState.notConnectedState());
      }
    });
    _streamSubscription = Connectivity()
        .onConnectivityChanged
        .skip(1)
        .listen((List<ConnectivityResult> results) async {
      var result = results.isNotEmpty ? results[0] : ConnectivityResult.none;
      if ((result == ConnectivityResult.wifi ||
              result == ConnectivityResult.mobile) &&
          result != connectivityResult) {
        connectivityResult = result;
        if (kDebugMode) {
          // Debug mode should wait for network ready to support test on simulator
          await Future.delayed(const Duration(seconds: 5));
        }
        add(const ConnectivityEvent.connectedEvent());
      } else if (result == ConnectivityResult.none &&
          (result != connectivityResult)) {
        connectivityResult = result;
        add(const ConnectivityEvent.notConnectedEvent());
      }
    });
  }

  @override
  Future<void> close() {
    _streamSubscription!.cancel();
    return super.close();
  }
}
