import 'dart:async';

class Bloc {

  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  // Add data to stream 
  Function(String) get changeEmail => emailController.sink.add;

  Function(String) get changePassword => passwordController.sink.add;

  Stream<String> get email => emailController.stream;
  Stream<String> get password => passwordController.stream;
}