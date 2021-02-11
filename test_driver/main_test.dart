import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group("Test Increment button", (){
    final incrementBtn = find.byValueKey('incrementBtn');

    FlutterDriver driver;

    setUpAll(() async{
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if(driver != null){
        driver.close();
      }
    });

    test('pushBtn', () async {
      await driver.tap(incrementBtn);
      await driver.tap(incrementBtn);
      await driver.tap(incrementBtn);
      await driver.tap(incrementBtn);
      await driver.tap(incrementBtn);
      await driver.tap(incrementBtn);
      await driver.tap(incrementBtn);

      expect(await driver.getText(find.byValueKey("ctrText")), '7');
    });
    
    
  });
}