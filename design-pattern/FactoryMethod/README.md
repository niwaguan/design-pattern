#  工厂方法


工厂方法旨在将产品（对象）的使用和创建分离，可以达到不影响其他代码情况下扩展产品（对象）创建的部分。

## 参与者

![工厂方法类图](https://refactoringguru.cn/images/patterns/diagrams/factory-method/structure-indexed-2x.png)

* 产品 （Product） 将会对接口进行声明。 对于所有由创建者及其子类构建的对象， 这些接口都是通用的。

* 具体产品 （Concrete Products） 是产品接口的不同实现。

* 创建者 （Creator） 类声明返回产品对象的工厂方法。 该方法的返回对象类型必须与产品接口相匹配。

    你可以将工厂方法声明为抽象方法， 强制要求每个子类以不同方式实现该方法。 或者， 你也可以在基础工厂方法中返回默认产品类型。

    注意， 尽管它的名字是创建者， 但他最主要的职责并不是创建产品。 一般来说， 创建者类包含一些与产品相关的核心业务逻辑。 工厂方法将这些逻辑处理从具体产品类中分离出来。 打个比方， 大型软件开发公司拥有程序员培训部门。 但是， 这些公司的主要工作还是编写代码， 而非生产程序员。

* 具体创建者 （Concrete Creators） 将会重写基础工厂方法， 使其返回不同类型的产品。

    注意， 并不一定每次调用工厂方法都会创建新的实例。 工厂方法也可以返回缓存、 对象池或其他来源的已有对象。
    
## 优缺点

* 你可以避免创建者和具体产品之间的紧密耦合。
* 单一职责原则。 你可以将产品创建代码放在程序的单一位置， 从而使得代码更容易维护。
* 开闭原则。 无需更改现有客户端代码， 你就可以在程序中引入新的产品类型。
 

但是：
* 应用工厂方法模式需要引入许多新的子类， 代码可能会因此变得更复杂。 最好的情况是将该模式引入创建者类的现有层次结构中。
