import 'dart:async';

import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

@Injectable()
class StompDartService with LogMixin {
  late final StompClient _stompClient;
  late StreamController<String> messageController;
  final AppPreferences _appPreferences;

  StompDartService(
    this._appPreferences,
  ) {
    messageController = StreamController<String>.broadcast();
  }

  void connect({
    required Function(StompFrame frame) onConnect,
    required Function(StompFrame frame) onDisconnect,
    required Function(dynamic error) onError,
  }) async {
    final accessToken = await _appPreferences.accessToken;
    _stompClient = StompClient(
      config: StompConfig.sockJS(
        url: UrlConstants.appBaseUrlSocket,
        onConnect: onConnect,
        onDisconnect: onDisconnect,
        onWebSocketError: onError,
        webSocketConnectHeaders: {
          ServerRequestResponseConstants.basicAuthorization:
              '${ServerRequestResponseConstants.bearer} $accessToken'
        },
        stompConnectHeaders: {
          ServerRequestResponseConstants.basicAuthorization:
              '${ServerRequestResponseConstants.bearer} $accessToken'
        },
      ),
    );

    _stompClient.activate();
  }

  // Subscribe to a topic (e.g., /topic/chat)
  void subscribeToTopic(
      String topic, Function(String message) onMessage) async {
    final accessToken = await _appPreferences.accessToken;

    _stompClient.subscribe(
      destination: topic,
      callback: (StompFrame frame) {
        // Send the received message to the stream
        messageController.add(frame.body ?? "");
        onMessage(frame.body ?? "");
      },
      headers: {
        ServerRequestResponseConstants.basicAuthorization:
            '${ServerRequestResponseConstants.bearer} $accessToken'
      },
    );
  }

  // Send a message to a specific destination (e.g., /app/chat)
  void sendMessage(String destination, String message) async {
    final accessToken = await _appPreferences.accessToken;
    _stompClient.send(destination: destination, body: message, headers: {
      ServerRequestResponseConstants.basicAuthorization:
          '${ServerRequestResponseConstants.bearer} $accessToken'
    });
  }

  void disconnect() {
    _stompClient.deactivate();
    messageController.close();
    logD('Disconnected from socket');
  }

  Stream<String> get messagesStream => messageController.stream;
}
