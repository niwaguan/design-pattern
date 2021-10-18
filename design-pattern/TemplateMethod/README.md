#  模板方法模式

在超类中定义了一个算法的框架， 允许子类在不修改结构的情况下重写算法的特定步骤。

## 参与者

![](https://refactoringguru.cn/images/patterns/diagrams/template-method/structure-indexed-2x.png)

1. 抽象类 （Abstract­Class） 会声明作为算法步骤的方法， 以及依次调用它们的实际模板方法。 算法步骤可以被声明为 抽象类型， 也可以提供一些默认实现。

2. 具体类 （Concrete­Class） 可以重写所有步骤， 但不能重写模板方法自身。
