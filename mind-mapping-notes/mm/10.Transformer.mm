
<map>
  <node ID="root" TEXT="10.Transformer">
    <node TEXT="Transformer就是一个Sequence to Sequence的模型" ID="007736a3c118889c2c1d31d171b12aa9" STYLE="bubble" POSITION="right">
      <node TEXT="语音识别" ID="1f0d6426351124034d9a022ba82f435b" STYLE="fork">
        <node TEXT="语音合成Text-to-Speech (TTS) Synthesis" ID="829965f67f847dc8490b53a1f8546b83" STYLE="fork"/>
      </node>
      <node TEXT="机器翻译" ID="af2c7697528e731f8c38584780c2c626" STYLE="fork"/>
      <node TEXT="语音翻译" ID="d8bbd736060ea2634c97bec3efa7bde2" STYLE="fork"/>
      <node TEXT="聊天机器人Chatbot" ID="6af6c2fca746345d3d6ccc405ddbca5b" STYLE="fork"/>
      <node TEXT="语法剖析" ID="0f1364096e795bd74dcf995cb6423fbb" STYLE="fork"/>
      <node TEXT="Multi-Label Classification" ID="761dcd13f3e875a92ab0dfd95b0021d8" STYLE="fork"/>
      <node TEXT="目标检测" ID="374960c24cd06b4789d92f4e279d4f8d" STYLE="fork"/>
    </node>
    <node TEXT="Transformer模型" ID="96505982b94cee84d7042a8c9c4567fc" STYLE="bubble" POSITION="right">
      <node TEXT="主要包括Encoder和Decoder" ID="f0fdc00605164bc5d5c81a405c20c10e" STYLE="fork">
        <node TEXT="Encoder：输入一排向量后输出一排向量" ID="fd1a09de9dd878fb15f9d9ce31607c7a" STYLE="fork">
          <node TEXT="Encoder包含好几个block，常用的block为self-attention" ID="d9061be403afbf473f0524369d2f2d71" STYLE="fork">
            <node TEXT="self-attention中引入残差机制，并使用Layer Normalization，之后通过Full Connection Network后在进行残差和Lay Norm从而得到一个encoder的output" ID="dc171e938b251a73a9d36e303894817f" STYLE="fork">
              <node TEXT="所以，右图的简图就包含了Multi-Head Self-attention，Add就是残差学习，Norm就是Layer Normalization，Positional Encoding是引入位置关联信息。N×是利用相同结构的Block堆叠N次" ID="a94941bd0b39e372ebec32a3113e6443" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="Decoder：将Encoder的输出作为输入" ID="058b4f9c30746b54c6a8e1d513bec820" STYLE="fork">
          <node TEXT="Autoregressive：Decoder通过一个特殊token来开始，将每一次的output作为下一次的input" ID="310b9f30e6bbd2db10b2c7270b23e8fd" STYLE="fork">
            <node TEXT="Decoder和Encoder的最大差别在Masked Multi-head Attention上" ID="8f9851f3c4ea51782e8f4af66ba4b852" STYLE="fork">
              <node TEXT="Masked self-attention只能考虑右边的，如b1只能考虑a1，b2考虑a1、a2，b3考虑a1、a2、a3，b4考虑a1、a2、a3、a4。而self attention会考虑所有的input sequence" ID="58681e82b473ad54e6f6c8658d3a66ff" STYLE="fork"/>
              <node TEXT="由于Decoder要自行决定output的长度，所以要加入END标志" ID="dce1f9d463728953bd9b995317835d88" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="Non-autoregressive：输入一排START token，一次产生一整排的output" ID="da84839540aa5a2035894b09b22f9ba5" STYLE="fork">
            <node TEXT="问题：如何解决START token的个数" ID="76744e4ccd935ecadecbe31a5608bf66" STYLE="fork">
              <node TEXT="训练Classifer来计算Encoder的Input，然后生成length" ID="3d93e2e58de9657d3b39813d3917fd38" STYLE="fork"/>
              <node TEXT="给足够长的token，通过END来结束" ID="5ab7e60058f8df6bb15010ea935cc257" STYLE="fork"/>
            </node>
            <node TEXT="优点：并行计算、容易控制长度" ID="5f409d4bff228b09141a9d94f5337043" STYLE="fork"/>
            <node TEXT="缺点：难train，要很多trick才能训好" ID="6781473f0a551d53dbf24956dc355300" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="Encoder-Decoder之间的信息传递：Cross Attention" ID="58c91ac2f4560f335155cbdc27da0032" STYLE="fork">
          <node TEXT="Decoder 就是凭借产生一个 q 去 Encoder 这边抽取信息出来,当做接下来的 Decoder 的 Fully-Connected 的 Network 的 Input" ID="e2d116d9acdd19ca4237991bcedaa9e4" STYLE="fork">
            <node TEXT="Cross Attention可以各式各样连接" ID="b80a364c0b83cc0198430cc8904de7fb" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="训练" ID="e3504db060732ebc8b6497daa8bfc64f" STYLE="fork">
        <node TEXT="上面分支讲的都还只是,假设你模型训练好以后它是怎么运作的,它是怎么做 Testing 的" ID="b0eb050201e30f3ad8a4ad21a2df6878" STYLE="fork"/>
        <node TEXT="" ID="91e40594b4b7b887481a5b952bbdcb2e" STYLE="fork">
          <node TEXT="输入Begin Of Sentence经过Decoder得到经softmax处理过的one-hot向量" ID="6d3ed4c57324e50037096dee610bd104" STYLE="fork"/>
          <node TEXT="将&quot;机&quot;的one-hot 向量与Ground Truth计算Cross Entropy" ID="3d1d79487ff24ed2019cdfd59119ee90" STYLE="fork"/>
          <node TEXT="Teacher Forcing机制，将Ground Truth作为Decoder的输入" ID="d92eb20a6fb97a76532d9ce01ab5e0f7" STYLE="fork">
            <node TEXT="训练时Decoder看到的是GT，而测试时看到的是Decoder自己的输出，所以会产生mis-match问题" ID="439ff9d5306a1cffd426bb0461c4dadb" STYLE="fork">
              <node TEXT="exposure bias：在train的时候，故意给错一些" ID="3574e7cff7db2ba2ef61f88c110bebfe" STYLE="fork"/>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="Tips" ID="442b4e527cc0035b1b710b56ae189ca7" STYLE="fork">
        <node TEXT="Copy Mechanism：直接从input复制，没必要创造，减少学习难度" ID="8370d4c4bb5e4b64c676b56056448a17" STYLE="fork"/>
        <node TEXT="Guided Attention:强迫 Attention 有一个固定的样貌" ID="52b6b0bc74abfbf8e094814fc5fc3895" STYLE="fork"/>
        <node TEXT="Beam Search: 找一个不是很精准的学习路径" ID="c109c9dd1782c650f356ca0be6e759db" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>