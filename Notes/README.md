# 2018-10-08

先从目录上进行划分，然后再从目录中的文件一个一个的审查；在阅读每个文件的时候，先从它的内容结构和轮廓图入手，对文件的里面的内容有个概略上的把握和认识。api目录中的内容主要是在接口的输入和输出数据模型的描述和定义；数据模型多的原因是因为业务的处理的面比较广。

Fabric ca sever的启动采用的main方法的形式，借助server cmd结构体对象和配置对象的帮助来完成这个过程。在cmd的独自目录和独立的结构体对象中，与lib目录中定义的配置对象和server结构体产生了联系，相互之间暗通曲款；互相的拉拢，从而产生了互动的交集。里面大多数是函数的运算和文件的读写操作；

在对区块的处理过程中，涉及到对区块的验证的功能；这个功能的实现沿用固有的接口和实现结构体的思路；验证的实现结构体完成了从消息信封到配置更新信封的转变；在它的一个方法中做了很多琐碎和细化的工作；譬如验证是否有权限，处理通道组的映射；到最后生成一个完整全新的结构体子元素和母元素。子元素的结构体对象上有一个序列的字段；生成一个新的时候，这个序列自动增加。

# 2018-10-09

信封是协议缓冲中的消息类型；实现的目标是两个协议缓冲之间的转换和构造。这两个消息的类型是有大小之分的，一个消息类型包裹另外一个消息类型。当采用面向对象编程的时候，代码的出现的位置和顺序已经不是影响的因素。接口定义的行为和契约。管理者的接口约定了管理者的行为和实现的职责；管理者可以达到的目的是建立起成员服务实例以及根据特定的条件获得成员服务实例的列表；msp的接口明确了一个msp实例具有的方法结合，以及通过每个方法可以实现的目标；在本地的文件系统中寻找msp，根据提供的角色的名称；将角色的字符串以及go语言对象的表达形式转变成字节数组的形式。分别从目录中读取文件，依次将文件的内容变成对象的字段或者属性。这就变成了一个msp的配置的数据来源和形成方式。msp独立成章；实现了msp既定要求的任务；在一个单独的空间中存活相关的代码。

启动的过程也从配置说起；那个总的配置对象红其实涵盖了多个方面的配置信息；现在仅仅的关注msp这个维度的配置信息。

# 2018-10-10

安全的状态机符志算法，以多个验证节点开始；在提交之前，验证节点需要进行两轮的投票；共识的部分有三个组件：提案，投票和锁定。

检查一下事务开始后，有没有新提交改变，如果没有就提交，如果有就放弃并重试。乐观并发控制类似自选锁。乐观并发控制适用于低数据争用，写冲突比较少的环境

具体来说，MVCC 克服了先前基于表和行的锁定机制为主要手段的事务模式所存在的读写相互阻塞弊端，它是一种无锁的读写互不阻塞的并发控制机制，采用了每个数据都有多个版本，数据版本冲突等到事务提交的时候检查一下事务开始后，有没有新提交改变数据版本，如果没有就提交，如果有就放弃提交。这种行为模式也被称为乐观锁，相对宽松的乐观锁，允许多个操作同时进行，在没有数据冲突以及数据冲突较少的情况下，很容易获得较好的并发性能和处理效率。

把每个消息写入到日志文件中，以便于重放这些消息。点对点的协议包括配置，连接，节点。

# 2018-10-11

从历史解密上来说：和完备性来说；包的名称；导入的外部包；定义的新的类型；类型的名称是，类型是一个函数类型，这个函数类型接收两个输入参数，它的输出值是布尔的类型；这个函数类型是如何使用呢？需要给出一个具体的函数体就算是类型的实现吧。参数是字符串的数组，表示传递几个字符串进来作为输入参数；获取当前和当地的成员服务的类型；如果成员类型不符合要求的话，直接给出严重的错误；

客户端的命令需要一个参数，这个参数有多种决定的方式；在发送证书签名请求的时候，可以对客户端的配置文件进行定制；

一手打造的标准通道的成色和班底；在主体对象上挂载一系列的过滤器；这些过滤器都代表着一方的势力和处理；最重要的职责是对接受的到的消息进行分类；然后对分类后的消息分别的建立起处理的方式和逻辑。

把一个函数使用类型来定义，最重要的效果是为一类函数起一个统一的名称；在一个结构体中，有一些函数类型的字段；说明这个结构体的实例可以直接干些事情；

在接口的基础上把接口的实现类创作出来；这是从抽象思维过渡到形象思维的过程；沟通的桥梁是一个多金的少年；身上有着多重优秀的品质；从源代码上来进行解读和剖析；在这个负责连接工作的代码文件中，三个角色的组织关系是这样的：连接工厂负责连接的创造；连接储存负责连接和锁的集合工作，并把连接工厂的角色作为自己的内置属性；作为自己实现这个工作需要聚合的部分；

# 2018-10-12

