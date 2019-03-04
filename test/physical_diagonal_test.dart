import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:physical_diagonal/physical_diagonal.dart';

void main() {
  const MethodChannel channel = MethodChannel('physical_diagonal');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PhysicalDiagonal.platformVersion, '42');
  });
}
