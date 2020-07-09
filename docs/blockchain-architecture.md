区块链是依赖点对点分布式网络达成共识的颠覆性技术。分布式节点达成共识之后，可以实现交易的不可篡改和一致性。因此，设计区块链方案的重要挑战是构造合适的共识机制。作为一个分布式应用，共识机制只能够从三者取其二：一致性、可用性和分区容错性。本文调研了区块链主流的共识机制，着重介绍每个共识机制的主要属性，区分确定性共识机制和概率性共识机制；浓墨重彩描述区块链网络中数据分发的协调机制。

***

使用可变的公钥来作为他们的身份，防止他们被跟踪。区块链从货币领域扩展到非货币应用领域。使用区块链来解决大型网络中的安全和隐私挑战。区块链为应用领域提供了一个安全、隐私、可审计的框架。面对区块链交易存储灵活性的需求，本文采取内存优化的方法来解决。针对分布式账本中存在的交易信息，需要一种管理和控制机制。内存优化模式有几种类型：第一种是不存储交易信息；第二种是临时存储交易信息经过一段时间之后，网络中删除交易信息；第三种是交易信息永久储存；第四种是对交易信息进行归纳总结。本文主要关注区块链系统存储交易如何删除的问题。按照区块链的原理和区块哈希的计算，我们知道对交易的修改是不可能完成的。我们不是根据区块的内容来计算哈希，而是根据区块中所包含的交易来计算哈希，这样我们可以在不影响哈希一致性检查的条件下，从区块中删除交易。区块链中的交易也不是任何人可以删除的，只有交易的产生者才能删除，譬如知道交易私钥的节点。出于交易隐私的保护，私钥是可以变化的。为了删除区块链中的交易，就需就需要储存大量的私钥。会使得私钥的管理和存储异常复杂。为了解决这个问题，在每个交易中增加了一个产生验证者字段，这个字段保存的值，只有交易的产生者知道。交易的产生者可以是使用一种模式或者持久化的存储来保存产生验证者字段的值。

***

面向大规模网络和快速扩展区块链的新共识算法：

区块链在物联网、边缘计算、雾计算等领域引起了广泛的兴趣。对资源受限的设备来说，区块链的工作量证明算法不适合作为安全性的解决方案。针对资源受限的设备引入一种新的共识算法。共识算法的名称叫做授权证明共识算法。授权证明共识算法是使用密码学认证机制来替换工作量证明算法。授权证明共识算法不仅维护了系统的安全，也保持了系统的可持续性和扩展性。基于授权证明共识算法的区块链系统可以用来解决物联网中的安全问题。物联网设备的基本功能是收集信息和分发数据。物联网设备之间的通信并不一定是TCP/ip协议。

***

区块链扩容方案

联合设计一套基于以太坊状态通道的统一规范标准，为可互通操作状态通道应用生态奠定基础。相信状态通道未来在以太坊生态将会作为一个标准的扩容协议供所有开发者和用户使用，避免了多个项目开发不同状态通道的碎片化。

侧链是挂在主链上的一条独立的区块链，通过桥接和中继的方式挂在主链上，同时把资产或状态锁在主链上。因为是独立的一条链策略，也会有自己的共识算法。新一代侧脸的主打项目特点有以下几个：
弹性侧链：在选择链的大小时，开发人员可自定义选择用于为链提供安全的单个节点的资源数量。
验证节点池：上千个独立验证节点，随机选出区块链的验证节点，频繁轮换区块链内外的节点。
Rollup将原本散布在区块链中的大量交易数据打包成一笔能缩的交易发布到链上，并通过某种形式验证其安全。

区块链治理

区块链治理问题中，第一个核心问题在于采取链下治理还是链上治理。为了避免硬分叉的发生，诞生的一批链上治理的项目。链上治理的项目主要通过类似权益证明的共识制度，通过一币一票的形式进行项目的治理。

大多数的早期公链都是采取链下治理的模式，社区中的核心成员会自行成立一个组织，通过链下决议，决定是否对项目进行一系列操作，其中包括如何修复缺陷、为项目增加新功能、以及改变参数等。

无论是链上治理和链下治理都有各自的优势，但同时又存在很多问题和风险。任何网络在达到一定的规模之后，都可能遇到这样的风险，网络上最有影响力的开发者、投资人和节点运营方相，相比普通用户权利过高。

DeFi 项目预言机

新兴的去中心化金融智能合约推动着加密货币的进一步发展，利用去中心化的链上网络，将传统金融产品转变成为一个无中央机构运行的无需许可的透明协议。然而，这些智能合约通常需要关键的外部信息，如货币或商品汇率，依赖于特殊的预言机提供。
与传统金融相比，去中心化金融具有多种优势，首先，它继承了区块链的特性，如去中心、开放性、无需许可和抗审查等；其次，去中心化金融具有高度的灵活性，允许通过组合、堆叠或者连接不同的金融工具进行快速迭代创新；最后，去中心化金融提供了可互操作的服务。

去中心化金融生态系统中的一个日益增长的趋势是混合协议，它试图吸取不同的去中心化金融项目的优势来消除加密数字资产的高波动性，高波动性阻碍了去中心化金融的广泛应用。去中心化借贷协议是去中心化金融发展最快的类别。去中心化借贷协议要求实时了解运作抵押品和赎回的资产的市场价格。去中心化金融协议引入预言机报告来自真实世界的市场资产价格。预言机充当数据源，这些数据将被输入到智能合约中。

***

IPMI：智能平台管理接口，自主计算机子系统提供的一系列计算机接口规范，独立于主机的CPU、固件和操作系统，提供管理和监控功能。

SAS：共享访问签名，在不损害数据安全的条件下，提供存储数据的代理访问能力。

***

FreeBSD是一个免费的、开源的操作系统。第一个发布新版本是1993年，到2005年，它成为最流行的开源操作系统，超过3/4的系统安装了此操作系统。多进程多线程内核支持多种硬件架构，不仅仅是一个内核。支持多种主流硬件架构。提供UNIX编程接口。多种网络协议。统一的构建系统。老邦的文件系统。统一空间系统：高性能、快照。文件系统和卷统一管理。冗余磁盘阵列。

***

现代处理器设计：超向量处理器基础
现代处理器设计在指令集层面进行更多的并行处理，利用一些微架构技巧来实现处理器更好的性能。

处理器架构
现代微处理器是一个复杂的系统，包含处理器、缓存系统和外界设备交互的接口。处理器执行一系列的指令，每个指令执行一些原始的操作，指令使用二进制的形式来进行编码。不同的指令和比特编码等级构成的不同的指令集架构。指令集架构包括不同的状态元素、指令集集合及其编码、编程范式、异常事件的处理。每个指令可以读取或修改处理器中的部分状态。当处理器执行指令发生错误时，停止指令的执行，调用异常处理来处理碰到的错误或异常。

使用时钟来管理数据的流动。八个32位的寄存器来储存数据，256个16位寄存器来存储程序，八字节的寄存器来存储程序的指针。

***

**ChainFS: Blockchain-Secured Cloud Storage**

区块链可以充当实用的可信第三方。使用区块链作为可信第三方来加固云存储的安全。云存储中的数据以加密的形式进行存储。数据安全的危害主要来自于密钥的管理和元数据的管理。区块链还可以承担作为云存储操作的日志记录。

原文地址：https://tristartom.github.io/docs/ChainFS-IeeeCloud18-Wip.pdf

***



