import 'dart:io';

int calculate() {
  return 6 * 7;
}

void printListName() {
  List<String> listName = ['Quyết', 'Learn', 'Dart'];
  print(listName);
}

void listFruits() {
  List<String> listName = ['Banana', 'Apple', 'Orange'];
  listName.asMap().forEach((key, value) {
    print('Index : ${key} - Value : ${value}');
  });
}

void calcuAmount() {
  List<double> listAmout = [];
  while (true) {
    print('---Menu---');
    print('1 : Thêm số tiền');
    print('2 : Tính tổng');
    print('3 : Làm mới danh sách');
    print('0 : Thoát chương trình');
    int chooseInput = int.parse(stdin.readLineSync() ?? "0");
    switch (chooseInput) {
      case 0:
        continue;
      case 1:
        double amout = double.parse(stdin.readLineSync() ?? "0");
        listAmout.add(amout);
        break;
      case 2:
        double totalAmout = 0;
        listAmout.asMap().forEach((key, value) {
          totalAmout += value;
        });
        print(totalAmout);
        break;
      case 3:
        listAmout.clear();
        break;
      default:
        continue;
    }
  }
}

void printListDay() {
  List<String> days = [
    'Thứ 2',
    'Thứ 3',
    'Thứ 4',
    'Thứ 5',
    'Thứ 6',
    'Thứ 7',
    'Chủ nhật'
  ];
  days.asMap().forEach((key, value) {
    print('Value : ${value}');
  });
}

void findNameofList() {
  List<String> listName = ['Quyết', 'Hùng', 'Hải', 'Quang', 'Cường'];
  String? keyFind = stdin.readLineSync();
  print(listName.where((element) => element.contains(keyFind ?? "")).toList());
}

void mapDataMyInfo() {
  Map<String, String> info = {
    'name': 'Nguyễn Đình Quyết',
    'address': 'Kiến An, Hải Phòng',
    'age': '22',
    'country ': 'Việt Nam',
  };
  print(info);
}

void dataFind() {
  List<Map<String, dynamic>> info = [
    {
      'name': 'Nguyễn Đình Quyết',
      'phoneKeys': 'Kiến An, Hải Phòng',
      'store ': '22',
    },
    {
      'name': 'Nguyễn Đình Quyết',
      'phoneKeys': 'Kiến An, Hải Phòng',
      'store ': '22',
    },
    {
      'name': 'Nguyễn Đình Quyết',
      'phoneKeys': 'Kiến An, Hải Phòng',
      'store ': '22',
    },
    {
      'name': 'Nguyễn Đình Quyết',
      'phoneKeys': 'Kiến An, Hải Phòng',
      'store ': '22',
    }
  ];

  info.asMap().forEach((key, value) {
    value.forEach((keyKey, valueValue) {
      if (valueValue.length == 4) {
        print(valueValue);
      }
    });
  });
}

void programTodo() {
  List<Map<String, dynamic>> todoList = [];
  while (true) {
    print('---Menu---');
    print('1 : Add todo');
    print('2 : Print all todo');
    print('3 : Remove a todo by index');
    print('4 : Remove all todo');
    print('0 : Close');
    int chooseInput = int.parse(stdin.readLineSync() ?? "0");
    switch (chooseInput) {
      case 0:
        continue;
      case 1:
        Map<String, dynamic> todo = {'name': '', 'date': '', 'isDone': false};
        print('Please enter todo name');
        todo['name'] = stdin.readLineSync();
        print('Please enter todo date');
        todo['date'] = stdin.readLineSync();
        print('Please enter todo status');
        todo['isDone'] = stdin.readLineSync();
        todoList.add(todo);
        break;
      case 2:
        double totalAmout = 0;
        todoList.asMap().forEach((key, value) {
          print(value);
        });
        print(totalAmout);
        break;
      case 3:
        print('Please enter index of todo');
        int index = int.parse(stdin.readLineSync() ?? "0");
        todoList.removeAt(index);
        break;
      case 4:
        todoList.clear();
        break;
      default:
        continue;
    }
  }
}
