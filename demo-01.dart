import 'dart:ffi';

void printInteger(int aNumber) {
  print('The umber is $aNumber');
}

void typeConversion() {
  // String -> int
  var one = int.parse('1');
  print(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = one.toString();
  print(oneAsString == '1');

  // double -> String
  String piAsString = onePointOne.toStringAsFixed(1);
  print(piAsString == '1.1');
}

void listStudy() {
  var list = [1, 2, 3];
  var list2 = ['a', ...list];
  // 当list可能为null的时候可以这样写
  var list3 = ['1', ...?list];
  print(list);
  print(list2);
  print(list3);

  var list4 = [...list, for (var i in list2) '$i'];
  var list5 = [if (list.length >= 3) '长度大于等于3'];
  print(list4);
  print(list5);
}

void setStudy() {
  var set1 = {'a', 'b', 'c'};
  print(set1);

  // 定义set类型
  var set2 = <String>{};
  print(set2);

  // 添加一个值,add方法返回bool值
  set2.add('value');
  // 添加一个set， 可以添加自己，但是由于set的特性所以没有加重复的值
  set2.addAll(set1);
  print(set2);
  print(set2.length);

  // 创建一个set常量
  const set3 = <String>{'1'};
  // set3.add('const定义是常量, 无法再去更改值');
  print(set3);

  // 同样支持 ... 和 ...? for if
  final set4 = <String>{...set2, if (set2.length > 2) 'set2.length > 2'};
  print(set4);
}

void mapStudy() {
  var map1 = <String, String>{
    // key: value
    'name': '张三',
    'age': '12'
  };
  print(map1['name']);
  // map中不存在的值，返回一个null，取值和添加新的key,value和js一样
  print(map1['notFound']);

  // 获取键值对的数量
  print(map1.length);

  // 同样可以声明常量，将无法再添加新的键值对
  const map2 = <String, int>{'age': 12};
  print(map2);

  var map3 = <String, String>{...map1, if (map1.length >= 2) 'hieght': '198cm'};
  print(map3);
}

void unicodeStudy() {

}
void main() {
  final number = 43;

  const foo = const [];
  // print(foo);

  // typeConversion();
  // printInteger(number);
  // listStudy();
  // setStudy();
  mapStudy();
}
