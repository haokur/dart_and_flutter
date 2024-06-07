// 分支,循环

void runBranch() {
  int score = 88;
  String result = '';

  // if-elseif-else
  if (score > 90) {
    result = '优秀';
  } else if (score > 80) {
    result = '良好';
  } else {
    result = '一般';
  }

  // switch
  int statusCode = 200;
  String statusDesc = '';
  switch (statusCode) {
    case 200:
      statusDesc = 'OK';
      break;
    case 404:
      print('Not Found');
      break;
    default:
      statusDesc = 'Unknown Error';
  }

  print([result, statusDesc]);
}

void runLoop() {
  // for
  List<String> list = ["a", 'b', 'c'];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  list.forEach((item) {
    print(item);
  });

  for (String item in list) {
    print(item);
  }

  int count = 0;
  while (count < 10) {
    count++;
    print('while $count');
  }

  do {
    count++;
    print("do while $count");
  } while (count < 20);

}
