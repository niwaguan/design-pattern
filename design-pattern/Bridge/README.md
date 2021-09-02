#  桥接模式

桥接模式是一种结构型设计模式， 可将一个大类或一系列紧密相关的类拆分为抽象和实现两个独立的层次结构， 从而能在开发时分别使用。


## 应用场景

假设我们有一个形状类（Shape），其子类有正方形（Square）和圆形（Circle）。现在我们想把他们上色，分为红色和蓝色，所以设计了红色正方形，红色圆形，蓝色正方形，蓝色圆形。如下：
![](https://refactoringguru.cn/images/patterns/diagrams/bridge/problem-zh-2x.png)

若我们想增加三角形或增加橙色，这样的设计方式会生成很多子类，不便维护。接下来我们尝试使用`桥接`模式来解决它：

将颜色作为形状的一个属性，使颜色系统独立出来，形成下面的类体系：
![](https://refactoringguru.cn/images/patterns/diagrams/bridge/solution-zh-2x.png)

桥接模式推崇组合优于继承。

## 参与者

![](https://refactoringguru.cn/images/patterns/diagrams/bridge/structure-zh-indexed-2x.png)

1. 抽象部分 （Abstraction） 提供高层控制逻辑， 依赖于完成底层实际工作的实现对象。

2. 实现部分 （Implementation） 为所有具体实现声明通用接口。 抽象部分仅能通过在这里声明的方法与实现对象交互。

3. 抽象部分可以列出和实现部分一样的方法， 但是抽象部分通常声明一些复杂行为， 这些行为依赖于多种由实现部分声明的原语操作。

4. 具体实现 （Concrete Implementations） 中包括特定于平台的代码。

5. 精确抽象 （Refined Abstraction） 提供控制逻辑的变体。 与其父类一样， 它们通过通用实现接口与不同的实现进行交互。

