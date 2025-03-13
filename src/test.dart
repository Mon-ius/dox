import 'dart:ffi';
import 'ffi/_bindings.dart';

import 'package:ffi/ffi.dart';

class DoxLibrary {
  final dox _bindings;

  DoxLibrary(DynamicLibrary library) : _bindings = dox(library);

  int add(int a, int b) {
    return _bindings.Add(a, b);
  }

  int multiply(int a, int b) {
    return _bindings.Multiply(a, b);
  }

  String helloWorld() {
    final Pointer<Char> result = _bindings.HelloWorld();
    final String message = result.cast<Utf8>().toDartString();
    
    _bindings.FreeString(result);
    return message;
  }

  String base64Decode(String encodedString) {
    final Pointer<Char> encodedCString = encodedString.toNativeUtf8().cast<Char>();
    final Pointer<Char> decodedCString = _bindings.Base64Decode(encodedCString);
    
    final String decodedString = decodedCString.cast<Utf8>().toDartString();
    
    malloc.free(encodedCString);
    _bindings.FreeString(decodedCString);
    return decodedString;
  }

  void printDebug(String message) {
    final Pointer<Char> cMessage = message.toNativeUtf8().cast<Char>();
    _bindings.PrintDebug(cMessage);
  }
}

void main() {
  final dylib = DynamicLibrary.open('libdox.so');
  final doxLib = DoxLibrary(dylib);
  
  print('Add(5, 7) = ${doxLib.add(5, 7)}');
  print('Multiply(5, 7) = ${doxLib.multiply(5, 7)}');
  print('HelloWorld() = ${doxLib.helloWorld()}');
  
  const String encoded = 'SGVsbG8gV29ybGQh';
  print('Encoded: $encoded');
  print('Decoded (Go): ${doxLib.base64Decode(encoded)}');
  doxLib.printDebug('Debug message from Dart');
}