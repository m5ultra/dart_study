import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false, // 把body放到appbar下 如果不是用SafeArea
      appBar: AppBar(
        title: const Text('Calendar'),
        leading: const Icon(Icons.settings),
        actions: const [Icon(Icons.search)],
        toolbarOpacity: 0.7,
        toolbarHeight: 0.0,
      ),
      body: const CalendarText(),
    );
  }
}

class CalendarText extends StatefulWidget {
  const CalendarText({Key? key}) : super(key: key);

  @override
  State<CalendarText> createState() => _CalendarTextState();
}

class _CalendarTextState extends State<CalendarText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          _showDatePicker(context),
          _showDatePickForYear(context),
          _showDatePickForInput(context),
          _showDatePickForTheme(context),
          _showTimePick(context),
          _calendarDatePick(DatePickerMode.day),
          _calendarDatePick(DatePickerMode.year),
          _cupertinoDatePick(CupertinoDatePickerMode.dateAndTime),
          const SizedBox(height: 20,),
          _cupertinoDatePick(CupertinoDatePickerMode.date),
          const SizedBox(height: 20,),
          _cupertinoDatePick(CupertinoDatePickerMode.time),
          _cupertinoTimePick(CupertinoTimerPickerMode.ms),
          _cupertinoTimePick(CupertinoTimerPickerMode.hms),
          _cupertinoTimePick(CupertinoTimerPickerMode.hm ),
        ],
      ),
    );
  }
}

ElevatedButton _showDatePicker(context) {
  return ElevatedButton(
    onPressed: () async {
      DateTime? a = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          // 初始化选中日期
          firstDate: DateTime(2022, 6),
          // 开始日期
          lastDate: DateTime(2022, 12),
          // 结束日期
          initialDatePickerMode: DatePickerMode.day,
          // 日期选择模式 默认为天数选择
          initialEntryMode: DatePickerEntryMode.calendar,
          // 日历弹框样式
          currentDate: DateTime.now(),
          // 当前日期
          helpText: '日期选择器',
          cancelText: '取消',
          confirmText: '确定',
          errorFormatText: 'errorFormatText',
          // 格式错误提示
          errorInvalidText: 'errorInvalidText',
          // 输入不在firstDate, lateDate 之间日期提示
          fieldLabelText: 'fieldLabelText',
          // 输入框上方提示
          useRootNavigator: true,
          // 是否为根导航器
          // 设置不可选择日期
          selectableDayPredicate: (dayTime) {
            if (dayTime == DateTime(2022, 10, 8)) {
              return false;
            }
            return true;
          });
    },
    child: const Text('showDatePicker'),
  );
}

ElevatedButton _showDatePickForYear(context) {
  return ElevatedButton(
    onPressed: () {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          // 初始化选中日期
          firstDate: DateTime(1989, 10, 13),
          // 开始日期
          lastDate: DateTime(2036, 12, 15),
          // 结束日期
          initialDatePickerMode: DatePickerMode.year,
          // 日期选择模式 默认为天数选择
          initialEntryMode: DatePickerEntryMode.calendar,
          // 日历弹框样式

          currentDate: DateTime.now(),
          // 当前日期
          helpText: '日期选择器',
          cancelText: '取消',
          confirmText: '确定',
          errorFormatText: 'errorFormatText',
          // 格式错误提示
          errorInvalidText: 'errorInvalidText',
          // 输入不在firstDate, lateDate 之间日期提示
          fieldLabelText: 'fieldLabelText',
          // 输入框上方提示
          useRootNavigator: true,
          // 是否为根导航器
          // 设置不可选择日期
          selectableDayPredicate: (dayTime) {
            if (dayTime == DateTime(2022, 10, 8)) {
              return false;
            }
            return true;
          });
    },
    child: const Text('showDatePicker Year Mode'),
  );
}

ElevatedButton _showDatePickForInput(context) {
  return ElevatedButton(
    onPressed: () {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          // 初始化选中日期
          firstDate: DateTime(1989, 10, 13),
          // 开始日期
          lastDate: DateTime(2036, 12, 15),
          // 结束日期
          initialDatePickerMode: DatePickerMode.year,
          // 日期选择模式 默认为天数选择
          initialEntryMode: DatePickerEntryMode.input,
          // 日历弹框样式

          currentDate: DateTime.now(),
          // 当前日期
          helpText: '日期选择器',
          cancelText: '取消',
          confirmText: '确定',
          errorFormatText: 'errorFormatText',
          // 格式错误提示
          errorInvalidText: 'errorInvalidText',
          // 输入不在firstDate, lateDate 之间日期提示
          fieldLabelText: 'fieldLabelText',
          // 输入框上方提示
          useRootNavigator: true,
          // 是否为根导航器
          // 设置不可选择日期
          selectableDayPredicate: (dayTime) {
            if (dayTime == DateTime(2022, 10, 8)) {
              return false;
            }
            return true;
          });
    },
    child: const Text('showDatePicker Input Mode'),
  );
}

