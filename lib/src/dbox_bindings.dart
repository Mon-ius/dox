// Auto-generated bindings
// Generated by `dart run ffigen --config ffigen.yaml`

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// CGO bindings
class dbox {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  dbox(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  dbox.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void PrintDebug(
    ffi.Pointer<ffi.Char> message,
  ) {
    return _PrintDebug(
      message,
    );
  }

  late final _PrintDebugPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>(
          'PrintDebug');
  late final _PrintDebug =
      _PrintDebugPtr.asFunction<void Function(ffi.Pointer<ffi.Char>)>();

  void FreeString(
    ffi.Pointer<ffi.Char> str,
  ) {
    return _FreeString(
      str,
    );
  }

  late final _FreeStringPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>(
          'FreeString');
  late final _FreeString =
      _FreeStringPtr.asFunction<void Function(ffi.Pointer<ffi.Char>)>();

  int Add(
    int a,
    int b,
  ) {
    return _Add(
      a,
      b,
    );
  }

  late final _AddPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Int)>>('Add');
  late final _Add = _AddPtr.asFunction<int Function(int, int)>();

  int Multiply(
    int a,
    int b,
  ) {
    return _Multiply(
      a,
      b,
    );
  }

  late final _MultiplyPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Int)>>(
          'Multiply');
  late final _Multiply = _MultiplyPtr.asFunction<int Function(int, int)>();

  ffi.Pointer<ffi.Char> HelloWorld() {
    return _HelloWorld();
  }

  late final _HelloWorldPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'HelloWorld');
  late final _HelloWorld =
      _HelloWorldPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  ffi.Pointer<ffi.Char> Base64Decode(
    ffi.Pointer<ffi.Char> encodedStr,
  ) {
    return _Base64Decode(
      encodedStr,
    );
  }

  late final _Base64DecodePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>)>>('Base64Decode');
  late final _Base64Decode = _Base64DecodePtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();

  void enforce_binding() {
    return _enforce_binding();
  }

  late final _enforce_bindingPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('enforce_binding');
  late final _enforce_binding =
      _enforce_bindingPtr.asFunction<void Function()>();
}

typedef __darwin_ptrdiff_t = ffi.Long;
typedef Dart__darwin_ptrdiff_t = int;
typedef ptrdiff_t = __darwin_ptrdiff_t;

final class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef GoInt8 = ffi.SignedChar;
typedef DartGoInt8 = int;
typedef GoUint8 = ffi.UnsignedChar;
typedef DartGoUint8 = int;
typedef GoInt16 = ffi.Short;
typedef DartGoInt16 = int;
typedef GoUint16 = ffi.UnsignedShort;
typedef DartGoUint16 = int;
typedef GoInt32 = ffi.Int;
typedef DartGoInt32 = int;
typedef GoUint32 = ffi.UnsignedInt;
typedef DartGoUint32 = int;
typedef GoInt64 = ffi.LongLong;
typedef DartGoInt64 = int;
typedef GoUint64 = ffi.UnsignedLongLong;
typedef DartGoUint64 = int;
typedef GoInt = GoInt64;
typedef GoUint = GoUint64;
typedef GoUintptr = ffi.Size;
typedef DartGoUintptr = int;
typedef GoFloat32 = ffi.Float;
typedef DartGoFloat32 = double;
typedef GoFloat64 = ffi.Double;
typedef DartGoFloat64 = double;
typedef GoString = _GoString_;
typedef GoMap = ffi.Pointer<ffi.Void>;
typedef GoChan = ffi.Pointer<ffi.Void>;

final class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

final class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}
