import 'package:flutter/foundation.dart';
import 'package:ocore_dashboard/configuration.dart';
import 'package:signalr_client/signalr_client.dart';

class EventService {
  static HubConnection _hubConnection;

  static Future<void> initialize() async {
    debugPrint('Connecting SignalR');
    _hubConnection =
        HubConnectionBuilder().withUrl('$baseUrl/hubs/userEventHub').build();

    _hubConnection.onclose(_hubConnectionClosed);

    debugPrint('Starting hub connection');
    await _hubConnection.start();
  }

  static _hubConnectionClosed(error) {
    debugPrint(error);
  }
}