ElevatedButton _showDatePickForTheme(context) {
  return ElevatedButton(
    onPressed: () {
      showDatePicker(
        context: context,
        // locale: const Locale('zh', 'CN'),
        initialDate: DateTime.now(),
        // 初始化选中日期
        firstDate: DateTime(1989, 10, 13),
        // 开始日期
        lastDate: DateTime(2036, 12, 15),
        // 结束日期
        initialDatePickerMode: DatePickerMode.year,
        // 日期选择模式 默认为天数选择
        initialEntryMode: DatePickerEntryMode.input,
        // 日历弹框样式

        currentDate: DateTime.now(),
        // 当前日期
        helpText: '日期选择器',
        cancelText: '取消',
        confirmText: '确定',
        errorFormatText: 'errorFormatText',
        // 格式错误提示
        errorInvalidText: 'errorInvalidText',
        // 输入不在firstDate, lateDate 之间日期提示
        fieldLabelText: 'fieldLabelText',
        // 输入框上方提示
        useRootNavigator: true,
        // 是否为根导航器
        // 设置不可选择日期
        selectableDayPredicate: (dayTime) {
          if (dayTime == DateTime(2022, 10, 8)) {
            return false;
          }
          return true;
        },
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Colors.yellow, // header background color
                onPrimary: Colors.black, // header text color
                onSurface: Colors.green, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.red, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
      );
    },
    child: const Text('showDatePicker Custom Theme Mode'),
  );
}

ElevatedButton _showTimePick(context) {
  return ElevatedButton(
    onPressed: () {
      showTimePicker(
        context: context,
        // 初始化选中日期
        initialTime: const TimeOfDay(hour: 10, minute: 20),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Colors.yellow, // header background color
                onPrimary: Colors.black, // header text color
                onSurface: Colors.green, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.red, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
        useRootNavigator: true,
        initialEntryMode: TimePickerEntryMode.input,
        cancelText: '取消',
        confirmText: '确定',
        helpText: '日期选择器',
        errorInvalidText: 'errorInvalidText',
        hourLabelText: "hourLabelText",
        minuteLabelText: 'minuteLabelText',
      );
    },
    child: const Text('showTimePicker Input Mode'),
  );
}

_calendarDatePick(DatePickerMode mode) {
  return CalendarDatePicker(
    initialDate: DateTime(2022, 10, 12),
    firstDate: DateTime(1970, 1, 1, 0, 0, 0),
    lastDate: DateTime(2035, 1, 1, 0, 0, 0),
    initialCalendarMode: mode,
    onDateChanged: (DateTime value) {},
  );
}

_cupertinoDatePick(CupertinoDatePickerMode mode) {
  return SizedBox(
    height: 300,
    width: double.infinity,
    child: CupertinoDatePicker(
      mode: mode,
      // 展示模式, 默认为 dateAndTime initialDateTime: DateTime(2020, 10, 10), // 默认选中日期
      initialDateTime: DateTime(2022, 10, 10),
      minimumDate: DateTime(2010, 10, 10, 59, 59, 59),
      // 最小可选日期
      maximumDate: DateTime(2036, 10, 10),
      // 最大可选日期
      minuteInterval: 5,
      // 分钟间隔
      use24hFormat: true, // 是否采用24小时制
      backgroundColor: Colors.greenAccent[200], // 背景色
      onDateTimeChanged: (dayTime) {
        print("选择日期时间 $dayTime");
      },
    ),
  );
}

_cupertinoTimePick(CupertinoTimerPickerMode mode) {
  return SizedBox(
    height: 300,
    width: double.infinity,
    child: CupertinoTimerPicker(
      mode: mode,
      // 展示模式, 默认为 dateAndTime initialDateTime: DateTime(2020, 10, 10), // 默认选中日期
      // 最小可选日期
      // 最大可选日期
      minuteInterval: 5,
      // 分钟间隔
      backgroundColor: Colors.greenAccent[200], // 背景色
      onTimerDurationChanged: (Duration value) {  },
    ),
  );
}
