import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/counter.dart';

void main() {
  //important that test are not independendant if we use the same instance value
  //if it changes in the one place it affect other place as well
  late Counter counter;
  //pretest
  setUp(() {
    counter = Counter();
  });
  // setUpAll(() => null);
  // setup is called before every test
  // setupall is called before all the tests
  // setup -> test => setup -> test
  // setupall -> test -> test -> test
  group('Counter class -', () {
    //given when then

    test(
        'given counter class when it is instantiated the value of the count shuld be zero(0)',
        () {
      //Arranging -> the value before starting

      //Act -> to get the count value
      final val = counter.counter;
      //Assert -> expect
      expect(val, 0);
    });
    test(
        'given counter class when it is incremented the value of the counter should be 1',
        () {
      //Arrange
      //Act
      counter.inc();
      final val = counter.counter;
      //Assert
      expect(val, 1);
    });
    test(
        'given counter class when it is decremented the value of the counter should be -1',
        () {
      counter.dec();
      final val = counter.counter;
      expect(val, -1);
    });
    test(
        'given counter class when it is resetted the value of the count shuld be 5',
        () {
      //Arranging -> the value before starting

      //Act -> to get the count value
      counter.reset();
      final val = counter.counter;
      //Assert -> expect
      expect(val, 5);
    });
  });
  //post test
  tearDown(() => null);
  tearDownAll(() => null);

  //test -> tearDown -> test -> tearDown -> test -> tearDown
  //test -> test -> test -> tearDownAll
}
