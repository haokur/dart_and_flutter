import 'package:cli/helper.dart';

// 和js一样,作用域变量查找,闭包,参数可传函数
Function testRunFunc(Function callback) {
  int value = 1;
  int shareCount = 1;
  void inner([int outerNum = 0]) {
    int value = 2;
    int result = value + outerNum;
    callback([value, shareCount, result]);
    // print([value, shareCount, result]);
  }

  inner();
  return inner;
}

void runFunc() {
  int result = count(1, 2);
  print(result);

  var innerFn = testRunFunc((List<dynamic> arguments) {
    print(arguments);
  });
  innerFn(1);
}
