��    !      $  /   ,      �  [   �  �   E  n   �      Z  0   {  ]  �  j   
  �   u  Z  E     �	  0   �	  4   �	      !
  O   B
  i   �
  *   �
  �   '  �    N   �  �  �  9   �  z     n  �  G   �  ;   =  �  y     �  -     u   H    �  k   �  ?   H  Q  �  D   �  t     h   �     �         1  P   F  �   �  "  x     �   -   �   $   �   !   !  T   $!  Z   y!  '   �!  �   �!  h  �"  H   &  �  a&  =   (  T   M(  ;  �(  B   �)  $   !*  t  F*     �+  *   �+  s   �+  �  m,  K   .  =   S.                                                                                      
               	                                                   !       *Note: consensus is executed only when transactional history is inconsistent between nodes* *belief* = the player’s confidence in the claim given the evidence in the justification. This is a denotation of the betting        strategy used by the validator. *claim* = the claim of the bet. This is a block, a proposition, or maximally consistent subset of propositions *source* = the origin of the bet *target* = the destination or target for the bet 6. Scalability is achieved via a fine-grained partitioning of proposals and via nesting (recursion) of the consensus protocol. Blocks are synthesized by the protocol when there is agreement on the set of maximally-consistent propositions, and this occurs when there is a proof of convergence among the bets. The current betting cycle then collapses. A prerequisite condition for the proof is that ⅔ of the validators are behaving in a reasonable fashion. A validator is a node role. Validators each put up a stake, which is akin to a bond, in order to assure the other validators that they will be good actors. The stake is at risk if they aren’t a good actor. At certain rendezvous points validators compute a maximally consistent subset of propositions. In some cases, this can be computationally hard and take a long time. Because of this a time-out will exist, which, if reached forces validators to submit smaller propositions. Once there is consensus among the validators on the maximally consistent subset of propositions, the next block can easily be materialized by finding a minimal model under which the propositions are valid. Because of this design and because of the transactional isolation per namespace, most blocks can be synthesized in parallel. Casper Consensus Algorithm Clients send transaction requests to validators. Eventually the betting cycle will and must converge. For additional information, see: For each betting cycle a given validator node may win or lose their bet amount. For more detail on RChain’s consensus protocol, see `Logic for Betting -- On Betting on Propositions`_. Let’s walk through the typical sequence: Nodes that take on the validation role have the function to achieve consensus on the blockchain state. Validators also assure a blockchain is self-consistent and hasn’t been tampered with and protect against Sybil attack. RChain’s consensus protocol uses stake-based betting, similar to Ethereum’s Casper design. This is called a “proof-of-stake” protocol by the broader blockchain community, but that label leads to some misperceptions including overstated centralization risks. Validators are bonded with a stake, which is a security deposit placed in an escrow-like contract. Unlike Ethereum’s betting on a whole blocks, RChain’s betting is on logical propositions. A proposition is a set of statements about the blockchain, for example: which transactions (i.e. proposed state transitions) must be included, in which order, which transactions should not be included, or other properties. A concrete example of a proposition is: “transaction t should occur before transaction s” and “transaction r should not be included”. For more information, see the draft specification `Logic for Betting on Propositions (v0.7)`_. Receiving validators then create a proposition including a recent transaction. The Casper consensus protocol includes stake-based bonding, unbonding, and betting cycles that result in consensus. The purpose of a decentralized consensus protocol is to assure consistency of blockchains or partial blockchains (based on namespaces), across multiple nodes. To achieve this any consensus protocol should produce an outcome that is a proof of the safety and termination properties of class of consensus protocols, under a wide class of fault and network conditions. The betting cycles continue working toward a proof. Note: The goal of the betting cycle is for the validator nodes to reach consensus on a maximally consistent set of propositions. The math underlying the betting cycle is an Iterated Function System. Convergence corresponds to having attractors (fix-points) to IFS. With this, we can prove things about convergence with awards and punishments. We can give validator-node-betters maximum freedom. The only ones that are left standing are validators that are engaged in convergent betting behavior. The originating validator prepares a bet, which includes the following: The processing is partially synchronous during convergence. The receiving validator evaluates the bet. Note, these justification structures can be used to determine various properties of the network. For example, an algorithm can detect equivocation, or create a justification graph, or detect when too much information is in the bet. Note how attack vectors are considered, and how game theory discipline has been applied to the protocol design. The validator places the bet. There are sets of betting cycles among nodes: To find out more about Ethereum’s Casper and discussions in the `Ethereum Research Gitter`_ and `Reddit/ethereum`_. With by-proposition betting, the design will be able to synthesize much bigger chunks of the blockchain all at once. Cycles can converge quickly when there are no conflicts. The point of the by-proposition approach is that several blocks can be materialized all at once. This proposal gets around block size limits. There's no argument about it because the maximal consistent set of propositions might allow for hundreds or even thousands of blocks to be agreed all at once. This will create a huge speed advantage over existing blockchains. `Consensus Games`_: An Axiomatic Framework for Analyzing and Comparing a Wide Range of Consensus Protocols. justification. This is evidence for why it is a reasonable bet. Project-Id-Version: RChain Architecture 0.9
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-01-18 16:26+0800
PO-Revision-Date: 2018-04-04 15:09+0800
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
Last-Translator: 
Language-Team: 
Language: zh
X-Generator: Poedit 2.0.5
 *注意：只有在历史事务记录不一致时才会执行共识* *信心* =代表玩家对发起认领中的证据拥有的信心。 这是验证者所使用下注策略的一种。 *认领* =认领赌注。 认领可以是一个区块，一个提议或者是一个最大一致的子集 *来源* =下注的来源 *目标* =下注的目标 6.可扩展性是通过对提议进行精细划分并通过共识协议的嵌套（递归）来实现的。如果验证者在一组提议上达成一致性，并且证明在投注周期已经收敛，那么区块就可以通过协议被合成。 当前的下注周期结束。 能进行证明的一个前提条件是 2/3 的验证者的行为是合理的。 验证者是一种节点角色。 每个验证者都会建立一个类似于债券的赌注，以确保其他验证者能工作良好。 如果他们不是一个好的验证者，那么这个股份就有被没收的风险。 在某些汇合点处，验证者计算所有提议的最大共同子集。 有些时候，这个计算可能会非常困难，需要很长时间。 正因为如此，我们会需要一个超时机制，如果达到了规定的超时时间，验证者可以提出一个比较小的提议集合。一旦验证者对最大一致的提议子集达成共识，寻找下一个块就可以通过找到提议有效的最小模型而容易地实现。 对于这种设计，由于每个名称空间的事务隔离，所以大多数块可以并行合成。 Casper 共识算法 客户端将事务请求发送给验证者。 最终下注周期会逐渐收敛。 对于更多相关信息详见： 对于每个下注周期，验证者节点可能会赢得或失去他们的下注。 关于RChain共识议定书的更多细节，请参阅“投注逻辑 - 投注议案”。 我们来看看典型的工作流程： 网络中的验证节点负责维护区块链，使得全网状态达成一致。 验证者节点还需要确保区块链是自洽的，没有被篡改以及防止女巫攻击。 RChain 的共识协议使用以股份为基础的下注，类似于以太坊的 Casper 设计。 在开发者社区里这些协议被大家称为“股份证明”协议，但是这个标签导致了一些误解，很多人认为这样会导致权利过分集中。 验证人和股权委托绑定在一起，股权委托是一笔存放在托管合约中的保证金。 和以太坊相比，RChain不会只在一条链上的进行下注，RChain是按照逻辑提议来进行投注的。 提议是关于区块链的一系列陈述，例如：必须包括哪些交易（即，提议的状态转换），以何种顺序，哪些交易不应被包括，或者其他属性。 一个提议的具体例子是：“事务 t 应该发生在事务 s 之前”，“事务 r 不应该被包含”。 欲了解更多信息，请参阅规范草案“提议下注逻辑（v0.7）_”。 接收到事务的验证者会创建一个包括最近交易的提议。 Casper 共识协议的几个方面使得参与者达成共识，包括以利益为基础的绑定，解绑定和周期性下注。 分布式共识协议的目的是为了确保横跨多个节点的区块链或部分区块链（基于命名空间）的一致性。 在错误频发的网络条件下，为了实现这一点，任何共识协议都应该产生一个确定的结果，并且证明协议的安全性和终止属性。 投注周期朝着证明一个结果继续进行。 注意： 下注周期的目标是验证者节点在最大一致的提议集上达成共识。 验证者的下注周期可以用一个迭代函数来表示，最终收敛对应于迭代函数中的不动点。通过这个原理，我们可以证明奖励与惩罚的收敛原则。我们可以给每一个验证者充分的自由度，唯一需要解决的是验证者所参与的下注行为是可收敛的。 原始验证者准备下注，这个赌注中包括以下内容： 收敛过程中是部分同步的。 验证者会评估接受到的下注。 请注意，这些接受到的“理由”可以用来确定网络的各种属性。 例如，一个算法可以检测出模棱两可的情况，或者创建一个“理由”的图表，或者在下注的时候发现接受到了太多信息。 注意需要考虑攻击向量，以及博弈论应该如何被应用于协议设计。 验证者下注。 在节点之间产生一轮下注周期： 要了解更多关于以太坊的 Casper 加入“以太坊研究Gitter”和“Reddit / ethereum”进行讨论。 通过对提议下注，能够一次性合成更大块的区块链。 如果没有冲突，周期可以快速收敛。 这种方法的关键点是可以同时生成多个块。这种方式突破了块大小的限制。 关于这一点没有任何争论，因为最大的一致提议集合可以允许一次同意数百甚至数千个块。 相比现有的区块链而言，这将带来巨大的速度优势。 “共识游戏”：分析和比较广泛共识协议的公理化框架。 理由。 用于证明为什么这是一个合理的赌注。 