在计算机的理论体系中；registry代表的是一类的处理方式，那就是寄存器；当数据从外部涌入到服务端的时候，这些数据使用统一的寄存器的安排数据的存储；具体的存储方式由存储器自己的内部的多种机制的实现，譬如同样是数据库，也可以使用不同的数据库来存储；服务端两个地方可以接受请求，那就是排序服务以及节点服务两个位置；我们可以仔细的观摩和跟踪一下，如何接受request，如何处理以及如何可以改进的地方；

Define the config for client, server, secure and keep alive side;

Extract the parameters from the client configuration object and transfer them into client attributes and fields; The most import method of grpc client is to create new connection; The connection object is created from grpc package through dialing the address endpoint with options;

When the secure side is considered for grpc connection; the various aspects are involved such as the credentials and certificate authority;

The content of credentials includes the root certificate authority; server name and certificates;

The composition of GRPCServer is made up of address, network listener, server from grpc package, server certificate, key pem file, mutex lock, client root certificate authority and tls configuration.

# 2018-10-13

The content in the server file contains how to create GRPCServer and how to create server from GRPC package and assign it to the GRPCServer instance;

What kind of this writing style belong to? What kinds of wisdom we can learn from this code file?

The order server receives the message from the client by the broadcasting interface;

Firstly, the remote address is extracted from the request context; Secondly, the infinite for loop is started and continue to receive the message from the client side;

When the message arrives at the server side; the channel support is constructed to analyze the message envelope; The steps of parsing and analysis as below:

1. Get the channel header from the envelope message;
2. Get the chain from the chains container by channel id;
3. If the chain does not exist in the current chain container, assign the system channel to the variable;
4. Classify the message envelope and get its type;


# 2018-10-20

There is one question that I am curious about. How does the peer node get the latest block from the orderer node?

使用一种形态去表述另外一种形态；使用一种语言去阐述另外一种语言的东西；在不同的世界和体系下找到彼此的对等物。

The deliver server is comprised of three small structures.javascript语言的语法中透漏着自由散漫的气息；不暴露key的合理性在哪里？discovery的result中包含哪些内容？我们应该如何拓展这个接口一遍获取更多的知识和信息？

在client和peer sever之间搭建的是discover的rpc接口；peer 启动的时候在grpc server上绑定了discover的接口；

在两个伙伴的帮助之下；类似桃源三结义：大哥叫discovery service；二哥叫service config，小弟叫service support；在创建一个服务结构体对象的基础之上；

从上下文中提取出来来自远方的地址；唐三藏从大唐而来；我们对他带的信物进行检查；安排一个特使来准备回馈的礼物；把一个的礼物放在同一个箱子里面；处理每个查询的条件；把每个查询的结果放到宝盒里面去；当礼物准备妥当之后，进行外观的包装；赠送给对方。查询的方式可以是多次，也可以是把多个查询条件封装在一次；发送一次获得多个结果；在拿到query后，调用dispatch的方法；在dispatch方法中，根据类型拿出一个query的处理函数；在go语言中，创建一个map的对象有两种方式；在创建的时候，要考虑哪一种更适合场景和更简洁以及更方便；

通过一个查询条件拿到过滤后的一个节点的集合；第一步是制作一个映射类型的集合；第二步是拿到所有的节点；并提取出所有节点的身份组成的一个集合；


# 2018-10-21

在结构体对象中植入一个接口类型的元素，可以起到两个作用：一方面将接口中定义的方法集合升级到结构体中；另外接口类型作为结构体的内置属性，可以接受一个接口类型的实现作为其字段的部分来处理；当结构体对象调用接口的方法的时候；解释器将这个调用转换为内置接口类型实现的调用. 适配器的接口由一个结构体的类型来实现；这个实现适配器接口的结构体还有另外一个特点，那就是采用内嵌结构体的方式继承了发送者结构体的财富和衣钵。

如何快速的抓住主线？或者关注整个体系中的某一个方面？这一次我们把目光投向底层语言是如何合理有效的阐释上层语言的？换句话，在解析上层语言的时候，如何把上层语言的符号转换和解析成底层语言的符号体系的。

一个项目中有若干的目录结构，我们可以从目录的名称上阅读出这个目录代表的方面和意思；也可以从大致的目录结构中捕捉出整个项目的组织结构和方式。

# 2018-10-22

扩展Fabric功能遵从的原则和实现方式

Fabric项目遵从功能模块化和组件插件化的设计哲学，在架构层面允许各个功能模块的可扩展性和互操作性。按照这一科学，合理，精良的架构特点和设计宗旨，Fabric实现了一个商业级区块链的基础要件和基本功能。鉴于Fabric目前功能实现的不完善性和局限性以及商业场景潜在的复杂需求，在Fabric具体的商业实践中，对Fabric现有的功能进行增强和补充在所难免。在对Fabric某个方面进行功能扩展和优化的过程中，若干的原则是需要秉持和坚守的，这不仅是为了保证新增功能质量的需要，这也是在设计哲学的风格上与整个Fabric保持一致，维持Fabric设计和构架风格的统一性和延续性的要求。这些具体的原则包括非侵入式扩展原则，渐进式增强原则以及测试驱动原则。这些原则的具体含义和实现方式分别一一的叙述如下：

非侵入式扩展原则

