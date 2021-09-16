# SSF
**flutter_ssf**是一个推崇使用Provider、Custom Router、dio结合的MVVM开发模式设计的Flutter应用生产级开发脚手架。

**flutter_ssf**只提供基本的参照组件，所以具备几乎所有业务场景中拿来即用的特性。

**flutter_ssf**凝聚了十几个实际业务APP后，结合社区经验一体所成。

如果你对此套框架有不同的更好见解，**欢迎pr👏**

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

- [Dart中文网](https://dart.cn/guides)
- [Material风格文字、icon](https://fonts.google.com/?selected=Material+Icons:account_balance)
- [Flutter中文网](https://flutter.cn/)
- [《Flutter实战》电子书](https://book.flutterchina.club/)
- [在线DartPad](https://dartpad.cn/)
- [Flutterx](https://flutterx.com/)
- [lottiefiles](https://lottiefiles.com/)


### 四、实用技巧

- 一键生成 Iconfont Dart类
  新建一个浏览器标签，把下面👇复制到**网站**一行
  保存后，打开Iconfont官网项目中，点击标签，自动下载Dart类，copy到自己的项目引入即可
   ```javascript 
      javascript:function download(filename, text) {  var element = document.createElement('a');  element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));  element.setAttribute('download', filename);  element.style.display = 'none';  document.body.appendChild(element);  element.click();  document.body.removeChild(element);}function toHump(name) {name = name.replace(/\s+/g,"-");    return name.replace(/\-(\w)/g, function(all, letter){        return letter.toUpperCase();    });}function getFlutterClass(){var str = "import 'package:flutter/widgets.dart';\r\n\r\n";str += "class IconFontIcons {\r\n";var arr = document.querySelectorAll(".icon-item");for (var i = arr.length - 1; i >= 0; i--) {var item = arr[i];var item_name = toHump(item.querySelectorAll(".icon-code")[1].textContent);var item_code = item.querySelectorAll(".icon-code")[0].textContent.replace(/\&\#/g,"0");item_code = item_code.replace(/\;/g,"");str += "    static const IconData "+item_name+" = IconData("+item_code+",fontFamily:'IconFontIcons');";str += "\r\n";}str += "}";return str;}  download("IconFontIcons.dart",getFlutterClass());
   ```

### 五、联系我

  [掘金博客](https://juejin.cn/user/870468939942311)