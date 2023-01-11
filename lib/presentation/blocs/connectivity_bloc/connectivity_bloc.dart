import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/core/connectivity/network_connectivity.dart';

part 'connectivity_event.dart';

part 'connectivity_state.dart';

part 'connectivity_bloc.freezed.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final NetworkConnectivity _connectivity = NetworkConnectivity.instance;

  ConnectivityBloc() : super(const ConnectivityState.connectionState(true)) {
    on<ConnectivityEvent>((event, emit) {
      event.when(
        listenToConnectionState: () {
          _connectivity.initialise();
          _connectivity.connectionStream.listen(
            (bool connectionCheckResult) {
              add(ConnectivityEvent.gotConnectionStateResult(connectionCheckResult));
            },
          );
        },
        gotConnectionStateResult: (bool isConnected) {
          emit(ConnectivityState.connectionState(isConnected));
        },
      );
    });
  }
}
