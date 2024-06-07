import 'package:cli/helper.dart';

const int number = 10; // 编译时常量
final int number2 = getFinal(); // 运行时常量
// const int number3 = getFinal(); // 报错

int getFinal() {
  return 1;
}

// 数据类型
void runBasic() {
  // 基本数据类型
  int a = 10;
  double b = 3.14;
  String name = "Dart";
  bool isTrue = true;
  // isTrue = 2; // 报错,只能赋值布尔型
  isTrue = false;

  var x = 10;
  x = 20;

  dynamic y = 'abc'; // 类似ts中的 let y :any = "abc"
  y = 123;
  y = false;
  y = 1.4;

  console([a, b, name, isTrue, x, y, number, number2]);
}

// 列表/数组
void runList() {
// 1.列表/数组 =>类比js中的Array
  List<String> stringList = ["a", "b", "c"];
  List<dynamic> anyList = [1, "a", true];
  List<int> numberList = [1, 2, 3];

  // 增
  numberList.add(4); // 类比数组的push,arr.push(4)
  numberList.addAll([5, 6, 7]); // 类似数组concat
  numberList.insert(1, -1); // 类似数组的splice
  numberList.insert(4, -1);

  // 删
  numberList.remove(-1); // 按值删除,仅删一个
  numberList.removeAt(0); // 按索引删除
  numberList.removeLast(); // 类似pop
  numberList.removeWhere((element) => element > 5); // 条件选择删除
  numberList.removeRange(2, 3); // 索引范围删除,左闭右开

  // 改
  numberList[0] = -3;

  var numberLen = numberList.length;
  var isEveryMax = numberList.every((element) {
    return element > -10;
  });

  console(['length and isEveryMax::', numberLen, isEveryMax]);

  // 遍历
  numberList.forEach((element) {
    console(['forEach::', element]);
  });
  for (var i = 0; i < numberList.length; i++) {
    console(['for::', numberList[i]]);
  }

  console([
    numberList,
    stringList,
    anyList,
  ]);
}

// Set不含重复元素的集合 => 类比js中的Set
void runSet() {
  Set<String> setList = {'a', 'b', 'c'}; // 1重复了,只是警告,最终结果是{1,2,3}

  // 增
  setList.add('d');
  setList.addAll(['d', 'e', 'f', 'g']);

  // 删
  setList.remove('a');
  setList.removeAll({'a', 'b'});

  // 查
  console([
    'setList查::',
    setList.contains('a'), // 是否存在,类比js的includes
    setList.take(1),
  ]);

  // 遍历
  setList.forEach((element) {
    console(['forEach::', element]);
  });

  var newSetList = setList.map((element) {
    return '$element-hello';
  });
  newSetList.forEach((element) {
    console(['map::', element]);
  });

  console(['setList::', setList]);
}

// Map
void runMap() {
  Map<String, dynamic> map = {
    'name': 'Dart',
    'age': 18,
    'isStudent': true,
  };

  // 增
  map['address'] = 'China';
  map.addAll({'address': 'China'});

  // 删
  map.remove('address');

  // 改
  map['age'] = 19;

  console([map, map['age']]);
}

class Animal {
  void makeSound() {
    print("动物发出叫声");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("狗叫");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("猫叫");
  }
}

// 抽象类
abstract class Animal2 {
  void makeSound();
}

class Sheep extends Animal2 {
  @override
  void makeSound() {
    print("咩咩叫");
  }
}

abstract class FlyAble {
  void fly();
}

class Bird extends Animal2 implements FlyAble {
  @override
  void fly() {
    print("鸟会飞");
  }

  @override
  void makeSound() {
    print("鸟会叫");
  }
}

void runClass() {
  // Animal dog = Dog();
  Dog dog = Dog();
  dog.makeSound();

  Animal animal;
  animal = Dog();
  animal.makeSound();

  animal = Cat();
  animal.makeSound();

  Animal2 sheep = Sheep();
  sheep.makeSound();

  Bird bird = Bird();
  bird.fly();
  bird.makeSound();
}

// 复杂数据类型
void runComplex() {
  // runList();
  // runSet();
  // runMap();
  runClass();
}
