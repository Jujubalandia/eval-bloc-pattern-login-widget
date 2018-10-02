import 'dart:async';

class Bloc {

  final _emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  // Add data to stream 
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => passwordController.sink.add;

  Stream<String> get email => _emailController.stream;
  Stream<String> get password => passwordController.stream;
}