非侵入原则是以Fabric原有代码为内核，自开发功能与之松耦合，新增功能代码不过度依赖Fabric的原有代码，也不过分的侵入到Fabric的原有代码。这个原则的带来的直接收益是提供新增功能在不同版本的复用性，可以方便的在Fabric不同的版本中进行迁移，实现低代价的兼容Fabric的周期性升级。go语言丰富的语言特性和Fabric内置的多种机制为实现非侵入式功能扩展提供了多种方式。在go语言中，是以package来进行源代码的组织和管理的，在一个package里面增加新的go文件，不会破坏原有代码的结构和功能，并且新的go文件对原有的package中的对象元素具有访问性和扩展权；并且go语言支持内嵌的方式对接口和结构体类型进行灵活扩展，在实现继承关系上，没有采用显式的，强约束协议模式，为go语言实现非侵入式编程提供了巨大的空间。go语言从1.8之后，开始支持动态库的加载，这也为go语言实现非侵入式编程提供了强有力的支撑。Fabric要求go语言是1.9版本以上，在其内部的实现中也使用了动态库加载的方式，来支持自定义系统链代码的开发和加载。除了动态库的加载实现插件式编程以外，Fabric中采用了适当的设计模式来帮助扩展的灵活性，譬如pre/post模式，桥接模式，基类和辅助类的模式，单态模式，工厂模式等等；而且在Fabric中，基于stream的message收发机制是整个Fabric体系中实现消息通讯和流程处理的主要方式；借助于这个消息机制，通过自定义的消息类型和数据格式，来实现自定义的功能扩展，也是非侵入式扩展的体现方式之一。

非侵入性原则的实现方式也体现在自开发功能和模块风险可控这一要求上，实现这一要求的做法可分为两种，一种是通过配置文件的方式实现运行时的控制；另外一种是使用布尔常量控制标识，在编译阶段利用ldflags的可选项注入自开发功能的开关控制，这样可以轻松的实现自开发功能和Fabric原有功能的隔离。

渐进式增强原则

渐进式增强原则是对自开发功能的开发和发布流程提出来的要求。为了解决功能迭代的速度和稳定之间的矛盾以及降低重构的成本，在设计和扩展新的功能的时候,按照核心接口不变，stable的接口与experimental的接口都继承核心接口，experimental的结构体实现逐渐过渡到stable的结构体实现的办法和路径，从而完成在主接口不变的情况中，逐渐增强具体的功能细节和功能的渐进性增强。在Fabric的源代码中，特别是链代码的shim，stub，以及tx simulator那里，大量的采用了stable/experimental相结合的方式进行代码的迭代和演进。在自有功能的开发和发布过程中，坚持和贯彻这一原则对于自动有功能带到预期的目标和效果是大有裨益的。

测试驱动原则

在Fabric中，存在三种类型的测试，构成其Fabric整个项目的测试框架与体系，来保证Fabric代码的测试覆盖率与质量，它们分别是单元测试，行为驱动测试和集成测试。单元测试是整个测试体系的基础；它不仅可以验证代码的微小修改；确保代码逻辑正确，工作符合预期，没有缺陷，而且能够更快的实施行为驱动测试和集成测试。通过单元测试，及早发现问题，简化集成，拥抱变化是Fabric扩展开发过程中一个必要环节和过程。go语言内置了单元测试框架，只需要编写以test的后缀的go文件，通过go test命令行很容易执行单元测试代码，并且在go语言的测试框架中包含了性能的benchmark测试结果。在功能性和性能两个方面，确保代码的质量。开发的功能经过单元测试之后，进行集成测试，保证新增的代码不破坏原有的代码功能。


# 2018-10-23

在node中使用map的数据类型结构；node中对象解包和分包的代码书写方式；把异步的执行逻辑放在一个promise之中，也是一种安全的机制；从构造函数里面接受一个数组的参数；数组参数的元素是event hub的对象；grpc的client端判断是否已经连接上；注册所要监听的事物的对象，以及监听对象的数据到达的时候的处理函数。在common中抽象一些概念；在node中如何管理异常和错误的处理；在query的类中依赖connection的对象；

远程的机器发送的discovery的请求的时候，可以捕捉到来自那里的地址；在结构体中内置接口与内置结构体的异同；在一个接口之中；内嵌多个接口，可以理解为变相的接口的多继承；把多个接口内置到一个接口中，以及把多个接口内置到一个结构体类型中实现了不同的效果；在进行gossip的时候，在yaml的配置项中存在一个bootstrap的gossip地址；也就是当前的peer可以发生gossip的对象，并且自己的goosip的endpoint的设置也可以成为其他peer的bootstrap peer设置中的值。

在构造函数中接收元数据和连接简历；需要澄清出几个问题：在ca server启动的时候，bootstrap的user和password是放在哪里的？再就是没有重载私钥和证书的时候；证书的产生机制是怎么样的？

准确的说，启动的时候注册的用户和密码是写入到配置文件之中的；服务的进程所在的机器上的域名也会写入到默认的配置文件之中。最重要的这一步是把变量替换文件中的占位符；然后写成一个默认的配置文件，在server启动的时候完成两项壮举，一个是初始化，一个是完成http方面的处理器的注册。
