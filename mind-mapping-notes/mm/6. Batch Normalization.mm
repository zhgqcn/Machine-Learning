
<map>
  <node ID="root" TEXT="6. Batch Normalization">
    <node TEXT="改变error face" ID="4ccaff7d17f1009a375707a69d152492" STYLE="bubble" POSITION="right">
      <node TEXT="当改变较小的w_1时，由于x_1较小，所以y的变化较小，从而e的变化也较小" ID="d2f3de6077c96f6a0194d8f89c2fbf1a" STYLE="fork"/>
      <node TEXT="当改变较小的w_1时，由于x_2较大，所以y的变化较大，从而e的变化也较大" ID="8929341f07cd5247ce4918ee596d9ffd" STYLE="fork"/>
      <node TEXT="通过上述对比，发现：不同的输入规模大小的差距会导致不同方向上的斜率、坡度的不同，所以在不同方向做优化的容易程度不同" ID="4ef44ae2bb0fdcf74b6cb2a5e17827e4" STYLE="fork">
        <node TEXT="对输入数据而言，为了达到每个方面相同的输入大小范围，让error face容易训练，采用Feature Normalization方法" ID="384e3cd849ea8d391e6bfef866075201" STYLE="fork">
          <node TEXT="标准化Standardization，使得特征值满足均值为0，方差为1的分布，有利于构建更好的error face，加速Loss的收敛" ID="fb49b6a2072f7d40a29f14f0b8374cfa" STYLE="fork"/>
        </node>
        <node TEXT="对training隐藏层而言，虽然输入做了feature Normalization，但是经过网络参数计算后，数据范围还是会变化，所以在隐藏层的输入后要进行再次的Normalization，但是由于该Normalization依赖于每以为的输出，所以进行的是batch  normalization。" ID="3a4b3783968d783413baad39cd7d034a" STYLE="fork">
          <node TEXT="μ向量和σ根据z_1，z_2，z_3计算，计算后他们它们变得彼此关联，每个值的变化都会影响batch normalization的结果" ID="75f25be816ccf9cc850eed401cd5a32f" STYLE="fork"/>
          <node TEXT="由于把feature限制在（0，1）分布可能会给网络带来限制，所以要带上β和γ两个网络可以学习的超参数" ID="5ee7c14641fe2c9e9bae0559db9cb051" STYLE="fork"/>
        </node>
        <node TEXT="在testing时，由于没有batch的概念，无法做batch normalization，但是pytorch框架会根据training时的μ来计算moving average，保证测试数据的normalization" ID="1634b847baa6d2cc026ca7528b4b9219" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>