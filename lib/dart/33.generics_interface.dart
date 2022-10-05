abstract class ObjectCache {
  getByKey(String key);

  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);

  void setByKey(String key, String value);
}

// 泛型接口
abstract class Cache<E> {
  getByKey(String key);

  void setByKey(String key, E value);
}

// 文件缓存
class FileCache<E> implements Cache<E> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, E value) {
    print('文件缓存: key=${key} value=${value}');
  }
}

// 内存缓存
class MemoryCache<E> implements Cache<E> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, E value) {
    print('文件缓存: key=${key} value=${value}');
  }
}

void main() {
  // 文件缓存 缓存字符串
  FileCache fc = FileCache<String>();
  fc.setByKey('foo', 'bar');
  // fc.setByKey('foo', 2);

  // 文件缓存 缓存Map
  FileCache fc2 = FileCache<Map>();
  fc2.setByKey('index', {"name": "张三丰", "age": 218});

  // 内存缓存 缓存字符串
  MemoryCache mc = MemoryCache<String>();
  mc.setByKey('foo', 'bar');

  MemoryCache mc2 = MemoryCache<Map>();
  mc2.setByKey('index', {"name": "张三丰", "age": 218});
}
