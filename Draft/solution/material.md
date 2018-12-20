数据分析和可视化工具，它提供完整的数据来源基础设施来维护数据的详细历史和演化信息。数据跟踪模块记录数据的原产地，数据的计算过程，以及衍生数据和经历的执行过程。

区块链技术依赖哈希函数计算，哈希函数可以在任何长度的数字信息的基础之上产生一个固定长度的字符串代码。Blockchain technology relies on hashing,
which consists of generating a code of a fixed
length for a given piece of digital information,
regardless of its length. Hashing is important
because it permits someone to verify, by
recalculating the hash that a given piece of
digital information is identical to the digital
information that was originally hashed. This
permits document authentication – proof
that a given document is the same one as the
one that was originally hashed. This is an
important feature of many blockchain systems.
A hash cannot be reverse-engineered to
discover the original document. The process
only works in one direction, from the original
document to the hash. 

Hyperledger incubates and promotes a
range of business blockchain technologies,
including distributed ledger frameworks,
smart contract engines, client libraries,
graphical interfaces, utility libraries and
sample applications. One of the distributed
frameworks is called Hyperledger Fabric
(“HLF”), which is an open-source project
within the Hyperledger umbrella project. HLF
is a modular, general-purpose, permissioned
blockchain system, which can also be seen as a
distributed operating system for permissioned
blockchains. 


On each block of the blockchain there are
two types of data: 1) a header that includes a
date stamp, the identity of the source of the
data (an address), and the previous block’s
header hash, called ‘the pointer’; and 2) the
payload, which is the data to be stored.
The header is not encrypted, only the payload
is normally encrypted. The hash in the header
is of earlier blocks to create the immutable
chain of blocks. The payload is generally a
description of the document (metadata) and
the hash representing the actual document.
A smart contract would operate as follows: when
X wants to upload a new document description
to the blockchain, the smart contract will create
a transaction by combining a description of the
document and its hash to form a payload and
add a header. The header plus payload equals a
transaction and a validated transaction equals
a block. Upon validation of the block, the smart
contract would then send the document itself to
the Y database system for storage. We assume
that the Y database is off the blockchain and
has limited access through the use of passwords
which can be time sensitive. The blockchain
transaction will be proof that the document
was uploaded at a given time, and anyone will
be able to verify that the document held in the
off-chain database is the same document as the
one referred to in the blockchain transaction.

A distributed ledger is a replicated, shared,
and synchronised digital data structure
maintained by consensus algorithm and
spread across multiple sites, countries,
and/or institutions.
Blockchain is a type of distributed ledger,
comprised of digitally recorded data in
packages called blocks which are linked
together in chronological order in a manner
that makes the data very difficult to alter
once recorded, without the alteration of all
subsequent blocks and a majority of the
network colluding together.
Each node on the network (generally)
contains a complete copy of the entire ledger,
from the first block created—the genesis
block—to the most recent one. Each block
contains a hash pointer as a link to a previous
block, a timestamp and transaction data.

Smart contracts use blockchain
technology. The term is used to describe
computer program code, maintained
on the various “nodes” constituting a
blockchain network that is capable of
facilitating, executing, and enforcing
the negotiation or performance of an
agreement upon the occurrence of predefined conditions.
The smart contract code executes on each
node and the resulting output is stored on
the blockchain. Where “tokens” of value
are involved, the smart contract code can
also automatically transfer these tokens
(and underlying value), thus effectively
enforcing the outcome of the smart
contract code


- The ledger is a database listing all transactions. This database is replicated on all                              
validating servers. Each transaction line contains a code (hash) generated from previous                        
transactions that guarantees its integrity (chaining principle). Transactions are grouped into                      
packages and validated by controllers to create so-called blocks. The result of transactions                          
is communicated through messengers. 
 
- Users have an account (wallet) to access transactions on the blockchain. They can                            
therefore be end-users or service providers who used or offer services via the blockchain. 
 
If they have sufficient rights, they can execute a transaction. Sometimes these transactions                          
must be paid for. This is where the idea of tokens comes in. Tokens are a type of credit                                      
which can be bought by a user to pay for contract execution. 
 
- Smart contracts or chain codes are a piece of code on the blockchain (?) which allow the                                    
precise way in which the contract will be carried out to be defined. This code can use                                  
external data, if necessary, can be based on other contracts or trigger the execution of other                                
contracts. In the case of the Smart-City, the smart code or chain-code defines the way in                                
which a user can interact with, and have access to, a dataset. 
 
- Endorsers are mechanisms that validate (sign) the authorizations to perform transactions                        
and initiate the execution of a contract. The overall validation of a transaction is done by                                
checking that after each transaction, all the endorsers obtain the same ledger. 
 
- Orderers help to create a communication channel between the user and the contract, to                              
guarantee the integrity of the contract and to communicate the result of the execution to the                                
user. In our case, they provide the user with the data he or she requested. Several validators                                  
are used to certify a transaction. The geographic and technical distribution of these                          
validators guarantees that the network is trustworthy. 
 
- Certificate authorities are special accesses which give users access rights which have                          
been checked by endorsers. 
 
To summarize, permissioned blockchains are managed by the entity which has the                        
administrator role. It makes it possible to regulate users’ access to contracts and, in the                              
case of the smart-city, to data. This administrative role can obviously be divided, delegated                            
or shared out to create governance rules.


数据命名、数据定义、数据类型、赋值规则、科学流程。治理领域主要包括战略、组织、架构、元数据管理、主数据管理、数据生命周期管理、数据质量管理、数据安全和合规、数据应用和服务创新。

从数据标准、模型结构、流程、数据标准共享和访问控制、数据更新和智能合约等数据治理协同模型的形成和应用。

通过智能合约依次实现权限通证和权益通证

区块链技术使用现代密码学、分布式系统、点对点网络，共识算法。

数据设计涉及的几个方面：数据安全、数据所有权。

通证工厂智能合约：负责创建和操作不同类型的通证。基于角色的访问控制模型，

身份和访问控制，使用区块链和智能合约来提高身份的治理和审计，提供请求、批准和审计功能，与区块链进行集成。模块化的架构提供交易处理器来处理基于角色相关的交易逻辑，在账本写入的同时，同步地将区块链的状态变化和数据写入到本地的数据库。

一个完整的区块链解决方案：使用超级账本Fabric以及超级账本浏览器，将这些服务部署在Kubernetes平台之上，这个解决方案使用CouchDB当作节点的数据存储后端，Apache Kafka的主题用作排序服务以及使用网络文件系统来在不同组件之间共享数据。

治理和元共识,积分奖励，在区块链上如何控制通证的发行，如何显示区块链的交易和余额。把数据保存到云节点上，在此基础上构建关系型数据库，通过数据加密来保证数据存储的安全。把随机的书籍保存到网络中节点上的随机的文件中。

