#  单例模式

单例模式是一种创建型设计模式， 让你能够保证一个类只有一个实例， 并提供一个访问该实例的全局节点。

## 参与者

![](https://refactoringguru.cn/images/patterns/diagrams/singleton/structure-zh-indexed-2x.png)

1. 单例 （Singleton） 类声明了一个名为 get­Instance获取实例的静态方法来返回其所属类的一个相同实例。

单例的构造函数必须对客户端 （Client） 代码隐藏。 调用 获取实例方法必须是获取单例对象的唯一方式。

## 优缺点

1. 你可以保证一个类只有一个实例。
2. 你获得了一个指向该实例的全局访问节点。
3. 仅在首次请求单例对象时对其进行初始化。

但是：

1. 单例模式可能掩盖不良设计， 比如程序各组件之间相互了解过多等。
2. 单例的客户端代码单元测试可能会比较困难， 因为许多测试框架以基于继承的方式创建模拟对象。 由于单例类的构造函数是私有的， 而且绝大部分语言无法重写静态方法， 所以你需要想出仔细考虑模拟单例的方法。 要么干脆不编写测试代码， 或者不使用单例模式。
