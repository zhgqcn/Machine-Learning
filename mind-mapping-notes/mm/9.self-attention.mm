
<map>
  <node ID="root" TEXT="9.self-attention">
    <node TEXT="复杂数据输入" ID="0fa40c71a1c33bad941987a1082c7c5a" STYLE="bubble" POSITION="right">
      <node TEXT="文字处理" ID="c770b85d5ff7e032400647c5be10e732" STYLE="fork">
        <node TEXT="文字编码方式" ID="76b0ece0cd5623e7981a002841529a7e" STYLE="fork">
          <node TEXT="one hot encoding" ID="2fe2646ec3e04fbdd370095d1707344c" STYLE="fork"/>
          <node TEXT="word embedding" ID="f1dd5bba4b0149f03f8b771ccfa02c69" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="声音信号。一段声音信号的输入要转换为很多的frame作为输入" ID="d0b21af87151587a3f0ae4fcc99a07af" STYLE="fork"/>
      <node TEXT="图。图中的每一个节点都可看做一个向量" ID="c8573f017a9a1d80853763a754673558" STYLE="fork">
        <node TEXT="分子信息。分子可以看做图" ID="ce4357acdd2d06ceb5fe2886796975e9" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="复杂模型输出" ID="6ec00a0230012237444712df8391024d" STYLE="bubble" POSITION="right">
      <node TEXT="每个输出对应一个输入向量" ID="944ae33e5a0fe432632b683bbe4f526c" STYLE="fork"/>
      <node TEXT="一个输入序列只有一个输出" ID="a560b9c295d486f9bb27aa07198a0b53" STYLE="fork"/>
      <node TEXT="模型自行决定几个输出" ID="678f06f171e0cdaff3538a279e8c4ee6" STYLE="fork"/>
    </node>
    <node TEXT="解决sequence labeling问题" ID="e8629385a62626f15fc3cb581ca47226" STYLE="bubble" POSITION="right">
      <node TEXT="常规思维" ID="d7be67778fe51923a9b9b549311bb619" STYLE="fork">
        <node TEXT="把每个vector都输入FC网络，但是这样子没有考虑关联性" ID="11ef6c0bfa791eae40de0b1fba989d7c" STYLE="fork">
          <node TEXT="考虑相邻帧的关联，用widows控制关联长度" ID="7d1e4720437be85f981d1940f2fc0cb8" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="self-attention" ID="39cb7d1f0e065eed178908a5798ee1a6" STYLE="fork">
        <node TEXT="输出会考虑一整个输入序列得出" ID="a699ac413bdb7a970d1de0a9b1107e0f" STYLE="fork">
          <node TEXT="每一个b都是考虑了所有的a以后才生成出来的。计算输入向量之间的关联度α" ID="1349d7ecf57780e0d184fea4a84fbd91" STYLE="fork">
            <node TEXT="向量关联度计算方式一：dot-product" ID="b9c1201c85b67df439fa80bc35d4dd32" STYLE="fork"/>
            <node TEXT="向量关联度计算方式二：additive" ID="0b5b9d8681911c45de9ad2fa3f386b6c" STYLE="fork"/>
          </node>
          <node TEXT="self-attention计算过程" ID="cede8d98ce50a590c46909b764321d8a" STYLE="fork">
            <node TEXT="通过权值矩阵计算a^1的query，同时计算其他vector的key，通过dot-product计算对应的attention score" ID="c88ae64e5da22a2f8e6d643df64f33fa" STYLE="fork">
              <node TEXT="一般也可计算自身的相关性。将上一步计算结果通过softmax激活函数得到attention^&apos;" ID="3bd04b20c5d0f4f368386da5f15d172d" STYLE="fork">
                <node TEXT="计算每个vector的value，然后与attention score相乘累加得到第一个值b^1" ID="86e45f4989d3c3605382a345435ec6ba" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="从矩阵角度进行计算" ID="1692d631777e755798c25dc3a65435be" STYLE="fork">
              <node TEXT="" ID="db171791f131cb053d9f1c521fd16626" STYLE="fork">
                <node TEXT="" ID="37d4aa4e90fb1dccc3a4e8bd04cb6e2f" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="Multi-head Self-attention" ID="9fe44ee80192ca09b240c65dfa596928" STYLE="fork">
        <node TEXT="" ID="e66877aebdfb6cdc635475915c8689da" STYLE="fork"/>
      </node>
      <node TEXT="self-attention问题" ID="2bf31358c60d65c4fc64184515df2e0a" STYLE="fork">
        <node TEXT="没有位置信息，输入的序列进行的操作是相同的，没有啥差别" ID="725c9f9f1e4c232ef8da90ae938fb49a" STYLE="fork">
          <node TEXT="引入position encoding" ID="be497d7e4420d2464d222c59d076da79" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="self-attention应用" ID="5f9f2165ddc109f61a61c0b3a51ebb37" STYLE="fork">
        <node TEXT="语音识别。" ID="dfca821eb41e43ab14ce8aba2abada0d" STYLE="fork">
          <node TEXT="因为语音的输入很长，所以attention matrix会很大，通常要进行Truncated Self-attention" ID="f8345dd6f754beed9573a1f5fa916808" STYLE="fork"/>
        </node>
        <node TEXT="图像处理" ID="2ab5548bfaf1c79e6410e79e4a772e7d" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="模型比较" ID="3e9798f3026e7020d03127d3a89fcac2" STYLE="bubble" POSITION="right">
      <node TEXT="self-attention VS CNN" ID="65ff3cfd1c967c716a9d9f9f6a9d3343" STYLE="fork">
        <node TEXT="对self-attention而言，某个pixel产生query，其他pixel产生key，考虑全图信息。而CNN考虑的是局部感受野。所以CNN是一种简化版的self-attention" ID="2dbef37ce68ca511f433528b10a98f71" STYLE="fork"/>
      </node>
      <node TEXT="self-attention VS RNN" ID="717dc28acd44e9054a2b0b44e2e22c44" STYLE="fork">
        <node TEXT="输入都为序列" ID="debb52c8b1f40e6b629da1329cb6b25e" STYLE="fork">
          <node TEXT="RNN要记住很多的前后信息才能计算关联性。而self-attention通过计算attention matrix就可以计算" ID="8817bccc736036ffe6f0691003605876" STYLE="fork"/>
          <node TEXT="RNN无法平行计算。而self-attention可以通过矩阵平行计算" ID="b8c85e0c8140ab9f1b402f0d7f4d4ae4" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="self-attention VS GNN" ID="def1a5fb8da9f9098dbd6d93c12f47b5" STYLE="fork">
        <node TEXT="对self-attention而言，要计算相邻node之间的attention matrix。但一般用专门的Graph Convolution Network处理" ID="7f0f92c2ad1877fb643c0ae86708a1f2" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>