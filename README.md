# SSF

Speed Scaffold Flutter是采用MVVM开发模式设计Flutter应用开发脚手架。使用Route管理、Provide、Page、model结合下快速开发高可用、高性能的应用。

###  项目架构

> ​		经过多个项目实战总结，手机端开发采取MVVM模式开发，通过Provider使得页面UI与数据model和数据操作分离实现。
>
> ​		在我们实际开发中，这套模式涵盖了我们大部分的页面开发需求，有效的做到了代码结藕，同时在测试环节中我们可以快速的定位到我们问题所在，有效的提高了开发效率。

​	lib

​	| __ assets 存放icon、img等资源文件

​	| __ api 存放api配置文件夹

​	| __ config 存放项目基础配置，譬如生产版本、开发版本不同端口域名设置

​	| __ enums 存放枚举项目文件夹

​	| __ models 存放model文件，与page文件一一对应存放

​	| __ providers 存放provider文件，与page文件一一对应存放

​	| __ pages 存放项目中的所有page页面

​			|__ components 存放公共页面，本文件夹只存放同级页面公用的page级文件，独属模块公用页面在自己页面文件夹中新开components文件夹存放

​	| __ pubs 存放插件文件夹，所有插件原则上需二次改造供业务使用

​	| __ routers 路由文件夹

​	| __ utils 公共工具文件夹，例如：ColorTo16转换Class

​	|__ common 。。。

​			|__  page

​			|__  widget

**说明**：

- model、provider、page在文件夹中一一对应。

- 在一些简单（简单的单页面数据展示：详情页）的页面中，我们可以使用简单的原生开发（setstate），不必拘泥于要用provider而用provider导致页面过重，这样就得不偿失。

- 在使用本套开发模式时，请深入了解Flutter的渲染机制、state机制、Provider插件的使用及注意事项。

## 插件使用规范

### 一、使用规范

​		建议所有的第三方插件都进行二次封装后放入pubs文件夹使用，有利于插件版本升级、更换，符合我们开发原则：“一处处理，多处实现”，降低我们的维护成本和开发成本。

### 二、插件汇总

1. ### Provder：数据动态管理插件

   > 熟悉provider是如何调用build方法去通知页面更新，了解context挂载provider实例，如何通过context在element tree中获取到对应的provider实例。

2. ### dio：网络请求插件

   >  熟悉dio基本配置，拦截网络请求做业务处理

3. ### flutter_screenutil：屏幕适配

   > 了解屏幕适配的基本原理，如何调用全局context for root# flutter_ssf
