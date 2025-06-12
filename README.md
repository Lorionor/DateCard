# 日期卡片组件开发指南

## 项目概述

这是一个用于展示日期信息（包括公历、农历、星期）的卡片组件，基于ArkJS/ArkTS开发，采用模块化设计，通过DateTransfer类处理日期逻辑，DateCard结构体负责UI展示。

## 开发步骤
1、在空项目中选中entry右键选择Atomic Service（元服务）
![448ec1286bee0ea732d97002218a646](https://github.com/user-attachments/assets/16445bca-0528-4ee4-a5eb-998204fd0eb7)

2、选择一个模板并配置信息
![f7f635a917e09259146a6b2e41d58a6](https://github.com/user-attachments/assets/e8127939-9bd0-40f1-99e2-ea9a49ed5e71)


3、在detecard目录下的pages文件夹添加卡片页面

![img_4](https://github.com/user-attachments/assets/ec4bc4ee-b490-4f68-9df4-6e05566f5db6)


4、日期数据处理模块（DateTransfer）负责处理日期逻辑，使用第三方库cjcalendar获取农历，在终端中输入：ohpm install cjcalendar下载第三方库。使用时先创建日期数据对象new DateTransfer()便能获取实时日期数据。

5、在资源文件中适配系统深浅色主题
![img_5](https://github.com/user-attachments/assets/7608aef8-a731-470c-94de-3af2fe246592)


## 运行效果

### 深色模式

![7baab3a8672bdcf80d43fabbf4e77b6](https://github.com/user-attachments/assets/54eff7bf-361e-4bdc-9cde-5f83275094bc)

### 浅色模式
![28574d20f2a0884ee78465abbfa90a0](https://github.com/user-attachments/assets/0d59b5a7-4fe9-4706-94c6-c7a79a2e4f6d)

