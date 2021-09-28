#  代理模式

> 别名： Proxy

提供目标对象的替代品或占位。

## 参与者

![](https://refactoringguru.cn/images/patterns/diagrams/proxy/structure-indexed-2x.png)

1. 服务接口 （Service Interface） 声明了服务接口。 代理必须遵循该接口才能伪装成服务对象。

2. 服务 （Service） 类提供了一些实用的业务逻辑。

3. 代理 （Proxy） 类包含一个指向服务对象的引用成员变量。 代理完成其任务 （例如延迟初始化、 记录日志、 访问控制和缓存等） 后会将请求传递给服务对象。 通常情况下， 代理会对其服务对象的整个生命周期进行管理。

4. 客户端 （Client） 能通过同一接口与服务或代理进行交互， 所以你可在一切需要服务对象的代码中使用代理。
