import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

// For checking internet connectivity
abstract class NetworkInfoI {
  FutureOr<bool> isConnected();

  FutureOr<ConnectivityResult> get connectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  Connectivity connectivity;

  NetworkInfo(this.connectivity) {
    connectivity = this.connectivity;
  }

  ///checks internet is connected or not
  ///returns [true] if internet is connected
  ///else it will return [false]
  @override
  FutureOr<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  // to check type of internet connectivity
  @override
  FutureOr<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  //check the type on internet connection on changed of internet connection
  @override
  Stream<ConnectivityResult> get onConnectivityChanged => connectivity.onConnectivityChanged;
}
