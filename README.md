# 🔥🔥 flutter_ssf 🔥🔥
**flutter_ssf**是一个推崇使用Provider、Custom Router、dio结合的MVC开发模式设计的Flutter应用生产级开发脚手架。

**flutter_ssf**只提供基本的参照组件，所以具备几乎所有业务场景中拿来即用的特性。

**flutter_ssf**凝聚了十几个实际业务APP后，结合社区经验一体所成，通过对Model、View、Controller业务分层和代码解耦，各自有其专注的业务领域，提升项目的健壮性和可控性的同时，让开发的过程减少失误和非相关性改动。

🎉如果你对此套框架有不同的更好见解，**欢迎pr👏**

> [flutter_state_demo](https://github.com/Asscre/flutter_state_demo) 用于探索Flutter MVC架构的技术预演和思考；

### 一、架构说明

> 	经过多个项目实战总结，手机端开发采取MVVM模式开发，通过Provider使得页面UI与数据model和数据操作分离实现。
>
> 	在我们实际开发中，这套模式涵盖了我们大部分的页面开发需求，有效的做到了代码结藕，同时在测试环节中我们可以快速的定位到我们问题所在，有效的提高了开发效率。

lib

| __ assets 存放icon、img等资源文件

| __ api 存放api配置文件夹

| __ config 存放项目基础配置，譬如生产版本、开发版本不同端口域名设置

| __ enums 存放枚举项目文件夹

| __ models 存放model文件，与page文件一一对应存放

| __ providers 存放provider文件，与page文件一一对应存放

| __ pages 存放项目中的所有page页面

		|__ components 存放公共页面，本文件夹只存放同级页面公用的page级文件，独属模块公用页面在自己页面文件夹中新开components文件夹存放

| __ pubs 存放插件文件夹，所有插件原则上需二次改造供业务使用

| __ routers 路由文件夹

| __ utils 公共工具文件夹，例如：ColorTo16转换Class

|__ common 。。。

		|__  page

		|__  widget

**说明**：

- model、provider、page在文件夹中一一对应。

- 在一些简单（简单的单页面数据展示：详情页）的页面中，我们可以使用简单的原生开发（setstate），不必拘泥于要用provider而用provider导致页面过重，这样就得不偿失。

- 在使用本套开发模式时，请深入了解Flutter的渲染机制、state机制、Provider插件的使用及注意事项。

### 二、插件使用规范

#### 使用规范

	建议所有的第三方插件都进行二次封装后放入pubs文件夹使用，有利于插件版本升级、更换，符合我们开发原则：“一处处理，多处实现”，降低我们的维护成本和开发成本。

#### 插件汇总

##### Provider：数据动态管理插件

   > 熟悉provider是如何调用build方法去通知页面更新，了解context挂载provider实例，如何通过context在element tree中获取到对应的provider实例。

##### dio：网络请求插件

   >  熟悉dio基本配置，拦截网络请求做业务处理

##### flutter_screenutil：屏幕适配

   > 了解屏幕适配的基本原理，如何调用全局context for root# flutter_ssf
   
### 三、学习资料汇总

- [Dart中文网](https://dart.cn/guides) 基础开始，一切从语言开始！
- [Material风格文字、icon](https://fonts.google.com/?selected=Material+Icons:account_balance) 还在编辑器看Icons？你out了，看这！
- [Flutter中文网](https://flutter.cn/) 官网的就是最好的！
- [《Flutter实战》电子书](https://book.flutterchina.club/) 新手入门必看
- [DartPad](https://dartpad.cn/) dart在线编辑器，你的所想，即可呈现
- [Flutterx](https://flutterx.com/) Flutter资源分享网址，没有灵感？看这就对了！
- [lottiefiles](https://lottiefiles.com/) Lottie动画，让你的app更加的炫酷


### 四、实用技巧

- 一键生成 Iconfont Dart类
  新建一个浏览器标签，把下面👇复制到**网站**一行
  保存后，打开Iconfont官网项目中，点击标签，自动下载Dart类，copy到自己的项目引入即可
   ```javascript 
      javascript:function download(filename, text) {  var element = document.createElement('a');  element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));  element.setAttribute('download', filename);  element.style.display = 'none';  document.body.appendChild(element);  element.click();  document.body.removeChild(element);}function toHump(name) {name = name.replace(/\s+/g,"-");    return name.replace(/\-(\w)/g, function(all, letter){        return letter.toUpperCase();    });}function getFlutterClass(){var str = "import 'package:flutter/widgets.dart';\r\n\r\n";str += "class IconFontIcons {\r\n";var arr = document.querySelectorAll(".icon-item");for (var i = arr.length - 1; i >= 0; i--) {var item = arr[i];var item_name = toHump(item.querySelectorAll(".icon-code")[1].textContent);var item_code = item.querySelectorAll(".icon-code")[0].textContent.replace(/\&\#/g,"0");item_code = item_code.replace(/\;/g,"");str += "    static const IconData "+item_name+" = IconData("+item_code+",fontFamily:'IconFontIcons');";str += "\r\n";}str += "}";return str;}  download("IconFontIcons.dart",getFlutterClass());
   ```

- Flutter 版本管理工具🔥🔥
   [fvm](https://fvm.app/) 解决我们不通项目之间不通版本的问题
### 五、联系我

🎉 🎉[掘金博客](https://juejin.cn/user/870468939942311)

# Flutter 开发规范

# TL;DR

- **禁止** 出现任何错误；
- **禁止** 不要写 `new` ，在 Dart 2.x 中已不建议继续使用 `new` 关键字；
- **必须** 缩进为2空格；
- **必须** 使用 `flutter format` 、 `dartfmt` 或者 `dart format` 对代码进行格式化；
- **必须** 使用 Flutter 官方仓库下的 `analysis_options.yaml` （[文件](https://github.com/flutter/flutter/blob/master/analysis_options.yaml)）进行基本代码规范约束。
- **必须** 在较长代码和嵌套中使用尾逗号进行拆分，防止超过80字或出现 `))))` ；
- **尽量** 避免出现任何警告；
- **尽量** 避免一行超过80个字符。如果超过了，请检查是否有 `))))` ；
- **尽量** 避免直接修改 Flutter 源码，或依赖的 package 源码；
- **尽量** 在项目排期允许的情况下，将所有 packages 保持为可使用的最新版本；
- **推荐** 在项目排期允许的情况下，将 Flutter SDK 保持为最新的**稳定版本**；

除此之外，以下是各类规范的细则。

# 1. 文件类规范

## 1.1 命名规范

> 对于一个项目而言，良好的文件和目录层级可读性，保证了代码的健壮。

一个**普通的 Flutter 项目**的目录层级例子如下：

```
--flutter_project           # 项目根目录

----/android, ios           # 移动端原生文件
----/web, macos, windows    # Web、桌面平台层文件

----/assets                 # 资源文件
------/fonts                # 字体
------/images               # 图片
------/others               # 其他类型资源

----/lib                    # 项目主要代码
------/apis                 # 接口定义，各类请求封装
------/constants            # 常量、统一引入及导出口径
--------/constants.dart     # 各种 package、models、apis、widgets 最终统一到此处导出
--------/resources.dart     # (可选) 将资源引用转换成常量 (flutter_asset_generator)
------/extension            # 项目内定义的扩展方法
------/models               # Beans、Models，类定义
--------/models.dart        # 所有内容作为 partition 进行分块
------/pages                # 页面
------/providers            # (可选) 状态保持
------/utils                # 工具类
------/widgets              # 自定义 widget

----/analysis_options.yaml  # IDE 代码分析配置

----/main.dart              # 主入口

----/pubspec.lock           # 当前依赖到的 packages 版本
----/pubspec.yaml           # Pub packages 声明文件
```

### 1.1.1 文件命名

- **必须** 所有文件（包括资源）采用**小写+下划线**命名。
   - `home_page.dart` 
- **必须** 功能组命名时，如果代表一系列同类的集合，使用复数词语。
   -  `enums` , `models` 
- **尽量** 不要使用**与项目无关**且**没有共识**的**缩写**用于文件命名。
   -  `wlck_page.dart`
- **尽量** 分词时**信、雅、达。**
   - `user_edit_profile_page.dart`

### 1.1.2 类命名

一个类应直截了当地表明其**内容+身份+用途**。

- **必须** 使用大驼峰命名。同样适用于**枚举**和**扩展函数**。
   - `class Foo` , `extension Bar<T>` 
- **必须** 超过两个字母的大写缩略词当做一般单词对待。两个字母的单词除外。
   - `HttpConnectionInfo` , `IOStream` , `Id`  ✅
   - `HTTPConnection` , `IoStream` , `ID`  🚫
- **必须** 在导入库时，使用**小写+下划线**的别名。
   -  `import 'dart:math' as math` 
- **尽量** 不要超过5个单词。如果超过了，应该考虑是否为命名或拆分不当。

### 1.1.3 变量命名

- **必须** 使用**小驼峰**命名。
   -  `int imagesLength` 
   -  `List<AssetEntity> selectedAssets` 
- **必须** 不要超过5个单词。
- **必须** 布尔类型变量使用前缀 `is` 或 `should` 。
   - `bool isLoading`
- **必须** 如果一个变量不是私有变量，不要使用 `_` 作为前缀，因为 Dart 中没有私有的概念。
- **尽量** 除了表示状态的布尔值，其他变量使用名词进行命名。
   -  `double width` 
   - `Widget separator` 
- **尽量** 不要使用前缀字母。（ `k` 是 Flutter 内定的前缀。）
   -  `kDefaultTimeout` 
- **尽量** 不要同时命名多个接近且具有迷惑性的变量。
   -  `tabIndex` , `tabCurrentIndex` 

# 2 用法规范

## 2.1 import/export

- **必须** 按照字母表顺序进行 import/export。
- **必须** 将 `dart:` 放在最前。
- **必须** 将 `package:` 放在相对引用之前。
- **必须** 将 Flutter 的 package 放在其他 package 之前。
- **必须** 将 export 放在所有 import 之后。
- **尽量** 避免在构建一般页面时，将 package 的 **src** 引入。除非你正在对一个官方组件进行定制。[implementation_imports](https://dart-lang.github.io/linter/lints/implementation_imports.html)

## 2.2 构造方法

构造方法是 OOP 语言中最常用的方法之一。在 Dart + Flutter 中，依照各项规则的限制，一般对构造函数有以下几点要求：

- **必须** 所有**构造函数**和**工厂方法**都要写在类的**开头位置**，而后才是变量声明。
- **必须** `StatefulWidget` 的构造字段必须为终值 `final` 。(@immutable)
- **必须** `Widget` 的构造必须带有命名可选参数 `Key key` 。
- **必须** 如果构造需要3个及以上的参数，或作为一个 `Widget` 的构造，请将它们转为命名可选参数。
- **必须** 单例使用私有构造。（例： `const API._()` ）
- **必须** 为所有自定义的类实现 `toString()` 。
- **尽量** 如果 `Widget` 的字段均为终值且没有构造回调，将构造方法加上 `const` 。
- **尽量** 有可能用于 `Iterable*`  的类，请重写 `operator ==` 和 `hashCode` 。
- **推荐** 作为 Provider Model 的 `ChangeNotifier` ，字段使用 getter & setter。
- **推荐** 一个由 json 数据转换而来的实体类，请实现 `Map<String, dynamic> toJson()` 。

根据上述要求举两个例子：

```dart
class Person {
  const Person({
    this.name = 'Alex',
    this.age = 23,
    this.skills,
  });

  factory Person.fromJson(Map<String, dynamic?> json) {
    return Person(
      name: json['name'] as String,
      age: json['age'] as int,
      skills: json['skills'] as List<String>?,
    );
  }

  final String name;
  final int age;
  final List<String>? skills;

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return name == other.name
        && age == other.age
        && skills == other.skills;
  }

  @override
  int get hashCode => hashValues(name, age, skills);
}
```

```dart
class PersonalPage extends StatefulWidget {
  const PersonalPage({
    Key key,
    @required this.person,
  }) : super(key: key);

  final Person person;

  ///...///
}
```

## 2.3 变量声明、使用、调用

- **禁止** 不要使用 `var` , `Object` ，**在确定变量时必须确定它的类型**。
- **禁止** 不要使用**魔数**。如果它是一种类型表示，直接将它们**定义为枚举**。
- **必须** 避免普遍地使用缩写，除非是类似表示偏移的 `x` 。
   -  `i` -> `index` 
- **必须** 在声明时将类型写明，**包括泛型**。[always_specify_types](https://dart-lang.github.io/linter/lints/always_specify_types.html)
   - `Map<String, dynamic> json` 
   - `Column(children: <Widget>[])` 
- **必须** 使用 `final` 声明**无需改动**的**基本类型**、**无需重新创建实例**的**非基础类型**的变量。
   - `final int userId = 0` 
   - `final ScrollController controller = ScrollController()` 
   - `final List<AssetEntity> selectedAssets = <AssetEntity>[]` 
- **必须** 空安全 除了 Model 以外，不要滥用 `?` ，在声明时就确定是否可空。

### 2.3.1 布尔值

- **禁止** 不要写布尔转布尔的语句。
   -  `return list.isEmpty ? true : false`
- **必须** 非空安全 使用 `??` 将可能为空的布尔值转换为不为空的值。
   - `list?.isEmpty ?? true` 
- **尽量** 为值起**肯定形式**的名字。如果在使用它时总是取反，请考虑取反向意义的名字。

### 2.3.2 枚举

- **禁止** `switch` 中列出所有的枚举值，不要用 `default` 。
- **必须** 使用 `switch` 而不是 `if` 来判断枚举内容。

### 2.3.3 字符串

- **必须** 拼接字面量字符串时使用临近字符串，而不用 `+` 。[prefer_adjacent_string_concatenation](https://dart-lang.github.io/linter/lints/prefer_adjacent_string_concatenation.html)
- **必须** 使用插值组合字符串。[prefer_interpolation_to_compose_strings](https://dart-lang.github.io/linter/lints/prefer_interpolation_to_compose_strings.html)
- **必须** 避免在字符串插值中使用不必要的大括号。[unnecessary_brace_in_string_interps](https://dart-lang.github.io/linter/lints/unnecessary_brace_in_string_interps.html)

### 2.3.4 集合

- **必须** `List` , `Set` , `Map` 使用字面量构造实例。[prefer_collection_literals](https://dart-lang.github.io/linter/lints/prefer_collection_literals.html)。
   - `<T>[]` , `<T>{}` , `<T, S>{}` 
- **尽量** `Iterable*` 初始化为空的集合。
   -  `List<int> list = <int>[]` 
- **尽量** 避免使用 `toList()` 和 `List.cast` ，使用 `List.from` 。
   - 仅在改变类型和从可迭代对象生成 `List` 时使用，其他时间勿用。
- **尽量** 使用**展开操作符**构造新的 `Iterable` 。
   - `final List<int> anotherList = <int>[...list]` 
- **推荐** 使用**级联操作符**对同一个对象进行连续调用。
   -  `list..add(x)..add(y)`

### 2.3.5 局部变量
