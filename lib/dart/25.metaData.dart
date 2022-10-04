class Phone {
  @Deprecated("在下面的版本会被放弃使用")
  activate() {
    print('激活');
  }

  turnOn() {
    print('开机');
  }
}

void main() {
  Phone o = Phone();
  o.activate();
}
