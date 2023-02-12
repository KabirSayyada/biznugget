import 'package:biznugget/core/utils/network_helper/presentation/bloc/network_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'network_event.dart';

part 'network_state.dart';


class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc._() : super(NetworkInitial()) {
    emit(NetworkLoading());
    on<NetworkObserve>(_observe);
    on<NetworkNotify>(_notifyStatus);
  }

  static final NetworkBloc _instance = NetworkBloc._();

  factory NetworkBloc() => _instance;

  void _observe(event, emit) {
    NetworkHelper.observeNetwork();
  }

  void _notifyStatus(NetworkNotify event, emit) {
    event.isConnected ? emit(NetworkSuccess()) : emit(NetworkFailure());
  }
}